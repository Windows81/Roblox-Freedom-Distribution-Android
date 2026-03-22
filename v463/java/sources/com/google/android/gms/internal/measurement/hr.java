package com.google.android.gms.internal.measurement;

import android.content.ComponentName;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ hn f4509a;

    hr(hn hnVar) {
        this.f4509a = hnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4509a.f4500a.a(new ComponentName(this.f4509a.f4500a.k(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
