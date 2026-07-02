package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class amx extends aev<amx> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4236a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anj f4238c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4239d = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ank f4237b = null;
    private Integer e = null;
    private Integer f = null;
    private Integer g = null;
    private Integer h = null;

    public amx() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final amx a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f4236a = aerVar.e();
                    break;
                case 18:
                    if (this.f4238c == null) {
                        this.f4238c = new anj();
                    }
                    aerVar.a(this.f4238c);
                    break;
                case 24:
                    this.f4239d = Integer.valueOf(aerVar.g());
                    break;
                case 34:
                    if (this.f4237b == null) {
                        this.f4237b = new ank();
                    }
                    aerVar.a(this.f4237b);
                    break;
                case 40:
                    this.e = Integer.valueOf(aerVar.g());
                    break;
                case 48:
                    int iJ = aerVar.j();
                    try {
                        this.f = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 56:
                    int iJ2 = aerVar.j();
                    try {
                        this.g = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e2) {
                        aerVar.e(iJ2);
                        a(aerVar, iA);
                    }
                    break;
                case 64:
                    int iJ3 = aerVar.j();
                    try {
                        this.h = Integer.valueOf(amr.a(aerVar.g()));
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
        if (this.f4236a != null) {
            iA += aet.b(1, this.f4236a);
        }
        if (this.f4238c != null) {
            iA += aet.b(2, this.f4238c);
        }
        if (this.f4239d != null) {
            iA += aet.b(3, this.f4239d.intValue());
        }
        if (this.f4237b != null) {
            iA += aet.b(4, this.f4237b);
        }
        if (this.e != null) {
            iA += aet.b(5, this.e.intValue());
        }
        if (this.f != null) {
            iA += aet.b(6, this.f.intValue());
        }
        if (this.g != null) {
            iA += aet.b(7, this.g.intValue());
        }
        return this.h != null ? iA + aet.b(8, this.h.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4236a != null) {
            aetVar.a(1, this.f4236a);
        }
        if (this.f4238c != null) {
            aetVar.a(2, this.f4238c);
        }
        if (this.f4239d != null) {
            aetVar.a(3, this.f4239d.intValue());
        }
        if (this.f4237b != null) {
            aetVar.a(4, this.f4237b);
        }
        if (this.e != null) {
            aetVar.a(5, this.e.intValue());
        }
        if (this.f != null) {
            aetVar.a(6, this.f.intValue());
        }
        if (this.g != null) {
            aetVar.a(7, this.g.intValue());
        }
        if (this.h != null) {
            aetVar.a(8, this.h.intValue());
        }
        super.a(aetVar);
    }
}
