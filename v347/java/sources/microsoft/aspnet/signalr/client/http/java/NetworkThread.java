package microsoft.aspnet.signalr.client.http.java;

/* JADX INFO: loaded from: classes.dex */
abstract class NetworkThread extends Thread {
    abstract void releaseAndStop();

    public NetworkThread(Runnable runnable) {
        super(runnable);
    }
}
