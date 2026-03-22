package microsoft.aspnet.signalr.client;

import microsoft.aspnet.signalr.client.http.HttpConnection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface PlatformComponent {
    HttpConnection createHttpConnection(Logger logger);

    String getOSName();
}
