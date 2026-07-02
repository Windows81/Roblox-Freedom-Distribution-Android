package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
final class akm implements akt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f4128a;

    akm(akk akkVar, Activity activity) {
        this.f4128a = activity;
    }

    @Override // com.google.android.gms.internal.ads.akt
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f4128a);
    }
}
