package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ant extends aev<ant> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4305a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ann f4306b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anj f4307c = null;

    public ant() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ant a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4305a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 18:
                    if (this.f4306b == null) {
                        this.f4306b = new ann();
                    }
                    aerVar.a(this.f4306b);
                    break;
                case 26:
                    if (this.f4307c == null) {
                        this.f4307c = new anj();
                    }
                    aerVar.a(this.f4307c);
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
        if (this.f4305a != null) {
            iA += aet.b(1, this.f4305a.intValue());
        }
        if (this.f4306b != null) {
            iA += aet.b(2, this.f4306b);
        }
        return this.f4307c != null ? iA + aet.b(3, this.f4307c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4305a != null) {
            aetVar.a(1, this.f4305a.intValue());
        }
        if (this.f4306b != null) {
            aetVar.a(2, this.f4306b);
        }
        if (this.f4307c != null) {
            aetVar.a(3, this.f4307c);
        }
        super.a(aetVar);
    }
}
