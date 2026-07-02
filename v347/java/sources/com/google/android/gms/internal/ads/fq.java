package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class fq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final bbt f5026a = new bbt();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bbu f5027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.ax f5028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, hd> f5029d = new HashMap();
    private final gv e;
    private final com.google.android.gms.ads.internal.gmsg.k f;
    private final ap g;

    public fq(com.google.android.gms.ads.internal.ax axVar, bbu bbuVar, gv gvVar, com.google.android.gms.ads.internal.gmsg.k kVar, ap apVar) {
        this.f5028c = axVar;
        this.f5027b = bbuVar;
        this.e = gvVar;
        this.f = kVar;
        this.g = apVar;
    }

    public static boolean a(ii iiVar, ii iiVar2) {
        return true;
    }

    public final com.google.android.gms.ads.internal.gmsg.k a() {
        return this.f;
    }

    public final hd a(String str) {
        Exception exc;
        hd hdVar;
        hd hdVar2 = this.f5029d.get(str);
        if (hdVar2 != null) {
            return hdVar2;
        }
        try {
            hdVar = new hd(("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? f5026a : this.f5027b).a(str), this.e);
        } catch (Exception e) {
            exc = e;
            hdVar = hdVar2;
        }
        try {
            this.f5029d.put(str, hdVar);
            return hdVar;
        } catch (Exception e2) {
            exc = e2;
            String strValueOf = String.valueOf(str);
            jd.c(strValueOf.length() != 0 ? "Fail to instantiate adapter ".concat(strValueOf) : new String("Fail to instantiate adapter "), exc);
            return hdVar;
        }
    }

    public final zzaig a(zzaig zzaigVar) {
        if (this.f5028c.j != null && this.f5028c.j.r != null && !TextUtils.isEmpty(this.f5028c.j.r.k)) {
            zzaigVar = new zzaig(this.f5028c.j.r.k, this.f5028c.j.r.l);
        }
        if (this.f5028c.j != null && this.f5028c.j.o != null) {
            com.google.android.gms.ads.internal.aw.x();
            bbn.a(this.f5028c.f3036c, this.f5028c.e.f5784a, this.f5028c.j.o.m, this.f5028c.E, zzaigVar);
        }
        return zzaigVar;
    }

    public final void a(Context context) {
        Iterator<hd> it = this.f5029d.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().a().a(com.google.android.gms.b.b.a(context));
            } catch (RemoteException e) {
                jd.b("Unable to call Adapter.onContextChanged.", e);
            }
        }
    }

    public final void a(boolean z) {
        hd hdVarA = a(this.f5028c.j.q);
        if (hdVarA == null || hdVarA.a() == null) {
            return;
        }
        try {
            hdVarA.a().a(z);
            hdVarA.a().f();
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }

    public final ap b() {
        return this.g;
    }

    public final void c() {
        this.f5028c.I = 0;
        com.google.android.gms.ads.internal.ax axVar = this.f5028c;
        com.google.android.gms.ads.internal.aw.d();
        gy gyVar = new gy(this.f5028c.f3036c, this.f5028c.k, this);
        String strValueOf = String.valueOf(gyVar.getClass().getName());
        jd.b(strValueOf.length() != 0 ? "AdRenderer: ".concat(strValueOf) : new String("AdRenderer: "));
        gyVar.c();
        axVar.h = gyVar;
    }

    public final void d() {
        com.google.android.gms.common.internal.w.b("pause must be called on the main UI thread.");
        Iterator<String> it = this.f5029d.keySet().iterator();
        while (it.hasNext()) {
            try {
                hd hdVar = this.f5029d.get(it.next());
                if (hdVar != null && hdVar.a() != null) {
                    hdVar.a().d();
                }
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    public final void e() {
        com.google.android.gms.common.internal.w.b("resume must be called on the main UI thread.");
        Iterator<String> it = this.f5029d.keySet().iterator();
        while (it.hasNext()) {
            try {
                hd hdVar = this.f5029d.get(it.next());
                if (hdVar != null && hdVar.a() != null) {
                    hdVar.a().e();
                }
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    public final void f() {
        com.google.android.gms.common.internal.w.b("destroy must be called on the main UI thread.");
        Iterator<String> it = this.f5029d.keySet().iterator();
        while (it.hasNext()) {
            try {
                hd hdVar = this.f5029d.get(it.next());
                if (hdVar != null && hdVar.a() != null) {
                    hdVar.a().c();
                }
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    public final void g() {
        if (this.f5028c.j == null || this.f5028c.j.o == null) {
            return;
        }
        com.google.android.gms.ads.internal.aw.x();
        bbn.a(this.f5028c.f3036c, this.f5028c.e.f5784a, this.f5028c.j, this.f5028c.f3035b, false, this.f5028c.j.o.l);
    }

    public final void h() {
        if (this.f5028c.j == null || this.f5028c.j.o == null) {
            return;
        }
        com.google.android.gms.ads.internal.aw.x();
        bbn.a(this.f5028c.f3036c, this.f5028c.e.f5784a, this.f5028c.j, this.f5028c.f3035b, false, this.f5028c.j.o.n);
    }
}
