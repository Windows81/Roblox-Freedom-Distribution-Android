package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gy implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ gv f4450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gw f4451b;

    gy(gw gwVar, gv gvVar) {
        this.f4451b = gwVar;
        this.f4450a = gvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4451b.a(this.f4450a);
        this.f4451b.f4441a = null;
        this.f4451b.h().a((gv) null);
    }
}
