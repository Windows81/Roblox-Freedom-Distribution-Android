package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f3339a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f3340b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f3341c = new AtomicBoolean();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("sInstance")
    private final ArrayList<InterfaceC0071a> f3342d = new ArrayList<>();

    @GuardedBy("sInstance")
    private boolean e = false;

    /* JADX INFO: renamed from: com.google.android.gms.common.api.internal.a$a, reason: collision with other inner class name */
    public interface InterfaceC0071a {
        void a(boolean z);
    }

    private a() {
    }

    public static a a() {
        return f3339a;
    }

    public static void a(Application application) {
        synchronized (f3339a) {
            if (!f3339a.e) {
                application.registerActivityLifecycleCallbacks(f3339a);
                application.registerComponentCallbacks(f3339a);
                f3339a.e = true;
            }
        }
    }

    private final void b(boolean z) {
        synchronized (f3339a) {
            ArrayList<InterfaceC0071a> arrayList = this.f3342d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                InterfaceC0071a interfaceC0071a = arrayList.get(i);
                i++;
                interfaceC0071a.a(z);
            }
        }
    }

    public final void a(InterfaceC0071a interfaceC0071a) {
        synchronized (f3339a) {
            this.f3342d.add(interfaceC0071a);
        }
    }

    @TargetApi(16)
    public final boolean a(boolean z) {
        if (!this.f3341c.get()) {
            if (!com.google.android.gms.common.util.n.d()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f3341c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f3340b.set(true);
            }
        }
        return b();
    }

    public final boolean b() {
        return this.f3340b.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean zCompareAndSet = this.f3340b.compareAndSet(true, false);
        this.f3341c.set(true);
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
        boolean zCompareAndSet = this.f3340b.compareAndSet(true, false);
        this.f3341c.set(true);
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
        if (i == 20 && this.f3340b.compareAndSet(false, true)) {
            this.f3341c.set(true);
            b(true);
        }
    }
}
