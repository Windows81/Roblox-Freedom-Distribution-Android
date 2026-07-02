package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anu extends aev<anu> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4308a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ann f4309b = null;

    public anu() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final anu a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4308a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 18:
                    if (this.f4309b == null) {
                        this.f4309b = new ann();
                    }
                    aerVar.a(this.f4309b);
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
        if (this.f4308a != null) {
            iA += aet.b(1, this.f4308a.intValue());
        }
        return this.f4309b != null ? iA + aet.b(2, this.f4309b) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4308a != null) {
            aetVar.a(1, this.f4308a.intValue());
        }
        if (this.f4309b != null) {
            aetVar.a(2, this.f4309b);
        }
        super.a(aetVar);
    }
}
