package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aha implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f3986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f3987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3988c = false;

    public aha(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f3987b = new WeakReference<>(activityLifecycleCallbacks);
        this.f3986a = application;
    }

    private final void a(ahi ahiVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f3987b.get();
            if (activityLifecycleCallbacks != null) {
                ahiVar.a(activityLifecycleCallbacks);
            } else if (!this.f3988c) {
                this.f3986a.unregisterActivityLifecycleCallbacks(this);
                this.f3988c = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new ahb(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new ahh(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new ahe(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new ahd(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new ahg(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new ahc(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new ahf(this, activity));
    }
}
