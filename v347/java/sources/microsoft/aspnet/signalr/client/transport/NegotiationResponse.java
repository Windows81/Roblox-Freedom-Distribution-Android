package microsoft.aspnet.signalr.client.transport;

import com.google.gson.k;
import com.google.gson.n;
import com.google.gson.p;

/* JADX INFO: loaded from: classes.dex */
public class NegotiationResponse {
    public static final double INVALID_KEEP_ALIVE_TIMEOUT = -1.0d;
    private String mConnectionId;
    private String mConnectionToken;
    private double mDisconnectTimeout;
    private double mKeepAliveTimeout;
    private String mProtocolVersion;
    private boolean mTryWebSockets;
    private String mUrl;

    public NegotiationResponse(String str, p pVar) {
        if (str != null && !"".equals(str)) {
            n nVarL = pVar.a(str).l();
            setConnectionId(nVarL.b("ConnectionId").c());
            setConnectionToken(nVarL.b("ConnectionToken").c());
            setUrl(nVarL.b("Url").c());
            setProtocolVersion(nVarL.b("ProtocolVersion").c());
            setDisconnectTimeout(nVarL.b("DisconnectTimeout").d());
            setTryWebSockets(nVarL.b("TryWebSockets").g());
            k kVarB = nVarL.b("KeepAliveTimeout");
            if (kVarB != null && !kVarB.k()) {
                setKeepAliveTimeout(kVarB.d());
            } else {
                setKeepAliveTimeout(-1.0d);
            }
        }
    }

    public String getConnectionId() {
        return this.mConnectionId;
    }

    public void setConnectionId(String str) {
        this.mConnectionId = str;
    }

    public String getConnectionToken() {
        return this.mConnectionToken;
    }

    public void setConnectionToken(String str) {
        this.mConnectionToken = str;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String getProtocolVersion() {
        return this.mProtocolVersion;
    }

    public void setProtocolVersion(String str) {
        this.mProtocolVersion = str;
    }

    public double getDisconnectTimeout() {
        return this.mDisconnectTimeout;
    }

    public void setDisconnectTimeout(double d2) {
        this.mDisconnectTimeout = d2;
    }

    public boolean shouldTryWebSockets() {
        return this.mTryWebSockets;
    }

    public void setTryWebSockets(boolean z) {
        this.mTryWebSockets = z;
    }

    public double getKeepAliveTimeout() {
        return this.mKeepAliveTimeout;
    }

    public void setKeepAliveTimeout(double d2) {
        this.mKeepAliveTimeout = d2;
    }
}
