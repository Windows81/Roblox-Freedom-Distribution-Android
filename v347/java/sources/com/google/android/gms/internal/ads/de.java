package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public abstract class de implements dc, kf<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final nq<zzaef> f4926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final dc f4927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f4928c = new Object();

    public de(nq<zzaef> nqVar, dc dcVar) {
        this.f4926a = nqVar;
        this.f4927b = dcVar;
    }

    public abstract void a();

    @Override // com.google.android.gms.internal.ads.dc
    public final void a(zzaej zzaejVar) {
        synchronized (this.f4928c) {
            this.f4927b.a(zzaejVar);
            a();
        }
    }

    final boolean a(dq dqVar, zzaef zzaefVar) {
        try {
            dqVar.a(zzaefVar, new dn(this));
            return true;
        } catch (Throwable th) {
            jd.c("Could not fetch ad response from ad request service due to an Exception.", th);
            com.google.android.gms.ads.internal.aw.i().a(th, "AdRequestClientTask.getAdResponseFromService");
            this.f4927b.a(new zzaej(0));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void b() {
        a();
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final /* synthetic */ Void c() {
        dq dqVarD = d();
        if (dqVarD == null) {
            this.f4927b.a(new zzaej(0));
            a();
        } else {
            this.f4926a.a(new dg(this, dqVarD), new dh(this));
        }
        return null;
    }

    public abstract dq d();
}
