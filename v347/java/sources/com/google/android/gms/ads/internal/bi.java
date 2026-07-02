package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.asc;
import com.google.android.gms.internal.ads.ht;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qo;

/* JADX INFO: loaded from: classes.dex */
final class bi implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ij f3051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ht f3052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ bf f3053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ asb f3054d;

    bi(bf bfVar, ij ijVar, ht htVar, asb asbVar) {
        this.f3053c = bfVar;
        this.f3051a = ijVar;
        this.f3052b = htVar;
        this.f3054d = asbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3051a.f5118b.r && this.f3053c.e.B != null) {
            String strA = null;
            if (this.f3051a.f5118b.f5762a != null) {
                aw.e();
                strA = jm.a(this.f3051a.f5118b.f5762a);
            }
            asc ascVar = new asc(this.f3053c, strA, this.f3051a.f5118b.f5763b);
            this.f3053c.e.I = 1;
            try {
                this.f3053c.f2983c = false;
                this.f3053c.e.B.a(ascVar);
                return;
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
                this.f3053c.f2983c = true;
            }
        }
        bu buVar = new bu(this.f3053c.e.f3036c, this.f3052b, this.f3051a.f5118b.E);
        try {
            qd qdVarA = this.f3053c.a(this.f3051a, buVar, this.f3052b);
            qdVarA.setOnTouchListener(new bk(this, buVar));
            qdVarA.setOnClickListener(new bl(this, buVar));
            this.f3053c.e.I = 0;
            ax axVar = this.f3053c.e;
            aw.d();
            axVar.h = com.google.android.gms.internal.ads.ao.a(this.f3053c.e.f3036c, this.f3053c, this.f3051a, this.f3053c.e.f3037d, qdVarA, this.f3053c.j, this.f3053c, this.f3054d);
        } catch (qo e2) {
            jd.b("Could not obtain webview.", e2);
            jm.f5184a.post(new bj(this));
        }
    }
}
