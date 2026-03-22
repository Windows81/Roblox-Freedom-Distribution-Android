package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class o extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Binder f3662b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3664d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ExecutorService f3661a = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f3663c = new Object();
    private int e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Intent intent) {
        if (intent != null) {
            com.google.android.gms.c.a.a(intent);
        }
        synchronized (this.f3663c) {
            this.e--;
            if (this.e == 0) {
                stopSelfResult(this.f3664d);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.f3662b == null) {
            this.f3662b = new s(this);
        }
        return this.f3662b;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.f3663c) {
            this.f3664d = i2;
            this.e++;
        }
        if (intent == null) {
            a(intent);
            return 2;
        }
        this.f3661a.execute(new p(this, intent, intent));
        return 3;
    }
}
