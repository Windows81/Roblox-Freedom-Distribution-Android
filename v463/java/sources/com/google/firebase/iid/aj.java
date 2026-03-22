package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class aj implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Intent f5211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f5212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue<af> f5213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ah f5214e;
    private boolean f;

    public aj(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0));
    }

    private aj(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f5213d = new ArrayDeque();
        this.f = false;
        this.f5210a = context.getApplicationContext();
        this.f5211b = new Intent(str).setPackage(this.f5210a.getPackageName());
        this.f5212c = scheduledExecutorService;
    }

    public final synchronized void a(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "new intent queued in the bind-strategy delivery");
        }
        this.f5213d.add(new af(intent, pendingResult, this.f5212c));
        a();
    }

    private final synchronized void a() {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "flush queue called");
        }
        while (!this.f5213d.isEmpty()) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "found intent to be delivered");
            }
            if (this.f5214e != null && this.f5214e.isBinderAlive()) {
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    Log.d("EnhancedIntentService", "binder is alive, sending the intent.");
                }
                this.f5214e.a(this.f5213d.poll());
            } else {
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    boolean z = !this.f;
                    StringBuilder sb = new StringBuilder(39);
                    sb.append("binder is dead. start connection? ");
                    sb.append(z);
                    Log.d("EnhancedIntentService", sb.toString());
                }
                if (!this.f) {
                    this.f = true;
                    try {
                        if (com.google.android.gms.common.stats.a.a().a(this.f5210a, this.f5211b, this, 65)) {
                            return;
                        } else {
                            Log.e("EnhancedIntentService", "binding to the service failed");
                        }
                    } catch (SecurityException e2) {
                        Log.e("EnhancedIntentService", "Exception while binding the service", e2);
                    }
                    while (!this.f5213d.isEmpty()) {
                        this.f5213d.poll().a();
                    }
                }
                return;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.f = false;
            this.f5214e = (ah) iBinder;
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String strValueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(strValueOf);
                Log.d("EnhancedIntentService", sb.toString());
            }
            a();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            String strValueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(strValueOf);
            Log.d("EnhancedIntentService", sb.toString());
        }
        a();
    }
}
