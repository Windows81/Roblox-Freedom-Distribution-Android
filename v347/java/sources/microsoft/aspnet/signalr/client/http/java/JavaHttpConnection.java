package microsoft.aspnet.signalr.client.http.java;

import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.Platform;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;
import microsoft.aspnet.signalr.client.http.Request;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class JavaHttpConnection implements HttpConnection {
    private static final String USER_AGENT_HEADER = "User-Agent";
    private Logger mLogger;
    private boolean mSkipCookie;

    public JavaHttpConnection(Logger logger, boolean z) {
        this.mLogger = logger;
        this.mSkipCookie = z;
    }

    @Override // microsoft.aspnet.signalr.client.http.HttpConnection
    public HttpConnectionFuture execute(Request request, HttpConnectionFuture.ResponseCallback responseCallback) {
        request.addHeader(USER_AGENT_HEADER, Platform.getUserAgent());
        this.mLogger.log("Create new thread for HTTP Connection", LogLevel.Verbose);
        this.mLogger.log("JavaHttpConnection.execute() " + request.getUrl(), LogLevel.Verbose);
        this.mLogger.log("       cookie:" + request.getHeaders().get("Cookie"), LogLevel.Verbose);
        this.mLogger.log("       user-agent:" + request.getHeaders().get(USER_AGENT_HEADER), LogLevel.Verbose);
        HttpConnectionFuture httpConnectionFuture = new HttpConnectionFuture();
        final NetworkRunnable networkRunnable = new NetworkRunnable(this.mLogger, request, httpConnectionFuture, responseCallback, this.mSkipCookie);
        final NetworkThread networkThread = new NetworkThread(networkRunnable) { // from class: microsoft.aspnet.signalr.client.http.java.JavaHttpConnection.1
            @Override // microsoft.aspnet.signalr.client.http.java.NetworkThread
            void releaseAndStop() {
                JavaHttpConnection.this.mLogger.log("JavaHttpConnection NetworkThread.releaseAndStop()", LogLevel.Verbose);
                try {
                    networkRunnable.closeStreamAndConnection();
                } catch (Throwable th) {
                }
            }
        };
        httpConnectionFuture.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.http.java.JavaHttpConnection.2
            @Override // java.lang.Runnable
            public void run() {
                networkThread.releaseAndStop();
            }
        });
        networkThread.start();
        return httpConnectionFuture;
    }
}
