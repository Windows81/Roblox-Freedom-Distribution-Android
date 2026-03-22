package microsoft.aspnet.signalr.client;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class InvalidProtocolVersionException extends Exception {
    private static final long serialVersionUID = -1655367340327068570L;

    public InvalidProtocolVersionException(String str) {
        super("Invalid protocol version " + str);
    }
}
