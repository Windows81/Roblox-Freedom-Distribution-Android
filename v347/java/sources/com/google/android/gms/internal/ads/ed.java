package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class ed implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ij f4956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ec f4957b;

    ed(ec ecVar, ij ijVar) {
        this.f4957b = ecVar;
        this.f4956a = ijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4957b.h.a(this.f4956a);
        if (this.f4957b.l != null) {
            this.f4957b.l.c();
            this.f4957b.l = null;
        }
    }
}
