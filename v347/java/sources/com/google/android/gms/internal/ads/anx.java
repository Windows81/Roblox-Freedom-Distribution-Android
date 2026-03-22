package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class anx extends aov {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.a f4311a;

    public anx(com.google.android.gms.ads.a aVar) {
        this.f4311a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a() {
        this.f4311a.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a(int i) {
        this.f4311a.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void b() {
        this.f4311a.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void c() {
        this.f4311a.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void d() {
        this.f4311a.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void e() {
        this.f4311a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void f() {
        this.f4311a.onAdImpression();
    }
}
