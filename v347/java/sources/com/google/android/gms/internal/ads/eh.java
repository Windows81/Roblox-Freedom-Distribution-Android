package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class eh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ec f4963a;

    eh(ec ecVar) {
        this.f4963a = ecVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4963a.l != null) {
            this.f4963a.l.c();
            this.f4963a.l = null;
        }
    }
}
