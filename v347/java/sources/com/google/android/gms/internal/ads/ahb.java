package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ahb implements ahi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f3989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Bundle f3990b;

    ahb(aha ahaVar, Activity activity, Bundle bundle) {
        this.f3989a = activity;
        this.f3990b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.ahi
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f3989a, this.f3990b);
    }
}
