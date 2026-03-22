package microsoft.aspnet.signalr.client.http;

import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface HttpConnection {
    HttpConnectionFuture execute(Request request, HttpConnectionFuture.ResponseCallback responseCallback);
}
