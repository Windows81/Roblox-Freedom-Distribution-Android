package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
final class ako implements akt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f4130a;

    ako(akk akkVar, Activity activity) {
        this.f4130a = activity;
    }

    @Override // com.google.android.gms.internal.ads.akt
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f4130a);
    }
}
