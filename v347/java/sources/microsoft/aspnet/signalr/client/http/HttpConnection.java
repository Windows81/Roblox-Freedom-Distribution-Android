package microsoft.aspnet.signalr.client.http;

import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;

/* JADX INFO: loaded from: classes.dex */
public interface HttpConnection {
    HttpConnectionFuture execute(Request request, HttpConnectionFuture.ResponseCallback responseCallback);
}
