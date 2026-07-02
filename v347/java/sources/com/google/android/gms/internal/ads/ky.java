package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class ky<T> implements mn<Throwable, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ lc f5238a;

    ky(kw kwVar, lc lcVar) {
        this.f5238a = lcVar;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final /* synthetic */ nd a(Throwable th) throws Exception {
        Throwable th2 = th;
        jd.b("Error occurred while dispatching http response in getter.", th2);
        com.google.android.gms.ads.internal.aw.i().a(th2, "HttpGetter.deliverResponse.1");
        return ms.a(this.f5238a.a());
    }
}
