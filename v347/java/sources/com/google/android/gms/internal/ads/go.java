package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class go extends iy implements gu, gx, hc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ij f5045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f5046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final hd f5047d;
    private final gx e;
    private final String g;
    private final bbd h;
    private final long i;
    private gr l;
    private Future m;
    private volatile com.google.android.gms.ads.internal.gmsg.k n;
    private int j = 0;
    private int k = 3;
    private final Object f = new Object();

    public go(Context context, String str, String str2, bbd bbdVar, ij ijVar, hd hdVar, gx gxVar, long j) {
        this.f5046c = context;
        this.f5044a = str;
        this.g = str2;
        this.h = bbdVar;
        this.f5045b = ijVar;
        this.f5047d = hdVar;
        this.e = gxVar;
        this.i = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(zzjj zzjjVar, bbx bbxVar) {
        this.f5047d.b().a((gx) this);
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.f5044a)) {
                bbxVar.a(zzjjVar, this.g, this.h.f4741a);
            } else {
                bbxVar.a(zzjjVar, this.g);
            }
        } catch (RemoteException e) {
            jd.c("Fail to load ad from adapter.", e);
            a(this.f5044a, 0);
        }
    }

    private final boolean a(long j) {
        long jB = this.i - (com.google.android.gms.ads.internal.aw.l().b() - j);
        if (jB <= 0) {
            this.k = 4;
            return false;
        }
        try {
            this.f.wait(jB);
            return true;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.k = 5;
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        if (this.f5047d == null || this.f5047d.b() == null || this.f5047d.a() == null) {
            return;
        }
        gw gwVarB = this.f5047d.b();
        gwVarB.a((gx) null);
        gwVarB.a((gu) this);
        gwVarB.a((hc) this);
        zzjj zzjjVar = this.f5045b.f5117a.f5760c;
        bbx bbxVarA = this.f5047d.a();
        try {
            if (bbxVarA.g()) {
                ly.f5287a.post(new gp(this, zzjjVar, bbxVarA));
            } else {
                ly.f5287a.post(new gq(this, bbxVarA, zzjjVar, gwVarB));
            }
        } catch (RemoteException e) {
            jd.c("Fail to check if adapter is initialized.", e);
            a(this.f5044a, 0);
        }
        long jB = com.google.android.gms.ads.internal.aw.l().b();
        while (true) {
            synchronized (this.f) {
                if (this.j != 0) {
                    this.l = new gt().a(com.google.android.gms.ads.internal.aw.l().b() - jB).a(1 == this.j ? 6 : this.k).a(this.f5044a).b(this.h.f4744d).a();
                } else if (!a(jB)) {
                    this.l = new gt().a(this.k).a(com.google.android.gms.ads.internal.aw.l().b() - jB).a(this.f5044a).b(this.h.f4744d).a();
                }
            }
        }
        gwVarB.a((gx) null);
        gwVarB.a((gu) null);
        if (this.j == 1) {
            this.e.a(this.f5044a);
        } else {
            this.e.a(this.f5044a, this.k);
        }
    }

    @Override // com.google.android.gms.internal.ads.gu
    public final void a(int i) {
        a(this.f5044a, 0);
    }

    @Override // com.google.android.gms.internal.ads.hc
    public final void a(Bundle bundle) {
        com.google.android.gms.ads.internal.gmsg.k kVar = this.n;
        if (kVar != null) {
            kVar.a("", bundle);
        }
    }

    public final void a(com.google.android.gms.ads.internal.gmsg.k kVar) {
        this.n = kVar;
    }

    @Override // com.google.android.gms.internal.ads.gx
    public final void a(String str) {
        synchronized (this.f) {
            this.j = 1;
            this.f.notify();
        }
    }

    @Override // com.google.android.gms.internal.ads.gx
    public final void a(String str, int i) {
        synchronized (this.f) {
            this.j = 2;
            this.k = i;
            this.f.notify();
        }
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }

    public final Future d() {
        if (this.m != null) {
            return this.m;
        }
        nd ndVar = (nd) c();
        this.m = ndVar;
        return ndVar;
    }

    public final gr e() {
        gr grVar;
        synchronized (this.f) {
            grVar = this.l;
        }
        return grVar;
    }

    public final bbd f() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.gu
    public final void g() {
        a(this.f5045b.f5117a.f5760c, this.f5047d.a());
    }
}
