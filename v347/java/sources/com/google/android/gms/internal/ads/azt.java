package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class azt implements nt<ayy> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bab f4692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ azk f4693b;

    azt(azk azkVar, bab babVar) {
        this.f4693b = azkVar;
        this.f4692a = babVar;
    }

    @Override // com.google.android.gms.internal.ads.nt
    public final /* synthetic */ void a(ayy ayyVar) {
        synchronized (this.f4693b.f4667a) {
            this.f4693b.h = 0;
            if (this.f4693b.g != null && this.f4692a != this.f4693b.g) {
                jd.a("New JS engine is loaded, marking previous one as destroyable.");
                this.f4693b.g.e();
            }
            this.f4693b.g = this.f4692a;
        }
    }
}
