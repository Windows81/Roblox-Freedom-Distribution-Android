package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.ast;
import com.google.android.gms.internal.ads.asv;
import com.google.android.gms.internal.ads.ata;
import com.google.android.gms.internal.ads.ath;
import com.google.android.gms.internal.ads.jd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ag implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ath f2996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ int f2997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ List f2998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ ad f2999d;

    ag(ad adVar, ath athVar, int i, List list) {
        this.f2999d = adVar;
        this.f2996a = athVar;
        this.f2997b = i;
        this.f2998c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if ((this.f2996a instanceof asv) && this.f2999d.e.t != null) {
                this.f2999d.f2983c = this.f2997b != this.f2998c.size() + (-1);
                ata ataVarB = ad.b(this.f2996a);
                this.f2999d.e.t.a(ataVarB);
                this.f2999d.a(ataVarB.n());
            } else if ((this.f2996a instanceof asv) && this.f2999d.e.s != null) {
                this.f2999d.f2983c = this.f2997b != this.f2998c.size() + (-1);
                asv asvVar = (asv) this.f2996a;
                this.f2999d.e.s.a(asvVar);
                this.f2999d.a(asvVar.j());
            } else if ((this.f2996a instanceof ast) && this.f2999d.e.t != null) {
                this.f2999d.f2983c = this.f2997b != this.f2998c.size() + (-1);
                ata ataVarB2 = ad.b(this.f2996a);
                this.f2999d.e.t.a(ataVarB2);
                this.f2999d.a(ataVarB2.n());
            } else if (!(this.f2996a instanceof ast) || this.f2999d.e.r == null) {
                this.f2999d.a(3, this.f2997b != this.f2998c.size() + (-1));
            } else {
                this.f2999d.f2983c = this.f2997b != this.f2998c.size() + (-1);
                ast astVar = (ast) this.f2996a;
                this.f2999d.e.r.a(astVar);
                this.f2999d.a(astVar.j());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
