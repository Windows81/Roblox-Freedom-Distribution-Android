package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class id {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f4536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4537b;

    public id(com.google.android.gms.common.util.d dVar) {
        com.google.android.gms.common.internal.aa.a(dVar);
        this.f4536a = dVar;
    }

    public final void a() {
        this.f4537b = this.f4536a.b();
    }

    public final boolean a(long j) {
        return this.f4537b == 0 || this.f4536a.b() - this.f4537b >= 3600000;
    }

    public final void b() {
        this.f4537b = 0L;
    }
}
