package com.appsflyer;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class o implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f2232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedBlockingQueue<IBinder> f2233b;

    private o() {
        this.f2232a = false;
        this.f2233b = new LinkedBlockingQueue<>(1);
    }

    /* synthetic */ o(m mVar) {
        this();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f2233b.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }

    public final IBinder a() throws InterruptedException {
        if (this.f2232a) {
            throw new IllegalStateException();
        }
        this.f2232a = true;
        return this.f2233b.take();
    }
}
