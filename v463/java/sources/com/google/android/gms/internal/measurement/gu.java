package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gu implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ gb f4436a;

    private gu(gb gbVar) {
        this.f4436a = gbVar;
    }

    /* synthetic */ gu(gb gbVar, gc gcVar) {
        this(gbVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Uri data;
        try {
            this.f4436a.q().C().a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null && (data = intent.getData()) != null && data.isHierarchical()) {
                if (bundle == null) {
                    Bundle bundleA = this.f4436a.n().a(data);
                    this.f4436a.n();
                    String str = iq.a(intent) ? "gs" : "auto";
                    if (bundleA != null) {
                        this.f4436a.a(str, "_cmp", bundleA);
                    }
                }
                String queryParameter = data.getQueryParameter(Payload.RFR);
                if (TextUtils.isEmpty(queryParameter)) {
                    return;
                }
                if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                    this.f4436a.q().B().a("Activity created with data 'referrer' param without gclid and at least one utm field");
                    return;
                } else {
                    this.f4436a.q().B().a("Activity created with referrer", queryParameter);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        this.f4436a.a("auto", "_ldl", (Object) queryParameter);
                    }
                }
            }
        } catch (Exception e2) {
            this.f4436a.q().v().a("Throwable caught in onActivityCreated", e2);
        }
        this.f4436a.i().a(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f4436a.i().c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f4436a.i().b(activity);
        hy hyVarO = this.f4436a.o();
        hyVarO.p().a(new ic(hyVarO, hyVarO.j().b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f4436a.i().a(activity);
        hy hyVarO = this.f4436a.o();
        hyVarO.p().a(new ib(hyVarO, hyVarO.j().b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f4436a.i().b(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
