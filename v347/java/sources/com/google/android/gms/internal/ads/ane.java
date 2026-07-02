package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ane extends aev<ane> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4261a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private anj f4262b = null;

    public ane() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ane a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    int iJ = aerVar.j();
                    try {
                        this.f4261a = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 18:
                    if (this.f4262b == null) {
                        this.f4262b = new anj();
                    }
                    aerVar.a(this.f4262b);
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
        if (this.f4261a != null) {
            iA += aet.b(1, this.f4261a.intValue());
        }
        return this.f4262b != null ? iA + aet.b(2, this.f4262b) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4261a != null) {
            aetVar.a(1, this.f4261a.intValue());
        }
        if (this.f4262b != null) {
            aetVar.a(2, this.f4262b);
        }
        super.a(aetVar);
    }
}
