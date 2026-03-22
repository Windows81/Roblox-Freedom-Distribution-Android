package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class akk implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f4123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f4124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4125c = false;

    public akk(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f4124b = new WeakReference<>(activityLifecycleCallbacks);
        this.f4123a = application;
    }

    private final void a(akt aktVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f4124b.get();
            if (activityLifecycleCallbacks != null) {
                aktVar.a(activityLifecycleCallbacks);
            } else if (!this.f4125c) {
                this.f4123a.unregisterActivityLifecycleCallbacks(this);
                this.f4125c = true;
            }
        } catch (Exception e) {
            jd.b("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new akl(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new aks(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new ako(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new akn(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new akr(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new akm(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new akp(this, activity));
    }
}
