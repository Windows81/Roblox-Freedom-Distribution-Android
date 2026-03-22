package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f4167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ cp f4168b;

    cs(cp cpVar, long j) {
        this.f4168b = cpVar;
        this.f4167a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4168b.b(this.f4167a);
    }
}
