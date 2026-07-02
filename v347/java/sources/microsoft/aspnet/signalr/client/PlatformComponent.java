package microsoft.aspnet.signalr.client;

import microsoft.aspnet.signalr.client.http.HttpConnection;

/* JADX INFO: loaded from: classes.dex */
public interface PlatformComponent {
    HttpConnection createHttpConnection(Logger logger);

    String getOSName();
}
