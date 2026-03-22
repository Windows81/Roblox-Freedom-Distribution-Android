package microsoft.aspnet.signalr.client;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class UpdateableCancellableFuture<V> extends SignalRFuture<V> {
    SignalRFuture<?> mFuture;
    Object mSync = new Object();

    public UpdateableCancellableFuture(SignalRFuture<?> signalRFuture) {
        this.mFuture = null;
        this.mFuture = signalRFuture;
    }

    public void setFuture(SignalRFuture<?> signalRFuture) {
        synchronized (this.mSync) {
            this.mFuture = signalRFuture;
        }
        if (isCancelled() && this.mFuture != null) {
            this.mFuture.cancel();
        }
    }

    @Override // microsoft.aspnet.signalr.client.SignalRFuture
    public void cancel() {
        synchronized (this.mSync) {
            super.cancel();
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
        }
    }
}
