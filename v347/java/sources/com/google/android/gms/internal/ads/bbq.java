package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class bbq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ nd f4773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bbo f4774b;

    bbq(bbo bboVar, nd ndVar) {
        this.f4774b = bboVar;
        this.f4773a = ndVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (nd ndVar : this.f4774b.k.keySet()) {
            if (ndVar != this.f4773a) {
                ((bbi) this.f4774b.k.get(ndVar)).a();
            }
        }
    }
}
