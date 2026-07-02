package com.roblox.client.realtime;

import android.webkit.CookieManager;
import com.roblox.client.RobloxSettings;
import com.roblox.client.e.v;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: classes.dex */
class NativeSignalRImplementation extends a {
    private static final String TAG = "rbx.signalr_impl";
    private final i mProcessor = new i();

    public native void nativeStartSignalR(String str, String str2, String str3, String str4, String str5);

    public native void nativeStopSignalR();

    NativeSignalRImplementation() throws Throwable {
        try {
            System.loadLibrary("signalrclient");
            System.loadLibrary("signalr-native-lib");
        } catch (NullPointerException | SecurityException | UnsatisfiedLinkError e) {
            com.roblox.client.util.g.e(TAG, "Caught Exception: " + e);
            throw e;
        }
    }

    @Override // com.roblox.client.realtime.a
    public void start() {
        com.roblox.client.util.g.c(TAG, "start: ....");
        nativeStartSignalR(RobloxSettings.baseSignalRUrl(), CookieManager.getInstance().getCookie(RobloxSettings.baseUrl()), RobloxSettings.userAgent(), com.roblox.client.b.aB() ? com.roblox.client.c.a().c() : null, com.roblox.client.b.aD() ? com.roblox.client.c.a().e() : null);
        com.roblox.client.util.g.b(TAG, "start: ... END.");
    }

    @Override // com.roblox.client.realtime.a
    public void stop() {
        com.roblox.client.util.g.c(TAG, "stop: ....");
        nativeStopSignalR();
        com.roblox.client.util.g.b(TAG, "stop: ... END.");
    }

    @Override // com.roblox.client.realtime.a
    public void setProcessor(String str, j jVar) {
        this.mProcessor.a(str, jVar);
    }

    private void processEvent(String str, String str2, long j) {
        this.mProcessor.a(str, str2, j);
    }

    private void setSequenceNumber(long j) {
        if (j != -1) {
            sSequenceNumber = j;
        }
    }

    private void postSignalRConnectivityChangeEvent(boolean z, boolean z2) {
        com.roblox.client.util.g.c(TAG, "postSignalRConnectivityChangeEvent() " + z + " prev:" + sSignalRConnected);
        if (sSignalRConnected != z) {
            sSignalRConnected = z;
            org.greenrobot.eventbus.c.a().c(new v(z, getSequenceNumber(), z2));
            com.roblox.client.hybrid.a.i.a(z, getSequenceNumber());
            if (com.roblox.client.b.H()) {
                NativeGLInterface.nativeBroadcastConnection(z ? 1 : 0, Long.toString(getSequenceNumber()));
            }
        }
    }

    public void callbackOnDisconnectedEvent() {
        com.roblox.client.util.g.c(TAG, "callbackOnDisconnectedEvent()");
        postSignalRConnectivityChangeEvent(false, false);
    }

    public void callbackOnSubscriptionEvent(long j) {
        long sequenceNumber = getSequenceNumber();
        com.roblox.client.util.g.c(TAG, "callbackOnSubscriptionEvent: sequence=" + j + " prev=" + sequenceNumber);
        setSequenceNumber(j);
        postSignalRConnectivityChangeEvent(true, j > sequenceNumber || j < -1);
    }

    public void callbackOnNotificationEvent(String str, String str2, long j) {
        com.roblox.client.util.g.c(TAG, "callbackOnNotificationEvent: event=" + str + ", payload=" + str2 + ", sequence=" + j);
        setSequenceNumber(j);
        processEvent(str, str2, j);
        com.roblox.client.hybrid.a.i.a(str, str2, j);
        if (com.roblox.client.b.H()) {
            NativeGLInterface.nativeBroadcastEventWithNamespace(str, str2, getTypeFromPayload(str2));
        }
    }
}
