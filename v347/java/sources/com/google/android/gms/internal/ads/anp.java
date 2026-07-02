package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anp extends aev<anp> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4293a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ann f4294b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4295c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4296d = null;
    private Integer e = null;

    public anp() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final anp a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4293a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 18:
                    if (this.f4294b == null) {
                        this.f4294b = new ann();
                    }
                    aerVar.a(this.f4294b);
                    break;
                case 24:
                    this.f4295c = Integer.valueOf(aerVar.g());
                    break;
                case 32:
                    this.f4296d = Integer.valueOf(aerVar.g());
                    break;
                case 40:
                    this.e = Integer.valueOf(aerVar.g());
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
        if (this.f4293a != null) {
            iA += aet.b(1, this.f4293a.intValue());
        }
        if (this.f4294b != null) {
            iA += aet.b(2, this.f4294b);
        }
        if (this.f4295c != null) {
            iA += aet.b(3, this.f4295c.intValue());
        }
        if (this.f4296d != null) {
            iA += aet.b(4, this.f4296d.intValue());
        }
        return this.e != null ? iA + aet.b(5, this.e.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4293a != null) {
            aetVar.a(1, this.f4293a.intValue());
        }
        if (this.f4294b != null) {
            aetVar.a(2, this.f4294b);
        }
        if (this.f4295c != null) {
            aetVar.a(3, this.f4295c.intValue());
        }
        if (this.f4296d != null) {
            aetVar.a(4, this.f4296d.intValue());
        }
        if (this.e != null) {
            aetVar.a(5, this.e.intValue());
        }
        super.a(aetVar);
    }
}
