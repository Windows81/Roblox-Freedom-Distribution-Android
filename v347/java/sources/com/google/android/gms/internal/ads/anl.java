package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anl extends aev<anl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile anl[] f4281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private anp f4282b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ans f4283c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ant f4284d = null;
    private anu e = null;
    private anm f = null;
    private anq g = null;
    private ano h = null;
    private Integer i = null;
    private Integer j = null;
    private anj k = null;
    private Integer l = null;
    private Integer m = null;
    private Integer n = null;
    private Integer o = null;
    private Integer p = null;
    private Long q = null;

    public anl() {
        this.Y = null;
        this.Z = -1;
    }

    public static anl[] b() {
        if (f4281a == null) {
            synchronized (aez.f3892b) {
                if (f4281a == null) {
                    f4281a = new anl[0];
                }
            }
        }
        return f4281a;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4282b != null) {
            iA += aet.b(5, this.f4282b);
        }
        if (this.f4283c != null) {
            iA += aet.b(6, this.f4283c);
        }
        if (this.f4284d != null) {
            iA += aet.b(7, this.f4284d);
        }
        if (this.e != null) {
            iA += aet.b(8, this.e);
        }
        if (this.f != null) {
            iA += aet.b(9, this.f);
        }
        if (this.g != null) {
            iA += aet.b(10, this.g);
        }
        if (this.h != null) {
            iA += aet.b(11, this.h);
        }
        if (this.i != null) {
            iA += aet.b(12, this.i.intValue());
        }
        if (this.j != null) {
            iA += aet.b(13, this.j.intValue());
        }
        if (this.k != null) {
            iA += aet.b(14, this.k);
        }
        if (this.l != null) {
            iA += aet.b(15, this.l.intValue());
        }
        if (this.m != null) {
            iA += aet.b(16, this.m.intValue());
        }
        if (this.n != null) {
            iA += aet.b(17, this.n.intValue());
        }
        if (this.o != null) {
            iA += aet.b(18, this.o.intValue());
        }
        if (this.p != null) {
            iA += aet.b(19, this.p.intValue());
        }
        return this.q != null ? iA + aet.c(20, this.q.longValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 42:
                    if (this.f4282b == null) {
                        this.f4282b = new anp();
                    }
                    aerVar.a(this.f4282b);
                    break;
                case 50:
                    if (this.f4283c == null) {
                        this.f4283c = new ans();
                    }
                    aerVar.a(this.f4283c);
                    break;
                case 58:
                    if (this.f4284d == null) {
                        this.f4284d = new ant();
                    }
                    aerVar.a(this.f4284d);
                    break;
                case 66:
                    if (this.e == null) {
                        this.e = new anu();
                    }
                    aerVar.a(this.e);
                    break;
                case 74:
                    if (this.f == null) {
                        this.f = new anm();
                    }
                    aerVar.a(this.f);
                    break;
                case 82:
                    if (this.g == null) {
                        this.g = new anq();
                    }
                    aerVar.a(this.g);
                    break;
                case 90:
                    if (this.h == null) {
                        this.h = new ano();
                    }
                    aerVar.a(this.h);
                    break;
                case 96:
                    this.i = Integer.valueOf(aerVar.g());
                    break;
                case 104:
                    this.j = Integer.valueOf(aerVar.g());
                    break;
                case 114:
                    if (this.k == null) {
                        this.k = new anj();
                    }
                    aerVar.a(this.k);
                    break;
                case 120:
                    this.l = Integer.valueOf(aerVar.g());
                    break;
                case 128:
                    this.m = Integer.valueOf(aerVar.g());
                    break;
                case 136:
                    this.n = Integer.valueOf(aerVar.g());
                    break;
                case 144:
                    this.o = Integer.valueOf(aerVar.g());
                    break;
                case 152:
                    this.p = Integer.valueOf(aerVar.g());
                    break;
                case 160:
                    this.q = Long.valueOf(aerVar.h());
                    break;
                default:
                    if (!super.a(aerVar, iA)) {
                    }
                    break;
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4282b != null) {
            aetVar.a(5, this.f4282b);
        }
        if (this.f4283c != null) {
            aetVar.a(6, this.f4283c);
        }
        if (this.f4284d != null) {
            aetVar.a(7, this.f4284d);
        }
        if (this.e != null) {
            aetVar.a(8, this.e);
        }
        if (this.f != null) {
            aetVar.a(9, this.f);
        }
        if (this.g != null) {
            aetVar.a(10, this.g);
        }
        if (this.h != null) {
            aetVar.a(11, this.h);
        }
        if (this.i != null) {
            aetVar.a(12, this.i.intValue());
        }
        if (this.j != null) {
            aetVar.a(13, this.j.intValue());
        }
        if (this.k != null) {
            aetVar.a(14, this.k);
        }
        if (this.l != null) {
            aetVar.a(15, this.l.intValue());
        }
        if (this.m != null) {
            aetVar.a(16, this.m.intValue());
        }
        if (this.n != null) {
            aetVar.a(17, this.n.intValue());
        }
        if (this.o != null) {
            aetVar.a(18, this.o.intValue());
        }
        if (this.p != null) {
            aetVar.a(19, this.p.intValue());
        }
        if (this.q != null) {
            aetVar.a(20, this.q.longValue());
        }
        super.a(aetVar);
    }
}
