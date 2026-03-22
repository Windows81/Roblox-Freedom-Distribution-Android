package microsoft.aspnet.signalr.client;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class MessageResult {
    private boolean mDisconnect = false;
    private boolean mReconnect = false;
    private boolean mInitialize = false;

    public boolean disconnect() {
        return this.mDisconnect;
    }

    public void setDisconnect(boolean z) {
        this.mDisconnect = z;
    }

    public boolean reconnect() {
        return this.mReconnect;
    }

    public void setReconnect(boolean z) {
        this.mReconnect = z;
    }

    public boolean initialize() {
        return this.mInitialize;
    }

    public void setInitialize(boolean z) {
        this.mInitialize = z;
    }
}
