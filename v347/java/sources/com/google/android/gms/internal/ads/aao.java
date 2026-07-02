package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class aao extends aev<aao> {
    private static volatile aao[] t;
    public Integer g;
    public Integer k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f3710a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f3711b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f3712c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f3713d = null;
    public Long e = null;
    public Long f = null;
    public Long h = null;
    public Long i = null;
    public Long j = null;
    public Long l = null;
    public Long m = null;
    public Long n = null;
    public Long o = null;
    public Long p = null;
    public Long q = null;
    public Long r = null;
    public Long s = null;
    private Long u = null;
    private Long v = null;

    public aao() {
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final aao a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f3710a = Long.valueOf(aerVar.h());
                    break;
                case 16:
                    this.f3711b = Long.valueOf(aerVar.h());
                    break;
                case 24:
                    this.f3712c = Long.valueOf(aerVar.h());
                    break;
                case 32:
                    this.f3713d = Long.valueOf(aerVar.h());
                    break;
                case 40:
                    this.e = Long.valueOf(aerVar.h());
                    break;
                case 48:
                    this.f = Long.valueOf(aerVar.h());
                    break;
                case 56:
                    int iJ = aerVar.j();
                    try {
                        this.g = Integer.valueOf(yl.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 64:
                    this.h = Long.valueOf(aerVar.h());
                    break;
                case 72:
                    this.i = Long.valueOf(aerVar.h());
                    break;
                case 80:
                    this.j = Long.valueOf(aerVar.h());
                    break;
                case 88:
                    int iJ2 = aerVar.j();
                    try {
                        this.k = Integer.valueOf(yl.a(aerVar.g()));
                    } catch (IllegalArgumentException e2) {
                        aerVar.e(iJ2);
                        a(aerVar, iA);
                    }
                    break;
                case 96:
                    this.l = Long.valueOf(aerVar.h());
                    break;
                case 104:
                    this.m = Long.valueOf(aerVar.h());
                    break;
                case 112:
                    this.n = Long.valueOf(aerVar.h());
                    break;
                case 120:
                    this.o = Long.valueOf(aerVar.h());
                    break;
                case 128:
                    this.p = Long.valueOf(aerVar.h());
                    break;
                case 136:
                    this.q = Long.valueOf(aerVar.h());
                    break;
                case 144:
                    this.r = Long.valueOf(aerVar.h());
                    break;
                case 152:
                    this.s = Long.valueOf(aerVar.h());
                    break;
                case 160:
                    this.u = Long.valueOf(aerVar.h());
                    break;
                case 168:
                    this.v = Long.valueOf(aerVar.h());
                    break;
                default:
                    if (!super.a(aerVar, iA)) {
                    }
                    break;
            }
        }
        return this;
    }

    public static aao[] b() {
        if (t == null) {
            synchronized (aez.f3892b) {
                if (t == null) {
                    t = new aao[0];
                }
            }
        }
        return t;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3710a != null) {
            iA += aet.d(1, this.f3710a.longValue());
        }
        if (this.f3711b != null) {
            iA += aet.d(2, this.f3711b.longValue());
        }
        if (this.f3712c != null) {
            iA += aet.d(3, this.f3712c.longValue());
        }
        if (this.f3713d != null) {
            iA += aet.d(4, this.f3713d.longValue());
        }
        if (this.e != null) {
            iA += aet.d(5, this.e.longValue());
        }
        if (this.f != null) {
            iA += aet.d(6, this.f.longValue());
        }
        if (this.g != null) {
            iA += aet.b(7, this.g.intValue());
        }
        if (this.h != null) {
            iA += aet.d(8, this.h.longValue());
        }
        if (this.i != null) {
            iA += aet.d(9, this.i.longValue());
        }
        if (this.j != null) {
            iA += aet.d(10, this.j.longValue());
        }
        if (this.k != null) {
            iA += aet.b(11, this.k.intValue());
        }
        if (this.l != null) {
            iA += aet.d(12, this.l.longValue());
        }
        if (this.m != null) {
            iA += aet.d(13, this.m.longValue());
        }
        if (this.n != null) {
            iA += aet.d(14, this.n.longValue());
        }
        if (this.o != null) {
            iA += aet.d(15, this.o.longValue());
        }
        if (this.p != null) {
            iA += aet.d(16, this.p.longValue());
        }
        if (this.q != null) {
            iA += aet.d(17, this.q.longValue());
        }
        if (this.r != null) {
            iA += aet.d(18, this.r.longValue());
        }
        if (this.s != null) {
            iA += aet.d(19, this.s.longValue());
        }
        if (this.u != null) {
            iA += aet.d(20, this.u.longValue());
        }
        return this.v != null ? iA + aet.d(21, this.v.longValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f3710a != null) {
            aetVar.b(1, this.f3710a.longValue());
        }
        if (this.f3711b != null) {
            aetVar.b(2, this.f3711b.longValue());
        }
        if (this.f3712c != null) {
            aetVar.b(3, this.f3712c.longValue());
        }
        if (this.f3713d != null) {
            aetVar.b(4, this.f3713d.longValue());
        }
        if (this.e != null) {
            aetVar.b(5, this.e.longValue());
        }
        if (this.f != null) {
            aetVar.b(6, this.f.longValue());
        }
        if (this.g != null) {
            aetVar.a(7, this.g.intValue());
        }
        if (this.h != null) {
            aetVar.b(8, this.h.longValue());
        }
        if (this.i != null) {
            aetVar.b(9, this.i.longValue());
        }
        if (this.j != null) {
            aetVar.b(10, this.j.longValue());
        }
        if (this.k != null) {
            aetVar.a(11, this.k.intValue());
        }
        if (this.l != null) {
            aetVar.b(12, this.l.longValue());
        }
        if (this.m != null) {
            aetVar.b(13, this.m.longValue());
        }
        if (this.n != null) {
            aetVar.b(14, this.n.longValue());
        }
        if (this.o != null) {
            aetVar.b(15, this.o.longValue());
        }
        if (this.p != null) {
            aetVar.b(16, this.p.longValue());
        }
        if (this.q != null) {
            aetVar.b(17, this.q.longValue());
        }
        if (this.r != null) {
            aetVar.b(18, this.r.longValue());
        }
        if (this.s != null) {
            aetVar.b(19, this.s.longValue());
        }
        if (this.u != null) {
            aetVar.b(20, this.u.longValue());
        }
        if (this.v != null) {
            aetVar.b(21, this.v.longValue());
        }
        super.a(aetVar);
    }
}
