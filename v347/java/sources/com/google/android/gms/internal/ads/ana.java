package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ana extends aev<ana> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4249a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4250b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f4251c = afe.f3896a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private anj f4252d = null;

    public ana() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ana a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f4249a = aerVar.e();
                    break;
                case 16:
                    int iJ = aerVar.j();
                    try {
                        this.f4250b = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 24:
                    int iA2 = afe.a(aerVar, 24);
                    int length = this.f4251c == null ? 0 : this.f4251c.length;
                    int[] iArr = new int[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f4251c, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = aerVar.g();
                        aerVar.a();
                        length++;
                    }
                    iArr[length] = aerVar.g();
                    this.f4251c = iArr;
                    break;
                case 26:
                    int iC = aerVar.c(aerVar.g());
                    int iJ2 = aerVar.j();
                    int i = 0;
                    while (aerVar.i() > 0) {
                        aerVar.g();
                        i++;
                    }
                    aerVar.e(iJ2);
                    int length2 = this.f4251c == null ? 0 : this.f4251c.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.f4251c, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = aerVar.g();
                        length2++;
                    }
                    this.f4251c = iArr2;
                    aerVar.d(iC);
                    break;
                case 34:
                    if (this.f4252d == null) {
                        this.f4252d = new anj();
                    }
                    aerVar.a(this.f4252d);
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
        if (this.f4249a != null) {
            iA += aet.b(1, this.f4249a);
        }
        if (this.f4250b != null) {
            iA += aet.b(2, this.f4250b.intValue());
        }
        if (this.f4251c != null && this.f4251c.length > 0) {
            int iA2 = 0;
            for (int i = 0; i < this.f4251c.length; i++) {
                iA2 += aet.a(this.f4251c[i]);
            }
            iA = iA + iA2 + (this.f4251c.length * 1);
        }
        return this.f4252d != null ? iA + aet.b(4, this.f4252d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4249a != null) {
            aetVar.a(1, this.f4249a);
        }
        if (this.f4250b != null) {
            aetVar.a(2, this.f4250b.intValue());
        }
        if (this.f4251c != null && this.f4251c.length > 0) {
            for (int i = 0; i < this.f4251c.length; i++) {
                aetVar.a(3, this.f4251c[i]);
            }
        }
        if (this.f4252d != null) {
            aetVar.a(4, this.f4252d);
        }
        super.a(aetVar);
    }
}
