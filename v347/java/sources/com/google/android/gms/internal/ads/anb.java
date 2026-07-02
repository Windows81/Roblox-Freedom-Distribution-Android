package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anb extends aev<anb> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4253a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f4254b = afe.f3896a;

    public anb() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final anb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4253a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 16:
                    int iA2 = afe.a(aerVar, 16);
                    int length = this.f4254b == null ? 0 : this.f4254b.length;
                    int[] iArr = new int[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f4254b, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = aerVar.g();
                        aerVar.a();
                        length++;
                    }
                    iArr[length] = aerVar.g();
                    this.f4254b = iArr;
                    break;
                case 18:
                    int iC = aerVar.c(aerVar.g());
                    int iJ2 = aerVar.j();
                    int i = 0;
                    while (aerVar.i() > 0) {
                        aerVar.g();
                        i++;
                    }
                    aerVar.e(iJ2);
                    int length2 = this.f4254b == null ? 0 : this.f4254b.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.f4254b, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = aerVar.g();
                        length2++;
                    }
                    this.f4254b = iArr2;
                    aerVar.d(iC);
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
        if (this.f4253a != null) {
            iA += aet.b(1, this.f4253a.intValue());
        }
        if (this.f4254b == null || this.f4254b.length <= 0) {
            return iA;
        }
        int iA2 = 0;
        for (int i = 0; i < this.f4254b.length; i++) {
            iA2 += aet.a(this.f4254b[i]);
        }
        return iA + iA2 + (this.f4254b.length * 1);
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4253a != null) {
            aetVar.a(1, this.f4253a.intValue());
        }
        if (this.f4254b != null && this.f4254b.length > 0) {
            for (int i = 0; i < this.f4254b.length; i++) {
                aetVar.a(2, this.f4254b[i]);
            }
        }
        super.a(aetVar);
    }
}
