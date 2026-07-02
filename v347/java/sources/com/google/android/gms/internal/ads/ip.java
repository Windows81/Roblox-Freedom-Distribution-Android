package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class ip extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ in f5136a;

    ip(in inVar) {
        this.f5136a = inVar;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        arq arqVar = new arq(this.f5136a.f, this.f5136a.g.f5784a);
        synchronized (this.f5136a.f5131a) {
            try {
                com.google.android.gms.ads.internal.aw.n();
                art.a(this.f5136a.h, arqVar);
            } catch (IllegalArgumentException e) {
                jd.c("Cannot config CSI reporter.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }
}
