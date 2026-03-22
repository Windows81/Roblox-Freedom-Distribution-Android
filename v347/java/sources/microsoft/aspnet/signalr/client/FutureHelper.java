package microsoft.aspnet.signalr.client;

import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class FutureHelper {
    public static void copyHandlers(final SignalRFuture<?> signalRFuture, final SignalRFuture<?> signalRFuture2) {
        signalRFuture2.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.FutureHelper.1
            @Override // java.lang.Runnable
            public void run() {
                signalRFuture.cancel();
            }
        });
        signalRFuture.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.FutureHelper.2
            @Override // microsoft.aspnet.signalr.client.ErrorCallback
            public void onError(Throwable th) {
                signalRFuture2.triggerError(th);
            }
        });
    }

    public static void copyHandlers(HttpConnectionFuture httpConnectionFuture, final SignalRFuture<?> signalRFuture) {
        copyHandlers((SignalRFuture<?>) httpConnectionFuture, signalRFuture);
        httpConnectionFuture.onTimeout(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.FutureHelper.3
            @Override // microsoft.aspnet.signalr.client.ErrorCallback
            public void onError(Throwable th) {
                signalRFuture.triggerError(th);
            }
        });
    }
}
