package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afi extends aev<afi> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private afj f3909b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public afh[] f3908a = afh.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3910c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f3911d = null;
    private Integer e = null;

    public afi() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3909b != null) {
            iA += aet.b(1, this.f3909b);
        }
        if (this.f3908a != null && this.f3908a.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.f3908a.length; i++) {
                afh afhVar = this.f3908a[i];
                if (afhVar != null) {
                    iB += aet.b(2, afhVar);
                }
            }
            iA = iB;
        }
        if (this.f3910c != null) {
            iA += aet.b(3, this.f3910c);
        }
        if (this.f3911d != null) {
            iA += aet.b(4, this.f3911d);
        }
        return this.e != null ? iA + aet.b(5, this.e.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    if (this.f3909b == null) {
                        this.f3909b = new afj();
                    }
                    aerVar.a(this.f3909b);
                    break;
                case 18:
                    int iA2 = afe.a(aerVar, 18);
                    int length = this.f3908a == null ? 0 : this.f3908a.length;
                    afh[] afhVarArr = new afh[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f3908a, 0, afhVarArr, 0, length);
                    }
                    while (length < afhVarArr.length - 1) {
                        afhVarArr[length] = new afh();
                        aerVar.a(afhVarArr[length]);
                        aerVar.a();
                        length++;
                    }
                    afhVarArr[length] = new afh();
                    aerVar.a(afhVarArr[length]);
                    this.f3908a = afhVarArr;
                    break;
                case 26:
                    this.f3910c = aerVar.f();
                    break;
                case 34:
                    this.f3911d = aerVar.f();
                    break;
                case 40:
                    this.e = Integer.valueOf(aerVar.c());
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
        if (this.f3909b != null) {
            aetVar.a(1, this.f3909b);
        }
        if (this.f3908a != null && this.f3908a.length > 0) {
            for (int i = 0; i < this.f3908a.length; i++) {
                afh afhVar = this.f3908a[i];
                if (afhVar != null) {
                    aetVar.a(2, afhVar);
                }
            }
        }
        if (this.f3910c != null) {
            aetVar.a(3, this.f3910c);
        }
        if (this.f3911d != null) {
            aetVar.a(4, this.f3911d);
        }
        if (this.e != null) {
            aetVar.a(5, this.e.intValue());
        }
        super.a(aetVar);
    }
}
