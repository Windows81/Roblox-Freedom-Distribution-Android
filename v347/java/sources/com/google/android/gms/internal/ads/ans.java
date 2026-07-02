package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ans extends aev<ans> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4301a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ann f4302b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4303c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4304d = null;
    private Integer e = null;
    private Long f = null;

    public ans() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ans a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4301a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 18:
                    if (this.f4302b == null) {
                        this.f4302b = new ann();
                    }
                    aerVar.a(this.f4302b);
                    break;
                case 24:
                    this.f4303c = Integer.valueOf(aerVar.g());
                    break;
                case 32:
                    this.f4304d = Integer.valueOf(aerVar.g());
                    break;
                case 40:
                    this.e = Integer.valueOf(aerVar.g());
                    break;
                case 48:
                    this.f = Long.valueOf(aerVar.h());
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
        if (this.f4301a != null) {
            iA += aet.b(1, this.f4301a.intValue());
        }
        if (this.f4302b != null) {
            iA += aet.b(2, this.f4302b);
        }
        if (this.f4303c != null) {
            iA += aet.b(3, this.f4303c.intValue());
        }
        if (this.f4304d != null) {
            iA += aet.b(4, this.f4304d.intValue());
        }
        if (this.e != null) {
            iA += aet.b(5, this.e.intValue());
        }
        return this.f != null ? iA + aet.c(6, this.f.longValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4301a != null) {
            aetVar.a(1, this.f4301a.intValue());
        }
        if (this.f4302b != null) {
            aetVar.a(2, this.f4302b);
        }
        if (this.f4303c != null) {
            aetVar.a(3, this.f4303c.intValue());
        }
        if (this.f4304d != null) {
            aetVar.a(4, this.f4304d.intValue());
        }
        if (this.e != null) {
            aetVar.a(5, this.e.intValue());
        }
        if (this.f != null) {
            aetVar.a(6, this.f.longValue());
        }
        super.a(aetVar);
    }
}
