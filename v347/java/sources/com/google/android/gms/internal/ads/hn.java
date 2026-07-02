package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class hn implements mp<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ nd f5089a;

    hn(hj hjVar, nd ndVar) {
        this.f5089a = ndVar;
    }

    @Override // com.google.android.gms.internal.ads.mp
    public final /* synthetic */ void a(Void r3) {
        hj.f5081a.remove(this.f5089a);
    }

    @Override // com.google.android.gms.internal.ads.mp
    public final void a(Throwable th) {
        hj.f5081a.remove(this.f5089a);
    }
}
