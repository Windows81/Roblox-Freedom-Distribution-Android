package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class acq extends aev<acq> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Long f3798a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f3799b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f3800c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f3801d = afe.f3896a;
    private Long e = null;

    public acq() {
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3798a != null) {
            iA += aet.d(1, this.f3798a.longValue());
        }
        if (this.f3799b != null) {
            iA += aet.b(2, this.f3799b.intValue());
        }
        if (this.f3800c != null) {
            this.f3800c.booleanValue();
            iA += aet.b(3) + 1;
        }
        if (this.f3801d != null && this.f3801d.length > 0) {
            int iA2 = 0;
            for (int i = 0; i < this.f3801d.length; i++) {
                iA2 += aet.a(this.f3801d[i]);
            }
            iA = iA + iA2 + (this.f3801d.length * 1);
        }
        return this.e != null ? iA + aet.c(5, this.e.longValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f3798a = Long.valueOf(aerVar.h());
                    break;
                case 16:
                    this.f3799b = Integer.valueOf(aerVar.g());
                    break;
                case 24:
                    this.f3800c = Boolean.valueOf(aerVar.d());
                    break;
                case 32:
                    int iA2 = afe.a(aerVar, 32);
                    int length = this.f3801d == null ? 0 : this.f3801d.length;
                    int[] iArr = new int[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f3801d, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = aerVar.g();
                        aerVar.a();
                        length++;
                    }
                    iArr[length] = aerVar.g();
                    this.f3801d = iArr;
                    break;
                case 34:
                    int iC = aerVar.c(aerVar.g());
                    int iJ = aerVar.j();
                    int i = 0;
                    while (aerVar.i() > 0) {
                        aerVar.g();
                        i++;
                    }
                    aerVar.e(iJ);
                    int length2 = this.f3801d == null ? 0 : this.f3801d.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.f3801d, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = aerVar.g();
                        length2++;
                    }
                    this.f3801d = iArr2;
                    aerVar.d(iC);
                    break;
                case 40:
                    this.e = Long.valueOf(aerVar.h());
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
        if (this.f3798a != null) {
            aetVar.b(1, this.f3798a.longValue());
        }
        if (this.f3799b != null) {
            aetVar.a(2, this.f3799b.intValue());
        }
        if (this.f3800c != null) {
            aetVar.a(3, this.f3800c.booleanValue());
        }
        if (this.f3801d != null && this.f3801d.length > 0) {
            for (int i = 0; i < this.f3801d.length; i++) {
                aetVar.a(4, this.f3801d[i]);
            }
        }
        if (this.e != null) {
            aetVar.a(5, this.e.longValue());
        }
        super.a(aetVar);
    }
}
