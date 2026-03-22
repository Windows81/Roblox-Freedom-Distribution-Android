package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f4401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4402b;

    gh(gb gbVar, long j) {
        this.f4402b = gbVar;
        this.f4401a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gb gbVar = this.f4402b;
        long j = this.f4401a;
        gbVar.c();
        gbVar.F();
        gbVar.q().B().a("Resetting analytics data (FE)");
        gbVar.o().v();
        if (gbVar.s().j(gbVar.f().w())) {
            gbVar.r().h.a(j);
        }
        boolean zX = gbVar.q.x();
        if (!gbVar.s().u()) {
            gbVar.r().d(!zX);
        }
        gbVar.h().x();
        gbVar.f4384b = !zX;
    }
}
