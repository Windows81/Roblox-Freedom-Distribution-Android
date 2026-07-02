package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ano extends aev<ano> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ank f4289a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4290b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ann f4291c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private anj f4292d = null;

    public ano() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ano a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    if (this.f4289a == null) {
                        this.f4289a = new ank();
                    }
                    aerVar.a(this.f4289a);
                    break;
                case 16:
                    int iJ = aerVar.j();
                    try {
                        this.f4290b = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 26:
                    if (this.f4291c == null) {
                        this.f4291c = new ann();
                    }
                    aerVar.a(this.f4291c);
                    break;
                case 34:
                    if (this.f4292d == null) {
                        this.f4292d = new anj();
                    }
                    aerVar.a(this.f4292d);
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
        if (this.f4289a != null) {
            iA += aet.b(1, this.f4289a);
        }
        if (this.f4290b != null) {
            iA += aet.b(2, this.f4290b.intValue());
        }
        if (this.f4291c != null) {
            iA += aet.b(3, this.f4291c);
        }
        return this.f4292d != null ? iA + aet.b(4, this.f4292d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4289a != null) {
            aetVar.a(1, this.f4289a);
        }
        if (this.f4290b != null) {
            aetVar.a(2, this.f4290b.intValue());
        }
        if (this.f4291c != null) {
            aetVar.a(3, this.f4291c);
        }
        if (this.f4292d != null) {
            aetVar.a(4, this.f4292d);
        }
        super.a(aetVar);
    }
}
