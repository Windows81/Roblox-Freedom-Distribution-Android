package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class bw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f5944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5945b;

    public bw(com.google.android.gms.common.util.d dVar) {
        com.google.android.gms.common.internal.w.a(dVar);
        this.f5944a = dVar;
    }

    public bw(com.google.android.gms.common.util.d dVar, long j) {
        com.google.android.gms.common.internal.w.a(dVar);
        this.f5944a = dVar;
        this.f5945b = j;
    }

    public final void a() {
        this.f5945b = this.f5944a.b();
    }

    public final boolean a(long j) {
        return this.f5945b == 0 || this.f5944a.b() - this.f5945b > j;
    }

    public final void b() {
        this.f5945b = 0L;
    }
}
