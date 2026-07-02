package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afn extends aev<afn> {
    private static volatile afn[] f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f3925a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3926b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public afi f3927c = null;
    private afk g = null;
    private Integer h = null;
    private int[] i = afe.f3896a;
    private String j = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Integer f3928d = null;
    public String[] e = afe.f3898c;

    public afn() {
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
    public final com.google.android.gms.internal.ads.afn a(com.google.android.gms.internal.ads.aer r8) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.afn.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.afn");
    }

    public static afn[] b() {
        if (f == null) {
            synchronized (aez.f3892b) {
                if (f == null) {
                    f = new afn[0];
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a() + aet.b(1, this.f3925a.intValue());
        if (this.f3926b != null) {
            iA += aet.b(2, this.f3926b);
        }
        if (this.f3927c != null) {
            iA += aet.b(3, this.f3927c);
        }
        if (this.g != null) {
            iA += aet.b(4, this.g);
        }
        if (this.h != null) {
            iA += aet.b(5, this.h.intValue());
        }
        if (this.i != null && this.i.length > 0) {
            int iA2 = 0;
            for (int i = 0; i < this.i.length; i++) {
                iA2 += aet.a(this.i[i]);
            }
            iA = iA + iA2 + (this.i.length * 1);
        }
        if (this.j != null) {
            iA += aet.b(7, this.j);
        }
        if (this.f3928d != null) {
            iA += aet.b(8, this.f3928d.intValue());
        }
        if (this.e == null || this.e.length <= 0) {
            return iA;
        }
        int iA3 = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.e.length; i3++) {
            String str = this.e[i3];
            if (str != null) {
                i2++;
                iA3 += aet.a(str);
            }
        }
        return iA + iA3 + (i2 * 1);
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        aetVar.a(1, this.f3925a.intValue());
        if (this.f3926b != null) {
            aetVar.a(2, this.f3926b);
        }
        if (this.f3927c != null) {
            aetVar.a(3, this.f3927c);
        }
        if (this.g != null) {
            aetVar.a(4, this.g);
        }
        if (this.h != null) {
            aetVar.a(5, this.h.intValue());
        }
        if (this.i != null && this.i.length > 0) {
            for (int i = 0; i < this.i.length; i++) {
                aetVar.a(6, this.i[i]);
            }
        }
        if (this.j != null) {
            aetVar.a(7, this.j);
        }
        if (this.f3928d != null) {
            aetVar.a(8, this.f3928d.intValue());
        }
        if (this.e != null && this.e.length > 0) {
            for (int i2 = 0; i2 < this.e.length; i2++) {
                String str = this.e[i2];
                if (str != null) {
                    aetVar.a(9, str);
                }
            }
        }
        super.a(aetVar);
    }
}
