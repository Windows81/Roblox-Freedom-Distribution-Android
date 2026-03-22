package com.google.android.gms.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f3630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private ad f3631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private int f3632d;

    public ab(Context context) {
        this(context, Executors.newSingleThreadScheduledExecutor());
    }

    private ab(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f3631c = new ad(this);
        this.f3632d = 1;
        this.f3629a = context.getApplicationContext();
        this.f3630b = scheduledExecutorService;
    }

    private final synchronized int a() {
        int i;
        i = this.f3632d;
        this.f3632d = i + 1;
        return i;
    }

    private final synchronized <T> com.google.android.gms.d.f<T> a(aj<T> ajVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(ajVar);
            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(strValueOf).length() + 9).append("Queueing ").append(strValueOf).toString());
        }
        if (!this.f3631c.a(ajVar)) {
            this.f3631c = new ad(this);
            this.f3631c.a(ajVar);
        }
        return ajVar.f3645b.a();
    }

    public final com.google.android.gms.d.f<Bundle> a(int i, Bundle bundle) {
        return a(new d(a(), 1, bundle));
    }
}
