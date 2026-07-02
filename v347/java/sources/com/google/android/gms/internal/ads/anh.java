package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anh extends aev<anh> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4269a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4270b = null;

    public anh() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4269a != null) {
            iA += aet.b(1, this.f4269a.intValue());
        }
        return this.f4270b != null ? iA + aet.b(2, this.f4270b.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f4269a = Integer.valueOf(aerVar.g());
                    break;
                case 16:
                    this.f4270b = Integer.valueOf(aerVar.g());
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
    public final void a(aet aetVar) throws IOException {
        if (this.f4269a != null) {
            aetVar.a(1, this.f4269a.intValue());
        }
        if (this.f4270b != null) {
            aetVar.a(2, this.f4270b.intValue());
        }
        super.a(aetVar);
    }
}
