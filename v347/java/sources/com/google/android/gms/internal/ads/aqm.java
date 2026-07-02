package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class aqm extends aoq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aql f4368a;

    aqm(aql aqlVar) {
        this.f4368a = aqlVar;
    }

    @Override // com.google.android.gms.internal.ads.aoq, com.google.android.gms.ads.a
    public final void onAdFailedToLoad(int i) {
        this.f4368a.f4367d.a(this.f4368a.l());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.aoq, com.google.android.gms.ads.a
    public final void onAdLoaded() {
        this.f4368a.f4367d.a(this.f4368a.l());
        super.onAdLoaded();
    }
}
