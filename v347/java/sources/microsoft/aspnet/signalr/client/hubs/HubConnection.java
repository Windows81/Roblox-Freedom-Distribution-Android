package microsoft.aspnet.signalr.client.hubs;

import com.google.gson.h;
import com.google.gson.k;
import com.google.gson.n;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import microsoft.aspnet.signalr.client.Action;
import microsoft.aspnet.signalr.client.Connection;
import microsoft.aspnet.signalr.client.ConnectionState;
import microsoft.aspnet.signalr.client.InvalidStateException;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;

/* JADX INFO: loaded from: classes.dex */
public class HubConnection extends Connection {
    private Integer mCallbackId;
    private Map<String, Action<HubResult>> mCallbacks;
    private Map<String, HubProxy> mHubs;

    public HubConnection(String str, String str2, boolean z, Logger logger) {
        super(getUrl(str, z), str2, logger);
        this.mCallbacks = Collections.synchronizedMap(new HashMap());
        this.mHubs = Collections.synchronizedMap(new HashMap());
        this.mCallbackId = 0;
    }

    public HubConnection(String str) {
        super(getUrl(str, true));
        this.mCallbacks = Collections.synchronizedMap(new HashMap());
        this.mHubs = Collections.synchronizedMap(new HashMap());
        this.mCallbackId = 0;
    }

    public HubConnection(String str, boolean z) {
        super(getUrl(str, z));
        this.mCallbacks = Collections.synchronizedMap(new HashMap());
        this.mHubs = Collections.synchronizedMap(new HashMap());
        this.mCallbackId = 0;
    }

    @Override // microsoft.aspnet.signalr.client.Connection, microsoft.aspnet.signalr.client.ConnectionBase
    public void onReceived(k kVar) {
        super.onReceived(kVar);
        log("Processing message", LogLevel.Information);
        if (getState() == ConnectionState.Connected) {
            if (kVar.i() && kVar.l().a("I")) {
                log("Getting HubResult from message", LogLevel.Verbose);
                HubResult hubResult = (HubResult) this.mGson.a(kVar, HubResult.class);
                String lowerCase = hubResult.getId().toLowerCase(Locale.getDefault());
                log("Result Id: " + lowerCase, LogLevel.Verbose);
                log("Result Data: " + hubResult.getResult(), LogLevel.Verbose);
                if (this.mCallbacks.containsKey(lowerCase)) {
                    log("Get and remove callback with id: " + lowerCase, LogLevel.Verbose);
                    Action<HubResult> actionRemove = this.mCallbacks.remove(lowerCase);
                    try {
                        log("Execute callback for message", LogLevel.Verbose);
                        actionRemove.run(hubResult);
                        return;
                    } catch (Exception e) {
                        onError(e, false);
                        return;
                    }
                }
                return;
            }
            HubInvocation hubInvocation = (HubInvocation) this.mGson.a(kVar, HubInvocation.class);
            log("Getting HubInvocation from message", LogLevel.Verbose);
            String lowerCase2 = hubInvocation.getHub().toLowerCase(Locale.getDefault());
            log("Message for: " + lowerCase2, LogLevel.Verbose);
            if (this.mHubs.containsKey(lowerCase2)) {
                HubProxy hubProxy = this.mHubs.get(lowerCase2);
                if (hubInvocation.getState() != null) {
                    for (String str : hubInvocation.getState().keySet()) {
                        k kVar2 = hubInvocation.getState().get(str);
                        log("Setting state for hub: " + str + " -> " + kVar2, LogLevel.Verbose);
                        hubProxy.setState(str, kVar2);
                    }
                }
                String lowerCase3 = hubInvocation.getMethod().toLowerCase(Locale.getDefault());
                log("Invoking event: " + lowerCase3 + " with arguments " + arrayToString(hubInvocation.getArgs()), LogLevel.Verbose);
                try {
                    hubProxy.invokeEvent(lowerCase3, hubInvocation.getArgs());
                } catch (Exception e2) {
                    onError(e2, false);
                }
            }
        }
    }

    private static String arrayToString(k[] kVarArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < kVarArr.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(kVarArr[i].toString());
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // microsoft.aspnet.signalr.client.Connection, microsoft.aspnet.signalr.client.ConnectionBase
    public String getConnectionData() {
        h hVar = new h();
        for (String str : this.mHubs.keySet()) {
            n nVar = new n();
            nVar.a("name", str);
            hVar.a(nVar);
        }
        String string = hVar.toString();
        log("Getting connection data: " + string, LogLevel.Verbose);
        return string;
    }

    @Override // microsoft.aspnet.signalr.client.Connection
    protected void onClosed() {
        clearInvocationCallbacks("Connection closed");
        super.onClosed();
    }

    private void clearInvocationCallbacks(String str) {
        log("Clearing invocation callbacks: " + str, LogLevel.Verbose);
        HubResult hubResult = new HubResult();
        hubResult.setError(str);
        for (String str2 : this.mCallbacks.keySet()) {
            try {
                log("Invoking callback with empty result: " + str2, LogLevel.Verbose);
                this.mCallbacks.get(str2).run(hubResult);
            } catch (Exception e) {
            }
        }
        this.mCallbacks.clear();
    }

    @Override // microsoft.aspnet.signalr.client.Connection
    protected void onReconnecting() {
        clearInvocationCallbacks("Reconnecting");
        super.onReconnecting();
    }

    public HubProxy createHubProxy(String str) {
        if (this.mState != ConnectionState.Disconnected) {
            throw new InvalidStateException(this.mState);
        }
        if (str == null) {
            throw new IllegalArgumentException("hubName cannot be null");
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        log("Creating hub proxy: " + lowerCase, LogLevel.Information);
        if (this.mHubs.containsKey(lowerCase)) {
            return this.mHubs.get(lowerCase);
        }
        HubProxy hubProxy = new HubProxy(this, str, getLogger());
        this.mHubs.put(lowerCase, hubProxy);
        return hubProxy;
    }

    String registerCallback(Action<HubResult> action) {
        String lowerCase = this.mCallbackId.toString().toLowerCase(Locale.getDefault());
        log("Registering callback: " + lowerCase, LogLevel.Verbose);
        this.mCallbacks.put(lowerCase, action);
        Integer num = this.mCallbackId;
        this.mCallbackId = Integer.valueOf(this.mCallbackId.intValue() + 1);
        return lowerCase;
    }

    void removeCallback(String str) {
        log("Removing callback: " + str, LogLevel.Verbose);
        this.mCallbacks.remove(str.toLowerCase(Locale.getDefault()));
    }

    private static String getUrl(String str, boolean z) {
        String str2 = !str.endsWith("/") ? str + "/" : str;
        if (z) {
            return str2 + "signalr";
        }
        return str2;
    }

    @Override // microsoft.aspnet.signalr.client.Connection
    protected String getSourceNameForLog() {
        return "HubConnection";
    }
}
