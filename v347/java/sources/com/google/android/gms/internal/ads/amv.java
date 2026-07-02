package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class amv extends aev<amv> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4228a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private amt[] f4229b = amt.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4230c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4231d = null;
    private Integer e = null;

    public amv() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final amv a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f4228a = aerVar.e();
                    break;
                case 18:
                    int iA2 = afe.a(aerVar, 18);
                    int length = this.f4229b == null ? 0 : this.f4229b.length;
                    amt[] amtVarArr = new amt[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f4229b, 0, amtVarArr, 0, length);
                    }
                    while (length < amtVarArr.length - 1) {
                        amtVarArr[length] = new amt();
                        aerVar.a(amtVarArr[length]);
                        aerVar.a();
                        length++;
                    }
                    amtVarArr[length] = new amt();
                    aerVar.a(amtVarArr[length]);
                    this.f4229b = amtVarArr;
                    break;
                case 24:
                    int iJ = aerVar.j();
                    try {
                        this.f4230c = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 32:
                    int iJ2 = aerVar.j();
                    try {
                        this.f4231d = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e2) {
                        aerVar.e(iJ2);
                        a(aerVar, iA);
                    }
                    break;
                case 40:
                    int iJ3 = aerVar.j();
                    try {
                        this.e = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e3) {
                        aerVar.e(iJ3);
                        a(aerVar, iA);
                    }
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
    protected final int a() {
        int iA = super.a();
        if (this.f4228a != null) {
            iA += aet.b(1, this.f4228a);
        }
        if (this.f4229b != null && this.f4229b.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.f4229b.length; i++) {
                amt amtVar = this.f4229b[i];
                if (amtVar != null) {
                    iB += aet.b(2, amtVar);
                }
            }
            iA = iB;
        }
        if (this.f4230c != null) {
            iA += aet.b(3, this.f4230c.intValue());
        }
        if (this.f4231d != null) {
            iA += aet.b(4, this.f4231d.intValue());
        }
        return this.e != null ? iA + aet.b(5, this.e.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4228a != null) {
            aetVar.a(1, this.f4228a);
        }
        if (this.f4229b != null && this.f4229b.length > 0) {
            for (int i = 0; i < this.f4229b.length; i++) {
                amt amtVar = this.f4229b[i];
                if (amtVar != null) {
                    aetVar.a(2, amtVar);
                }
            }
        }
        if (this.f4230c != null) {
            aetVar.a(3, this.f4230c.intValue());
        }
        if (this.f4231d != null) {
            aetVar.a(4, this.f4231d.intValue());
        }
        if (this.e != null) {
            aetVar.a(5, this.e.intValue());
        }
        super.a(aetVar);
    }
}
