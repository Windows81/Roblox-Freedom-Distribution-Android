package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.aoh;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aql {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bbt f4364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aod f4365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f4366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f4367d;
    private final aoq e;
    private anv f;
    private com.google.android.gms.ads.a g;
    private com.google.android.gms.ads.d[] h;
    private com.google.android.gms.ads.doubleclick.a i;
    private com.google.android.gms.ads.g j;
    private apf k;
    private com.google.android.gms.ads.doubleclick.c l;
    private com.google.android.gms.ads.k m;
    private String n;
    private ViewGroup o;
    private int p;
    private boolean q;

    public aql(ViewGroup viewGroup) {
        this(viewGroup, null, false, aod.f4317a, 0);
    }

    public aql(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, aod.f4317a, i);
    }

    public aql(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, aod.f4317a, 0);
    }

    private aql(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, aod aodVar, int i) {
        this(viewGroup, attributeSet, z, aodVar, null, i);
    }

    private aql(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, aod aodVar, apf apfVar, int i) {
        this.f4364a = new bbt();
        this.f4367d = new com.google.android.gms.ads.j();
        this.e = new aqm(this);
        this.o = viewGroup;
        this.f4365b = aodVar;
        this.k = null;
        this.f4366c = new AtomicBoolean(false);
        this.p = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                aog aogVar = new aog(context, attributeSet);
                this.h = aogVar.a(z);
                this.n = aogVar.a();
                if (viewGroup.isInEditMode()) {
                    ly lyVarA = aoo.a();
                    com.google.android.gms.ads.d dVar = this.h[0];
                    int i2 = this.p;
                    zzjn zzjnVar = new zzjn(context, dVar);
                    zzjnVar.j = a(i2);
                    lyVarA.a(viewGroup, zzjnVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                aoo.a().a(viewGroup, new zzjn(context, com.google.android.gms.ads.d.f2953a), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzjn a(Context context, com.google.android.gms.ads.d[] dVarArr, int i) {
        zzjn zzjnVar = new zzjn(context, dVarArr);
        zzjnVar.j = a(i);
        return zzjnVar;
    }

    private static boolean a(int i) {
        return i == 1;
    }

    public final void a() {
        try {
            if (this.k != null) {
                this.k.i();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(com.google.android.gms.ads.a aVar) {
        this.g = aVar;
        this.e.a(aVar);
    }

    public final void a(com.google.android.gms.ads.doubleclick.a aVar) {
        try {
            this.i = aVar;
            if (this.k != null) {
                this.k.a(aVar != null ? new aof(aVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(com.google.android.gms.ads.doubleclick.c cVar) {
        this.l = cVar;
        try {
            if (this.k != null) {
                this.k.a(cVar != null ? new asl(cVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(com.google.android.gms.ads.g gVar) {
        this.j = gVar;
        try {
            if (this.k != null) {
                this.k.a(this.j == null ? null : this.j.a());
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(com.google.android.gms.ads.k kVar) {
        this.m = kVar;
        try {
            if (this.k != null) {
                this.k.a(kVar == null ? null : new zzmu(kVar));
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(anv anvVar) {
        try {
            this.f = anvVar;
            if (this.k != null) {
                this.k.a(anvVar != null ? new anw(anvVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(aqj aqjVar) {
        try {
            if (this.k == null) {
                if ((this.h == null || this.n == null) && this.k == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.o.getContext();
                zzjn zzjnVarA = a(context, this.h, this.p);
                this.k = "search_v2".equals(zzjnVarA.f5803a) ? (apf) aoh.a(context, false, (aoh.a) new aoj(aoo.b(), context, zzjnVarA, this.n)) : (apf) aoh.a(context, false, (aoh.a) new aoi(aoo.b(), context, zzjnVarA, this.n, this.f4364a));
                this.k.a(new anx(this.e));
                if (this.f != null) {
                    this.k.a(new anw(this.f));
                }
                if (this.i != null) {
                    this.k.a(new aof(this.i));
                }
                if (this.l != null) {
                    this.k.a(new asl(this.l));
                }
                if (this.j != null) {
                    this.k.a(this.j.a());
                }
                if (this.m != null) {
                    this.k.a(new zzmu(this.m));
                }
                this.k.b(this.q);
                try {
                    com.google.android.gms.b.a aVarJ = this.k.j();
                    if (aVarJ != null) {
                        this.o.addView((View) com.google.android.gms.b.b.a(aVarJ));
                    }
                } catch (RemoteException e) {
                    mj.d("#007 Could not call remote method.", e);
                }
            }
            if (this.k.b(aod.a(this.o.getContext(), aqjVar))) {
                this.f4364a.a(aqjVar.j());
            }
        } catch (RemoteException e2) {
            mj.d("#007 Could not call remote method.", e2);
        }
    }

    public final void a(String str) {
        if (this.n != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.n = str;
    }

    public final void a(boolean z) {
        this.q = z;
        try {
            if (this.k != null) {
                this.k.b(this.q);
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void a(com.google.android.gms.ads.d... dVarArr) {
        if (this.h != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        b(dVarArr);
    }

    public final com.google.android.gms.ads.a b() {
        return this.g;
    }

    public final void b(com.google.android.gms.ads.d... dVarArr) {
        this.h = dVarArr;
        try {
            if (this.k != null) {
                this.k.a(a(this.o.getContext(), this.h, this.p));
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
        this.o.requestLayout();
    }

    public final com.google.android.gms.ads.d c() {
        zzjn zzjnVarK;
        try {
            if (this.k != null && (zzjnVarK = this.k.k()) != null) {
                return zzjnVarK.b();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
        if (this.h != null) {
            return this.h[0];
        }
        return null;
    }

    public final com.google.android.gms.ads.d[] d() {
        return this.h;
    }

    public final String e() {
        if (this.n == null && this.k != null) {
            try {
                this.n = this.k.C();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
        return this.n;
    }

    public final com.google.android.gms.ads.doubleclick.a f() {
        return this.i;
    }

    public final com.google.android.gms.ads.doubleclick.c g() {
        return this.l;
    }

    public final void h() {
        try {
            if (this.k != null) {
                this.k.n();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final void i() {
        try {
            if (this.k != null) {
                this.k.o();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final String j() {
        try {
            if (this.k != null) {
                return this.k.p_();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
        return null;
    }

    public final com.google.android.gms.ads.j k() {
        return this.f4367d;
    }

    public final aqc l() {
        if (this.k == null) {
            return null;
        }
        try {
            return this.k.s();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final com.google.android.gms.ads.k m() {
        return this.m;
    }
}
