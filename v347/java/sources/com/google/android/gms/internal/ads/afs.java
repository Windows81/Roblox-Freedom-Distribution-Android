package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afs extends aev<afs> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[][] f3934a = afe.f3899d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f3935b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f3936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f3937d;

    public afs() {
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final afs a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    int iA2 = afe.a(aerVar, 10);
                    int length = this.f3934a == null ? 0 : this.f3934a.length;
                    byte[][] bArr = new byte[iA2 + length][];
                    if (length != 0) {
                        System.arraycopy(this.f3934a, 0, bArr, 0, length);
                    }
                    while (length < bArr.length - 1) {
                        bArr[length] = aerVar.f();
                        aerVar.a();
                        length++;
                    }
                    bArr[length] = aerVar.f();
                    this.f3934a = bArr;
                    break;
                case 18:
                    this.f3935b = aerVar.f();
                    break;
                case 24:
                    int iJ = aerVar.j();
                    try {
                        this.f3937d = Integer.valueOf(yl.b(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 32:
                    int iJ2 = aerVar.j();
                    try {
                        this.f3936c = Integer.valueOf(yl.c(aerVar.g()));
                    } catch (IllegalArgumentException e2) {
                        aerVar.e(iJ2);
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
        int iB;
        int iA = super.a();
        if (this.f3934a == null || this.f3934a.length <= 0) {
            iB = iA;
        } else {
            int iB2 = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.f3934a.length; i2++) {
                byte[] bArr = this.f3934a[i2];
                if (bArr != null) {
                    i++;
                    iB2 += aet.b(bArr);
                }
            }
            iB = iA + iB2 + (i * 1);
        }
        if (this.f3935b != null) {
            iB += aet.b(2, this.f3935b);
        }
        if (this.f3937d != null) {
            iB += aet.b(3, this.f3937d.intValue());
        }
        return this.f3936c != null ? iB + aet.b(4, this.f3936c.intValue()) : iB;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f3934a != null && this.f3934a.length > 0) {
            for (int i = 0; i < this.f3934a.length; i++) {
                byte[] bArr = this.f3934a[i];
                if (bArr != null) {
                    aetVar.a(1, bArr);
                }
            }
        }
        if (this.f3935b != null) {
            aetVar.a(2, this.f3935b);
        }
        if (this.f3937d != null) {
            aetVar.a(3, this.f3937d.intValue());
        }
        if (this.f3936c != null) {
            aetVar.a(4, this.f3936c.intValue());
        }
        super.a(aetVar);
    }
}
