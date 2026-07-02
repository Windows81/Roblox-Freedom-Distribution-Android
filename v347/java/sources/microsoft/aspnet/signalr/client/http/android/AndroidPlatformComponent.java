package microsoft.aspnet.signalr.client.http.android;

import android.os.Build;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.Platform;
import microsoft.aspnet.signalr.client.PlatformComponent;
import microsoft.aspnet.signalr.client.http.HttpConnection;

/* JADX INFO: loaded from: classes.dex */
public class AndroidPlatformComponent implements PlatformComponent {
    @Override // microsoft.aspnet.signalr.client.PlatformComponent
    public HttpConnection createHttpConnection(Logger logger) {
        return Build.VERSION.SDK_INT <= 8 ? new AndroidHttpConnection(logger) : Platform.createDefaultHttpConnection(logger);
    }

    @Override // microsoft.aspnet.signalr.client.PlatformComponent
    public String getOSName() {
        return "android";
    }
}
