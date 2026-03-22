package microsoft.aspnet.signalr.client.http;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class InvalidHttpStatusCodeException extends Exception {
    private static final long serialVersionUID = 7073157073424850921L;

    public InvalidHttpStatusCodeException(int i, String str, String str2) {
        super("Invalid status code: " + i + "\nResponse: " + str + "\nHeaders: " + str2);
    }
}
