package io.chirp.connect;

import android.content.Context;
import android.media.AudioManager;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import chirpconnect.Chirpconnect;
import chirpconnect.SDK;
import chirpconnect.SDKError;
import io.chirp.a.c;
import io.chirp.a.d;
import io.chirp.a.e;
import io.chirp.b.a;
import io.chirp.b.b;
import io.chirp.connect.analytics.Analytics;
import io.chirp.connect.helpers.LogManager;
import io.chirp.connect.helpers.PriorityWorkerThread;
import io.chirp.connect.helpers.SettingsContentObserver;
import io.chirp.connect.helpers.WavAudioRecorder;
import io.chirp.connect.interfaces.ConnectAudioBufferCallback;
import io.chirp.connect.interfaces.ConnectAuthListener;
import io.chirp.connect.interfaces.ConnectEventListener;
import io.chirp.connect.interfaces.ConnectGetConfigListener;
import io.chirp.connect.interfaces.ConnectSetConfigListener;
import io.chirp.connect.models.ChirpError;
import io.chirp.connect.models.ChirpErrorCode;
import io.chirp.connect.models.ConnectState;
import io.chirp.connect.scenario.CallbackSetScenario;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ConnectSDKDelegator {
    private Analytics analytics;
    private String appKey;
    private String appSecret;
    byte[] audioBuffCallbackCopy;
    private PriorityWorkerThread audioProcessingThread;
    private c chirpAudio;
    private String configString;
    private ConnectAudioBufferCallback connectAudioBufferCallback;
    private Context context;
    private a network;
    private SDK sdk;
    private SettingsContentObserver settingsContentObserver;
    private List<ConnectEventListener> observers = new ArrayList();
    private boolean callbackPtrIsSet = false;
    private boolean accountEnabled = true;
    private d chirpAudioBufferCallback = new d() { // from class: io.chirp.connect.ConnectSDKDelegator.6
        @Override // io.chirp.a.d
        public void processShortsInput(byte[] bArr) {
            ChirpError chirpError = new ChirpError(ConnectSDKDelegator.this.sdk.processShortsInput(bArr));
            if (ConnectSDKDelegator.this.connectAudioBufferCallback != null) {
                ConnectSDKDelegator.this.audioBuffCallbackCopy = Arrays.copyOf(bArr, bArr.length);
                ConnectSDKDelegator.this.connectAudioBufferCallback.onAudioBufferUpdate(ConnectSDKDelegator.this.audioBuffCallbackCopy);
            }
            if (chirpError.getCode() > 0) {
                LogManager.writeLog(chirpError.getMessage());
            }
        }

        @Override // io.chirp.a.d
        public byte[] processShortsOutput(byte[] bArr) {
            ChirpError chirpError = new ChirpError(ConnectSDKDelegator.this.sdk.processShortsOutput(bArr));
            if (chirpError.getCode() > 0) {
                LogManager.writeLog(chirpError.getMessage());
            }
            return bArr;
        }
    };

    ConnectSDKDelegator(Context context, String str, String str2) {
        this.appKey = str;
        this.appSecret = str2;
        this.context = context;
    }

    private void auth(final ConnectAuthListener connectAuthListener) {
        this.network = new a();
        new Thread(new Runnable() { // from class: io.chirp.connect.ConnectSDKDelegator.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ConnectSDKDelegator.this.network.b(ConnectSDKDelegator.this.appKey, ConnectSDKDelegator.this.appSecret, "connect");
                } catch (b e2) {
                    if (e2.a() == ChirpErrorCode.CHIRP_CONNECT_ACCOUNT_DISABLED.getCode()) {
                        connectAuthListener.onError(new ChirpError(e2.a(), e2.getMessage()));
                        return;
                    }
                } catch (SecurityException unused) {
                    connectAuthListener.onError(new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NETWORK_PERMISSIONS_NOT_GRANTED, "ChirpConnect cannot fetch the config. No network permissions"));
                    return;
                } catch (Exception e3) {
                    Log.e("ChirpConnect", "ChirpConnect cannot authenticate. " + e3.getMessage());
                }
                connectAuthListener.onSuccess();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndSendAnalytics() {
        if (this.network == null) {
            this.network = new a();
        }
        try {
            Analytics analytics = new Analytics(this.context, BuildConfig.VERSION_NAME, this.appKey, this.appSecret, this.network, this.sdk.getProtocolName(), this.sdk.getProtocolVersion());
            this.analytics = analytics;
            analytics.postInstantiate();
        } catch (Exception unused) {
        }
    }

    private void fetchConfigFromNetwork(final ConnectGetConfigListener connectGetConfigListener) {
        this.network = new a();
        new Thread(new Runnable() { // from class: io.chirp.connect.ConnectSDKDelegator.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String strA = ConnectSDKDelegator.this.network.a(ConnectSDKDelegator.this.appKey, ConnectSDKDelegator.this.appSecret, "connect");
                    this.configString = ConnectSDKDelegator.this.parseConfigJson(strA);
                    connectGetConfigListener.onSuccess(ConnectSDKDelegator.this.configString);
                } catch (b e2) {
                    connectGetConfigListener.onError(new ChirpError(e2.a(), e2.getMessage()));
                } catch (SecurityException unused) {
                    connectGetConfigListener.onError(new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NETWORK_PERMISSIONS_NOT_GRANTED, "ChirpConnect cannot fetch the config. No network permissions"));
                } catch (Exception unused2) {
                    connectGetConfigListener.onError(new ChirpError(ChirpErrorCode.CHIRP_CONNECT_UNKNOWN_ERROR, "ChirpConnect cannot fetch the config."));
                }
            }
        }).start();
    }

    public static String getVersion() {
        return "Chirp Connect " + BuildConfig.VERSION_NAME + " [" + Chirpconnect.getVersion().getConnect().getVersion() + " " + Chirpconnect.getVersion().getConnect().getBuild() + "]";
    }

    private boolean isVolumeTooLow() {
        return ((AudioManager) this.context.getSystemService("audio")).getStreamVolume(3) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String parseConfigJson(String str) {
        return ((JSONArray) new JSONObject(str).get("data")).getJSONObject(0).get("config").toString();
    }

    private ChirpError setCallbackPtr() {
        if (!this.callbackPtrIsSet) {
            SDKError callbackPtr = this.sdk.setCallbackPtr();
            if (callbackPtr.errorCode() > 0) {
                return new ChirpError(callbackPtr);
            }
            this.callbackPtrIsSet = true;
        }
        return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_OK, "No error.");
    }

    public void close() {
        if (this.sdk != null) {
            stopListening();
            this.chirpAudioBufferCallback = null;
            c cVar = this.chirpAudio;
            if (cVar != null) {
                cVar.d();
                this.chirpAudio = null;
            }
            PriorityWorkerThread priorityWorkerThread = this.audioProcessingThread;
            if (priorityWorkerThread != null) {
                priorityWorkerThread.interrupt();
                this.audioProcessingThread = null;
            }
            if (this.settingsContentObserver != null) {
                this.context.getContentResolver().unregisterContentObserver(this.settingsContentObserver);
            }
            this.sdk.delete();
            this.sdk = null;
        }
    }

    public void enableLogs() {
        LogManager.enableLogs();
    }

    public byte getChannelCount() {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getChannelCount();
        }
        return (byte) 0;
    }

    public float getDurationForPayloadLength(long j) {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getDuration(j);
        }
        return 0.0f;
    }

    public String getInfo() {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getInfo();
        }
        return null;
    }

    public long getMaxPayloadLength() {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getMaxPayloadLength();
        }
        return 0L;
    }

    public byte getState() {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getState();
        }
        return (byte) 0;
    }

    public byte getStateForChannel(byte b2) {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getChannelState(b2);
        }
        return (byte) 0;
    }

    public byte getTransmissionChannel() {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.getTransmissionChannel();
        }
        return (byte) -1;
    }

    public void init() {
        this.sdk = Chirpconnect.newSDK(this.appKey, this.appSecret);
    }

    public boolean isValidPayload(byte[] bArr) {
        SDK sdk = this.sdk;
        return sdk != null && sdk.isValid(bArr).errorCode() == 0;
    }

    public String payloadToHexString(byte[] bArr) {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.asString(bArr);
        }
        return null;
    }

    public byte[] randomPayload(long j) {
        SDK sdk = this.sdk;
        if (sdk != null) {
            return sdk.randomPayload(j);
        }
        return null;
    }

    public ChirpError send(byte[] bArr) {
        SDK sdk = this.sdk;
        return sdk == null ? new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.") : (sdk.getState() == 5 || this.sdk.getState() == 3) ? isVolumeTooLow() ? new ChirpError(ChirpErrorCode.CHIRP_CONNECT_INVALID_VOLUME, "ChirpConnect volume to low.") : new ChirpError(this.sdk.send(bArr)) : new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_STARTED, "ChirpConnect hasn't started.");
    }

    public void setConfig(String str, final ConnectSetConfigListener connectSetConfigListener) {
        if (this.sdk == null) {
            connectSetConfigListener.onError(new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been initialised."));
            return;
        }
        ChirpError callbackPtr = setCallbackPtr();
        if (callbackPtr.getCode() > 0) {
            connectSetConfigListener.onError(callbackPtr);
        }
        SDKError config = this.sdk.setConfig(str);
        if (config.errorCode() > 0) {
            connectSetConfigListener.onError(new ChirpError(config));
            return;
        }
        this.configString = str;
        if (this.sdk.isOfflineMode()) {
            this.accountEnabled = true;
            SDKError callbacks = this.sdk.setCallbacks(new CallbackSetScenario(this.observers));
            if (callbacks.errorCode() != 0) {
                connectSetConfigListener.onError(new ChirpError(callbacks));
                return;
            }
            connectSetConfigListener.onSuccess();
        } else {
            auth(new ConnectAuthListener() { // from class: io.chirp.connect.ConnectSDKDelegator.2
                @Override // io.chirp.connect.interfaces.ConnectAuthListener
                public void onError(ChirpError chirpError) {
                    ConnectSDKDelegator.this.accountEnabled = false;
                    ConnectSDKDelegator.this.stopListening();
                    connectSetConfigListener.onError(chirpError);
                }

                @Override // io.chirp.connect.interfaces.ConnectAuthListener
                public void onSuccess() {
                    ConnectSDKDelegator.this.accountEnabled = true;
                    ConnectSDKDelegator.this.createAndSendAnalytics();
                    SDKError callbacks2 = ConnectSDKDelegator.this.sdk.setCallbacks(new CallbackSetScenario(ConnectSDKDelegator.this.observers, ConnectSDKDelegator.this.analytics));
                    if (callbacks2.errorCode() != 0) {
                        connectSetConfigListener.onError(new ChirpError(callbacks2));
                    } else {
                        connectSetConfigListener.onSuccess();
                    }
                }
            });
        }
        setSettingsContentObserver();
    }

    public void setConfigFromNetwork(final ConnectSetConfigListener connectSetConfigListener) {
        fetchConfigFromNetwork(new ConnectGetConfigListener() { // from class: io.chirp.connect.ConnectSDKDelegator.1
            @Override // io.chirp.connect.interfaces.ConnectGetConfigListener
            public void onError(ChirpError chirpError) {
                connectSetConfigListener.onError(chirpError);
            }

            @Override // io.chirp.connect.interfaces.ConnectGetConfigListener
            public void onSuccess(String str) {
                ConnectSDKDelegator.this.setConfig(str, connectSetConfigListener);
            }
        });
    }

    public void setConnectAudioBufferCallback(ConnectAudioBufferCallback connectAudioBufferCallback) {
        this.connectAudioBufferCallback = connectAudioBufferCallback;
    }

    public ChirpError setListenToSelf(boolean z) {
        SDK sdk = this.sdk;
        if (sdk == null) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.");
        }
        sdk.setAutoMute(!z);
        return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_OK, "No error.");
    }

    public void setListener(ConnectEventListener connectEventListener) {
        this.observers.clear();
        this.observers.add(connectEventListener);
    }

    public ChirpError setRandomSeed(int i) {
        SDK sdk = this.sdk;
        if (sdk == null) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.");
        }
        sdk.setRandomSeed(i);
        return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_OK, "No error.");
    }

    public void setSettingsContentObserver() {
        new Thread(new Runnable() { // from class: io.chirp.connect.ConnectSDKDelegator.5
            @Override // java.lang.Runnable
            public void run() {
                Looper.prepare();
                ConnectSDKDelegator.this.settingsContentObserver = new SettingsContentObserver(new Handler(), ConnectSDKDelegator.this.context, ConnectSDKDelegator.this.observers);
                ConnectSDKDelegator.this.context.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, ConnectSDKDelegator.this.settingsContentObserver);
                Looper.loop();
            }
        }).start();
    }

    public ChirpError setTransmissionChannel(byte b2) {
        SDK sdk = this.sdk;
        return sdk == null ? new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.") : new ChirpError(sdk.setTransmissionChannel(b2));
    }

    public ChirpError setVolume(float f) {
        SDK sdk = this.sdk;
        return sdk == null ? new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.") : new ChirpError(sdk.setVolume(f * 0.562341f));
    }

    public ChirpError startListening() {
        SDK sdk = this.sdk;
        if (sdk == null) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.");
        }
        if (ConnectState.createConnectState(sdk.getState()) == ConnectState.ConnectNotCreated) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_MISSING_CONFIG, "ChirpConnect config hasn't been set.");
        }
        if (!this.accountEnabled) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_ACCOUNT_DISABLED.getCode(), "Your account has been disabled due to an unpaid license. Please contact sales@chirp.io.");
        }
        if (this.chirpAudio == null) {
            PriorityWorkerThread priorityWorkerThread = new PriorityWorkerThread();
            this.audioProcessingThread = priorityWorkerThread;
            priorityWorkerThread.start();
            c cVar = new c();
            this.chirpAudio = cVar;
            e eVarA = cVar.a(this.context, this.audioProcessingThread.handler, true);
            if (eVarA.a() > 0) {
                this.chirpAudio = null;
                return new ChirpError(eVarA);
            }
            this.chirpAudio.a(this.chirpAudioBufferCallback);
        }
        this.sdk.setSampleRate(this.chirpAudio.c());
        SDKError sDKErrorStart = this.sdk.start();
        return sDKErrorStart.errorCode() > 0 ? new ChirpError(sDKErrorStart) : new ChirpError(this.chirpAudio.a());
    }

    public ChirpError stopListening() {
        SDK sdk = this.sdk;
        if (sdk == null) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_INITIALISED, "ChirpConnect hasn't been instantiated.");
        }
        if (sdk.getState() == 1) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_STARTED, "ChirpConnect has already stopped.");
        }
        if (this.sdk.getState() == 0) {
            return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_NOT_STARTED, "ChirpConnect has not been instantiated yet.");
        }
        this.chirpAudio.b();
        this.sdk.stop();
        return new ChirpError(ChirpErrorCode.CHIRP_CONNECT_OK, "No error.");
    }

    public ChirpError writeWav(byte[] bArr, String str) {
        return writeWav(bArr, str, new File(Environment.getExternalStorageDirectory(), "chirp_connect"));
    }

    public ChirpError writeWav(byte[] bArr, String str, File file) {
        WavAudioRecorder wavAudioRecorder;
        SDK sdkNewSDK = Chirpconnect.newSDK(this.appKey, this.appSecret);
        sdkNewSDK.setCallbackPtr();
        SDKError config = sdkNewSDK.setConfig(this.configString);
        if (config.errorCode() > 0) {
            return new ChirpError(config);
        }
        SDKError callbacks = sdkNewSDK.setCallbacks(new CallbackSetScenario(new ArrayList(), this.analytics));
        if (callbacks.errorCode() > 0) {
            return new ChirpError(callbacks);
        }
        SDKError sDKErrorStart = sdkNewSDK.start();
        if (sDKErrorStart.errorCode() > 0) {
            return new ChirpError(sDKErrorStart);
        }
        ChirpError chirpError = new ChirpError(0, "No error.");
        sdkNewSDK.setSampleRate(44100);
        try {
            wavAudioRecorder = new WavAudioRecorder(this.context, str, file);
            LogManager.writeLog("ChirpAudioManager recording data");
        } catch (Exception e2) {
            if (sDKErrorStart.errorCode() > 0) {
                chirpError = new ChirpError(sDKErrorStart);
            } else {
                chirpError = new ChirpError(120, "Unable to save the file. " + e2.getMessage());
            }
        }
        if (sdkNewSDK.send(bArr).errorCode() > 0) {
            throw new Exception();
        }
        byte[] bArr2 = new byte[((int) 4096) * 2];
        wavAudioRecorder.createWav(44100, sdkNewSDK.getDuration(bArr.length));
        while (sdkNewSDK.getState() == 4) {
            if (sdkNewSDK.processShortsOutput(bArr2).errorCode() > 0) {
                throw new Exception();
            }
            wavAudioRecorder.writeWav(bArr2);
        }
        wavAudioRecorder.closeWav();
        SDKError sDKErrorStop = sdkNewSDK.stop();
        return sDKErrorStop.errorCode() > 0 ? new ChirpError(sDKErrorStop) : chirpError;
    }
}
