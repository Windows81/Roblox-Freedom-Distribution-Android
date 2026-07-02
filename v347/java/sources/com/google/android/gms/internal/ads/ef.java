package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class ef implements nt<bah> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ee f4961a;

    ef(ee eeVar) {
        this.f4961a = eeVar;
    }

    @Override // com.google.android.gms.internal.ads.nt
    public final /* synthetic */ void a(bah bahVar) {
        try {
            bahVar.b("AFMA_getAdapterLessMediationAd", this.f4961a.f4958a);
        } catch (Exception e) {
            jd.b("Error requesting an ad url", e);
            ec.f.b(this.f4961a.f4959b);
        }
    }
}
