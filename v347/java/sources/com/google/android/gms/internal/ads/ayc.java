package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class ayc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.google.android.gms.ads.internal.m f4607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    zzjj f4608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    awv f4609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f4610d;
    boolean e;
    boolean f;
    private final /* synthetic */ ayb g;

    ayc(ayb aybVar, awu awuVar) {
        this.g = aybVar;
        this.f4607a = awuVar.b(aybVar.f4605c);
        this.f4609c = new awv();
        awv awvVar = this.f4609c;
        com.google.android.gms.ads.internal.m mVar = this.f4607a;
        mVar.a((aou) new aww(awvVar));
        mVar.a((apo) new axf(awvVar));
        mVar.a((asi) new axh(awvVar));
        mVar.a((aor) new axj(awvVar));
        mVar.a((gh) new axl(awvVar));
    }

    ayc(ayb aybVar, awu awuVar, zzjj zzjjVar) {
        this(aybVar, awuVar);
        this.f4608b = zzjjVar;
    }

    final boolean a() {
        if (this.e) {
            return false;
        }
        this.f = this.f4607a.b(axz.b(this.f4608b != null ? this.f4608b : this.g.f4604b));
        this.e = true;
        this.f4610d = com.google.android.gms.ads.internal.aw.l().a();
        return true;
    }
}
