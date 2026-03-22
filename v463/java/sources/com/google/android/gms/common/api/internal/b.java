package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f3520a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f3521b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f3522c = new AtomicBoolean();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<a> f3523d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3524e = false;

    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return f3520a;
    }

    public static void a(Application application) {
        synchronized (f3520a) {
            if (!f3520a.f3524e) {
                application.registerActivityLifecycleCallbacks(f3520a);
                application.registerComponentCallbacks(f3520a);
                f3520a.f3524e = true;
            }
        }
    }

    private final void b(boolean z) {
        synchronized (f3520a) {
            ArrayList<a> arrayList = this.f3523d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                a aVar = arrayList.get(i);
                i++;
                aVar.a(z);
            }
        }
    }

    public final void a(a aVar) {
        synchronized (f3520a) {
            this.f3523d.add(aVar);
        }
    }

    public final boolean a(boolean z) {
        if (!this.f3522c.get()) {
            if (!com.google.android.gms.common.util.m.c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f3522c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f3521b.set(true);
            }
        }
        return b();
    }

    public final boolean b() {
        return this.f3521b.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean zCompareAndSet = this.f3521b.compareAndSet(true, false);
        this.f3522c.set(true);
        if (zCompareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean zCompareAndSet = this.f3521b.compareAndSet(true, false);
        this.f3522c.set(true);
        if (zCompareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i == 20 && this.f3521b.compareAndSet(false, true)) {
            this.f3522c.set(true);
            b(true);
        }
    }
}
