package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
final class akp implements akt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f4131a;

    akp(akk akkVar, Activity activity) {
        this.f4131a = activity;
    }

    @Override // com.google.android.gms.internal.ads.akt
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f4131a);
    }
}
