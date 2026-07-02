package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ang extends aev<ang> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4267a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4268b = null;

    public ang() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4267a != null) {
            iA += aet.b(1, this.f4267a.intValue());
        }
        return this.f4268b != null ? iA + aet.b(2, this.f4268b.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f4267a = Integer.valueOf(aerVar.g());
                    break;
                case 16:
                    this.f4268b = Integer.valueOf(aerVar.g());
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
        if (this.f4267a != null) {
            aetVar.a(1, this.f4267a.intValue());
        }
        if (this.f4268b != null) {
            aetVar.a(2, this.f4268b.intValue());
        }
        super.a(aetVar);
    }
}
