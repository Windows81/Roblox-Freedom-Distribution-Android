package com.google.android.gms.internal.measurement;

import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AppMeasurement.ConditionalUserProperty f4405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4406b;

    gj(gb gbVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.f4406b = gbVar;
        this.f4405a = conditionalUserProperty;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4406b.e(this.f4405a);
    }
}
