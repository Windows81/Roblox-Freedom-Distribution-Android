package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class aff extends aev<aff> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f3900a = null;
    private Integer k = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3901b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3902c = null;
    private String l = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public afg f3903d = null;
    public afn[] e = afn.b();
    public String f = null;
    public afm g = null;
    private Boolean m = null;
    private String[] n = afe.f3898c;
    private String o = null;
    private Boolean p = null;
    private Boolean q = null;
    private byte[] r = null;
    public afo h = null;
    public String[] i = afe.f3898c;
    public String[] j = afe.f3898c;

    public aff() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        return r7;
     */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.aff a(com.google.android.gms.internal.ads.aer r8) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 562
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aff.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.aff");
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3901b != null) {
            iA += aet.b(1, this.f3901b);
        }
        if (this.f3902c != null) {
            iA += aet.b(2, this.f3902c);
        }
        if (this.l != null) {
            iA += aet.b(3, this.l);
        }
        if (this.e != null && this.e.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.e.length; i++) {
                afn afnVar = this.e[i];
                if (afnVar != null) {
                    iB += aet.b(4, afnVar);
                }
            }
            iA = iB;
        }
        if (this.m != null) {
            this.m.booleanValue();
            iA += aet.b(5) + 1;
        }
        if (this.n != null && this.n.length > 0) {
            int iA2 = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.n.length; i3++) {
                String str = this.n[i3];
                if (str != null) {
                    i2++;
                    iA2 += aet.a(str);
                }
            }
            iA = iA + iA2 + (i2 * 1);
        }
        if (this.o != null) {
            iA += aet.b(7, this.o);
        }
        if (this.p != null) {
            this.p.booleanValue();
            iA += aet.b(8) + 1;
        }
        if (this.q != null) {
            this.q.booleanValue();
            iA += aet.b(9) + 1;
        }
        if (this.f3900a != null) {
            iA += aet.b(10, this.f3900a.intValue());
        }
        if (this.k != null) {
            iA += aet.b(11, this.k.intValue());
        }
        if (this.f3903d != null) {
            iA += aet.b(12, this.f3903d);
        }
        if (this.f != null) {
            iA += aet.b(13, this.f);
        }
        if (this.g != null) {
            iA += aet.b(14, this.g);
        }
        if (this.r != null) {
            iA += aet.b(15, this.r);
        }
        if (this.h != null) {
            iA += aet.b(17, this.h);
        }
        if (this.i != null && this.i.length > 0) {
            int iA3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.i.length; i5++) {
                String str2 = this.i[i5];
                if (str2 != null) {
                    i4++;
                    iA3 += aet.a(str2);
                }
            }
            iA = iA + iA3 + (i4 * 2);
        }
        if (this.j == null || this.j.length <= 0) {
            return iA;
        }
        int iA4 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < this.j.length; i7++) {
            String str3 = this.j[i7];
            if (str3 != null) {
                i6++;
                iA4 += aet.a(str3);
            }
        }
        return iA + iA4 + (i6 * 2);
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f3901b != null) {
            aetVar.a(1, this.f3901b);
        }
        if (this.f3902c != null) {
            aetVar.a(2, this.f3902c);
        }
        if (this.l != null) {
            aetVar.a(3, this.l);
        }
        if (this.e != null && this.e.length > 0) {
            for (int i = 0; i < this.e.length; i++) {
                afn afnVar = this.e[i];
                if (afnVar != null) {
                    aetVar.a(4, afnVar);
                }
            }
        }
        if (this.m != null) {
            aetVar.a(5, this.m.booleanValue());
        }
        if (this.n != null && this.n.length > 0) {
            for (int i2 = 0; i2 < this.n.length; i2++) {
                String str = this.n[i2];
                if (str != null) {
                    aetVar.a(6, str);
                }
            }
        }
        if (this.o != null) {
            aetVar.a(7, this.o);
        }
        if (this.p != null) {
            aetVar.a(8, this.p.booleanValue());
        }
        if (this.q != null) {
            aetVar.a(9, this.q.booleanValue());
        }
        if (this.f3900a != null) {
            aetVar.a(10, this.f3900a.intValue());
        }
        if (this.k != null) {
            aetVar.a(11, this.k.intValue());
        }
        if (this.f3903d != null) {
            aetVar.a(12, this.f3903d);
        }
        if (this.f != null) {
            aetVar.a(13, this.f);
        }
        if (this.g != null) {
            aetVar.a(14, this.g);
        }
        if (this.r != null) {
            aetVar.a(15, this.r);
        }
        if (this.h != null) {
            aetVar.a(17, this.h);
        }
        if (this.i != null && this.i.length > 0) {
            for (int i3 = 0; i3 < this.i.length; i3++) {
                String str2 = this.i[i3];
                if (str2 != null) {
                    aetVar.a(20, str2);
                }
            }
        }
        if (this.j != null && this.j.length > 0) {
            for (int i4 = 0; i4 < this.j.length; i4++) {
                String str3 = this.j[i4];
                if (str3 != null) {
                    aetVar.a(21, str3);
                }
            }
        }
        super.a(aetVar);
    }
}
