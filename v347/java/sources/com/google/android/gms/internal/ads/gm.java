package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class gm extends gi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.ads.reward.b f5043a;

    public gm(com.google.android.gms.ads.reward.b bVar) {
        this.f5043a = bVar;
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a() {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a(int i) {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a(fw fwVar) {
        if (this.f5043a != null) {
            this.f5043a.onRewarded(new gk(fwVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void b() {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void c() {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void d() {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void e() {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void f() {
        if (this.f5043a != null) {
            this.f5043a.onRewardedVideoCompleted();
        }
    }
}
