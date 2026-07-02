package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anf extends aev<anf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4263a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4264b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4265c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4266d = null;
    private Integer e = null;
    private Integer f = null;
    private Integer g = null;
    private Integer h = null;
    private Integer i = null;
    private Integer j = null;
    private ang k = null;

    public anf() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final anf a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4263a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 16:
                    int iJ2 = aerVar.j();
                    try {
                        this.f4264b = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e2) {
                        aerVar.e(iJ2);
                        a(aerVar, iA);
                    }
                    break;
                case 24:
                    this.f4265c = Integer.valueOf(aerVar.g());
                    break;
                case 32:
                    this.f4266d = Integer.valueOf(aerVar.g());
                    break;
                case 40:
                    this.e = Integer.valueOf(aerVar.g());
                    break;
                case 48:
                    this.f = Integer.valueOf(aerVar.g());
                    break;
                case 56:
                    this.g = Integer.valueOf(aerVar.g());
                    break;
                case 64:
                    this.h = Integer.valueOf(aerVar.g());
                    break;
                case 72:
                    this.i = Integer.valueOf(aerVar.g());
                    break;
                case 80:
                    this.j = Integer.valueOf(aerVar.g());
                    break;
                case 90:
                    if (this.k == null) {
                        this.k = new ang();
                    }
                    aerVar.a(this.k);
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
        if (this.f4263a != null) {
            iA += aet.b(1, this.f4263a.intValue());
        }
        if (this.f4264b != null) {
            iA += aet.b(2, this.f4264b.intValue());
        }
        if (this.f4265c != null) {
            iA += aet.b(3, this.f4265c.intValue());
        }
        if (this.f4266d != null) {
            iA += aet.b(4, this.f4266d.intValue());
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
        if (this.h != null) {
            iA += aet.b(8, this.h.intValue());
        }
        if (this.i != null) {
            iA += aet.b(9, this.i.intValue());
        }
        if (this.j != null) {
            iA += aet.b(10, this.j.intValue());
        }
        return this.k != null ? iA + aet.b(11, this.k) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4263a != null) {
            aetVar.a(1, this.f4263a.intValue());
        }
        if (this.f4264b != null) {
            aetVar.a(2, this.f4264b.intValue());
        }
        if (this.f4265c != null) {
            aetVar.a(3, this.f4265c.intValue());
        }
        if (this.f4266d != null) {
            aetVar.a(4, this.f4266d.intValue());
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
        if (this.i != null) {
            aetVar.a(9, this.i.intValue());
        }
        if (this.j != null) {
            aetVar.a(10, this.j.intValue());
        }
        if (this.k != null) {
            aetVar.a(11, this.k);
        }
        super.a(aetVar);
    }
}
