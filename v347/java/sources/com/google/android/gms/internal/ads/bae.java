package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class bae implements nt<ayy> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bab f4711a;

    bae(bab babVar) {
        this.f4711a = babVar;
    }

    @Override // com.google.android.gms.internal.ads.nt
    public final /* synthetic */ void a(ayy ayyVar) {
        final ayy ayyVar2 = ayyVar;
        nj.f5346a.execute(new Runnable(this, ayyVar2) { // from class: com.google.android.gms.internal.ads.bag

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bae f4712a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final ayy f4713b;

            {
                this.f4712a = this;
                this.f4713b = ayyVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bae baeVar = this.f4712a;
                ayy ayyVar3 = this.f4713b;
                baeVar.f4711a.f4706b.a(ayyVar3);
                ayyVar3.a();
            }
        });
    }
}
