package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afk extends aev<afk> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private afl f3915a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private afh[] f3916b = afh.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3917c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f3918d = null;
    private Integer e = null;
    private byte[] f = null;

    public afk() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3915a != null) {
            iA += aet.b(1, this.f3915a);
        }
        if (this.f3916b != null && this.f3916b.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.f3916b.length; i++) {
                afh afhVar = this.f3916b[i];
                if (afhVar != null) {
                    iB += aet.b(2, afhVar);
                }
            }
            iA = iB;
        }
        if (this.f3917c != null) {
            iA += aet.b(3, this.f3917c);
        }
        if (this.f3918d != null) {
            iA += aet.b(4, this.f3918d);
        }
        if (this.e != null) {
            iA += aet.b(5, this.e.intValue());
        }
        return this.f != null ? iA + aet.b(6, this.f) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    if (this.f3915a == null) {
                        this.f3915a = new afl();
                    }
                    aerVar.a(this.f3915a);
                    break;
                case 18:
                    int iA2 = afe.a(aerVar, 18);
                    int length = this.f3916b == null ? 0 : this.f3916b.length;
                    afh[] afhVarArr = new afh[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f3916b, 0, afhVarArr, 0, length);
                    }
                    while (length < afhVarArr.length - 1) {
                        afhVarArr[length] = new afh();
                        aerVar.a(afhVarArr[length]);
                        aerVar.a();
                        length++;
                    }
                    afhVarArr[length] = new afh();
                    aerVar.a(afhVarArr[length]);
                    this.f3916b = afhVarArr;
                    break;
                case 26:
                    this.f3917c = aerVar.f();
                    break;
                case 34:
                    this.f3918d = aerVar.f();
                    break;
                case 40:
                    this.e = Integer.valueOf(aerVar.c());
                    break;
                case 50:
                    this.f = aerVar.f();
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
        if (this.f3915a != null) {
            aetVar.a(1, this.f3915a);
        }
        if (this.f3916b != null && this.f3916b.length > 0) {
            for (int i = 0; i < this.f3916b.length; i++) {
                afh afhVar = this.f3916b[i];
                if (afhVar != null) {
                    aetVar.a(2, afhVar);
                }
            }
        }
        if (this.f3917c != null) {
            aetVar.a(3, this.f3917c);
        }
        if (this.f3918d != null) {
            aetVar.a(4, this.f3918d);
        }
        if (this.e != null) {
            aetVar.a(5, this.e.intValue());
        }
        if (this.f != null) {
            aetVar.a(6, this.f);
        }
        super.a(aetVar);
    }
}
