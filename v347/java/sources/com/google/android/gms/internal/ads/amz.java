package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amz extends aev<amz> {
    private Integer e = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4244a = null;
    private Integer f = null;
    private Integer g = null;
    private ank h = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f4245b = afe.f3897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public amx f4246c = null;
    private amy i = null;
    private and j = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ams f4247d = null;

    public amz() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final amz a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 72:
                    this.e = Integer.valueOf(aerVar.g());
                    break;
                case 82:
                    this.f4244a = aerVar.e();
                    break;
                case 88:
                    this.f = Integer.valueOf(aerVar.g());
                    break;
                case 96:
                    int iJ = aerVar.j();
                    try {
                        this.g = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 106:
                    if (this.h == null) {
                        this.h = new ank();
                    }
                    aerVar.a(this.h);
                    break;
                case 112:
                    int iA2 = afe.a(aerVar, 112);
                    int length = this.f4245b == null ? 0 : this.f4245b.length;
                    long[] jArr = new long[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f4245b, 0, jArr, 0, length);
                    }
                    while (length < jArr.length - 1) {
                        jArr[length] = aerVar.h();
                        aerVar.a();
                        length++;
                    }
                    jArr[length] = aerVar.h();
                    this.f4245b = jArr;
                    break;
                case 114:
                    int iC = aerVar.c(aerVar.g());
                    int iJ2 = aerVar.j();
                    int i = 0;
                    while (aerVar.i() > 0) {
                        aerVar.h();
                        i++;
                    }
                    aerVar.e(iJ2);
                    int length2 = this.f4245b == null ? 0 : this.f4245b.length;
                    long[] jArr2 = new long[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.f4245b, 0, jArr2, 0, length2);
                    }
                    while (length2 < jArr2.length) {
                        jArr2[length2] = aerVar.h();
                        length2++;
                    }
                    this.f4245b = jArr2;
                    aerVar.d(iC);
                    break;
                case 122:
                    if (this.f4246c == null) {
                        this.f4246c = new amx();
                    }
                    aerVar.a(this.f4246c);
                    break;
                case 130:
                    if (this.i == null) {
                        this.i = new amy();
                    }
                    aerVar.a(this.i);
                    break;
                case 138:
                    if (this.j == null) {
                        this.j = new and();
                    }
                    aerVar.a(this.j);
                    break;
                case 146:
                    if (this.f4247d == null) {
                        this.f4247d = new ams();
                    }
                    aerVar.a(this.f4247d);
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
        if (this.e != null) {
            iA += aet.b(9, this.e.intValue());
        }
        if (this.f4244a != null) {
            iA += aet.b(10, this.f4244a);
        }
        if (this.f != null) {
            iA += aet.d(this.f.intValue()) + aet.b(11);
        }
        if (this.g != null) {
            iA += aet.b(12, this.g.intValue());
        }
        if (this.h != null) {
            iA += aet.b(13, this.h);
        }
        if (this.f4245b != null && this.f4245b.length > 0) {
            int iA2 = 0;
            for (int i = 0; i < this.f4245b.length; i++) {
                iA2 += aet.a(this.f4245b[i]);
            }
            iA = iA + iA2 + (this.f4245b.length * 1);
        }
        if (this.f4246c != null) {
            iA += aet.b(15, this.f4246c);
        }
        if (this.i != null) {
            iA += aet.b(16, this.i);
        }
        if (this.j != null) {
            iA += aet.b(17, this.j);
        }
        return this.f4247d != null ? iA + aet.b(18, this.f4247d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.e != null) {
            aetVar.a(9, this.e.intValue());
        }
        if (this.f4244a != null) {
            aetVar.a(10, this.f4244a);
        }
        if (this.f != null) {
            int iIntValue = this.f.intValue();
            aetVar.c(11, 0);
            aetVar.c(iIntValue);
        }
        if (this.g != null) {
            aetVar.a(12, this.g.intValue());
        }
        if (this.h != null) {
            aetVar.a(13, this.h);
        }
        if (this.f4245b != null && this.f4245b.length > 0) {
            for (int i = 0; i < this.f4245b.length; i++) {
                aetVar.a(14, this.f4245b[i]);
            }
        }
        if (this.f4246c != null) {
            aetVar.a(15, this.f4246c);
        }
        if (this.i != null) {
            aetVar.a(16, this.i);
        }
        if (this.j != null) {
            aetVar.a(17, this.j);
        }
        if (this.f4247d != null) {
            aetVar.a(18, this.f4247d);
        }
        super.a(aetVar);
    }
}
