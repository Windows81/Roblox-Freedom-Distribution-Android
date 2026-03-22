package microsoft.aspnet.signalr.client.http;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import microsoft.aspnet.signalr.client.ErrorCallback;
import microsoft.aspnet.signalr.client.SignalRFuture;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class HttpConnectionFuture extends SignalRFuture<Void> {
    private ErrorCallback mTimeoutCallback;
    private Queue<Throwable> mTimeoutQueue = new ConcurrentLinkedQueue();
    private Object mTimeoutLock = new Object();

    public interface ResponseCallback {
        void onResponse(Response response) throws Exception;
    }

    public void onTimeout(ErrorCallback errorCallback) {
        synchronized (this.mTimeoutLock) {
            this.mTimeoutCallback = errorCallback;
            while (!this.mTimeoutQueue.isEmpty()) {
                if (this.mTimeoutCallback != null) {
                    this.mTimeoutCallback.onError(this.mTimeoutQueue.poll());
                }
            }
        }
    }

    public void triggerTimeout(Throwable th) {
        synchronized (this.mTimeoutLock) {
            if (this.mTimeoutCallback != null) {
                this.mTimeoutCallback.onError(th);
            } else {
                this.mTimeoutQueue.add(th);
            }
        }
    }
}
