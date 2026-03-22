package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f5246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f5248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f5249d = new f(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5250e = 1;

    public static synchronized d a(Context context) {
        if (f5246a == null) {
            f5246a = new d(context, Executors.newSingleThreadScheduledExecutor());
        }
        return f5246a;
    }

    private d(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f5248c = scheduledExecutorService;
        this.f5247b = context.getApplicationContext();
    }

    public final com.google.android.gms.f.g<Void> a(int i, Bundle bundle) {
        return a(new l(a(), 2, bundle));
    }

    public final com.google.android.gms.f.g<Bundle> b(int i, Bundle bundle) {
        return a(new o(a(), 1, bundle));
    }

    private final synchronized <T> com.google.android.gms.f.g<T> a(m<T> mVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(mVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
            sb.append("Queueing ");
            sb.append(strValueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        if (!this.f5249d.a(mVar)) {
            f fVar = new f(this);
            this.f5249d = fVar;
            fVar.a(mVar);
        }
        return mVar.f5264b.a();
    }

    private final synchronized int a() {
        int i;
        i = this.f5250e;
        this.f5250e = i + 1;
        return i;
    }
}
