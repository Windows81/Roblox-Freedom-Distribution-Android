package microsoft.aspnet.signalr.client.hubs;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class HubException extends Exception {
    private static final long serialVersionUID = 5958638666959902780L;
    private Object mErrorData;

    public HubException(String str, Object obj) {
        super(str);
        this.mErrorData = obj;
    }

    public Object getErrorData() {
        return this.mErrorData;
    }
}
