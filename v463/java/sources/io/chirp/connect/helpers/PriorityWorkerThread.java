package io.chirp.connect.helpers;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class PriorityWorkerThread extends Thread {
    public Handler handler;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.handler = new Handler(Looper.myLooper());
        Process.setThreadPriority(-19);
        Looper.loop();
    }
}
