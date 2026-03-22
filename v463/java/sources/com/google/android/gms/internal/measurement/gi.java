package com.google.android.gms.internal.measurement;

import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gi implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AppMeasurement.ConditionalUserProperty f4403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4404b;

    gi(gb gbVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.f4404b = gbVar;
        this.f4403a = conditionalUserProperty;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4404b.d(this.f4403a);
    }
}
