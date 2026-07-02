package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ams extends aev<ams> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f4218a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4220c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private amu f4221d = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public amv f4219b = null;
    private amt[] e = amt.b();
    private amw f = null;
    private anf g = null;
    private ane h = null;
    private anb i = null;
    private anc j = null;
    private anl[] k = anl.b();

    public ams() {
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
    public final com.google.android.gms.internal.ads.ams a(com.google.android.gms.internal.ads.aer r8) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ams.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.ams");
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4218a != null) {
            iA += aet.b(7, this.f4218a.intValue());
        }
        if (this.f4220c != null) {
            iA += aet.b(8, this.f4220c.intValue());
        }
        if (this.f4221d != null) {
            iA += aet.b(9, this.f4221d);
        }
        if (this.f4219b != null) {
            iA += aet.b(10, this.f4219b);
        }
        if (this.e != null && this.e.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.e.length; i++) {
                amt amtVar = this.e[i];
                if (amtVar != null) {
                    iB += aet.b(11, amtVar);
                }
            }
            iA = iB;
        }
        if (this.f != null) {
            iA += aet.b(12, this.f);
        }
        if (this.g != null) {
            iA += aet.b(13, this.g);
        }
        if (this.h != null) {
            iA += aet.b(14, this.h);
        }
        if (this.i != null) {
            iA += aet.b(15, this.i);
        }
        if (this.j != null) {
            iA += aet.b(16, this.j);
        }
        if (this.k != null && this.k.length > 0) {
            for (int i2 = 0; i2 < this.k.length; i2++) {
                anl anlVar = this.k[i2];
                if (anlVar != null) {
                    iA += aet.b(17, anlVar);
                }
            }
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4218a != null) {
            aetVar.a(7, this.f4218a.intValue());
        }
        if (this.f4220c != null) {
            aetVar.a(8, this.f4220c.intValue());
        }
        if (this.f4221d != null) {
            aetVar.a(9, this.f4221d);
        }
        if (this.f4219b != null) {
            aetVar.a(10, this.f4219b);
        }
        if (this.e != null && this.e.length > 0) {
            for (int i = 0; i < this.e.length; i++) {
                amt amtVar = this.e[i];
                if (amtVar != null) {
                    aetVar.a(11, amtVar);
                }
            }
        }
        if (this.f != null) {
            aetVar.a(12, this.f);
        }
        if (this.g != null) {
            aetVar.a(13, this.g);
        }
        if (this.h != null) {
            aetVar.a(14, this.h);
        }
        if (this.i != null) {
            aetVar.a(15, this.i);
        }
        if (this.j != null) {
            aetVar.a(16, this.j);
        }
        if (this.k != null && this.k.length > 0) {
            for (int i2 = 0; i2 < this.k.length; i2++) {
                anl anlVar = this.k[i2];
                if (anlVar != null) {
                    aetVar.a(17, anlVar);
                }
            }
        }
        super.a(aetVar);
    }
}
