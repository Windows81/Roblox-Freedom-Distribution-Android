package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anm extends aev<anm> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4285a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ann f4286b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anj f4287c = null;

    public anm() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final anm a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4285a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 18:
                    if (this.f4286b == null) {
                        this.f4286b = new ann();
                    }
                    aerVar.a(this.f4286b);
                    break;
                case 26:
                    if (this.f4287c == null) {
                        this.f4287c = new anj();
                    }
                    aerVar.a(this.f4287c);
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
        if (this.f4285a != null) {
            iA += aet.b(1, this.f4285a.intValue());
        }
        if (this.f4286b != null) {
            iA += aet.b(2, this.f4286b);
        }
        return this.f4287c != null ? iA + aet.b(3, this.f4287c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4285a != null) {
            aetVar.a(1, this.f4285a.intValue());
        }
        if (this.f4286b != null) {
            aetVar.a(2, this.f4286b);
        }
        if (this.f4287c != null) {
            aetVar.a(3, this.f4287c);
        }
        super.a(aetVar);
    }
}
