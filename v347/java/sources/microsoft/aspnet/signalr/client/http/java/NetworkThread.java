package microsoft.aspnet.signalr.client.http.java;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class NetworkThread extends Thread {
    abstract void releaseAndStop();

    public NetworkThread(Runnable runnable) {
        super(runnable);
    }
}
