package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f4144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4145b;

    public cj(com.google.android.gms.common.util.d dVar) {
        com.google.android.gms.common.internal.aa.a(dVar);
        this.f4144a = dVar;
    }

    public cj(com.google.android.gms.common.util.d dVar, long j) {
        com.google.android.gms.common.internal.aa.a(dVar);
        this.f4144a = dVar;
        this.f4145b = j;
    }

    public final void a() {
        this.f4145b = this.f4144a.b();
    }

    public final boolean a(long j) {
        return this.f4145b == 0 || this.f4144a.b() - this.f4145b > j;
    }

    public final void b() {
        this.f4145b = 0L;
    }
}
