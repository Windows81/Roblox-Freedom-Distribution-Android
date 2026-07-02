package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ank extends aev<ank> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f4278a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f4279b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4280c = null;

    public ank() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4278a != null) {
            iA += aet.b(1, this.f4278a.intValue());
        }
        if (this.f4279b != null) {
            iA += aet.b(2, this.f4279b.intValue());
        }
        return this.f4280c != null ? iA + aet.b(3, this.f4280c.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f4278a = Integer.valueOf(aerVar.g());
                    break;
                case 16:
                    this.f4279b = Integer.valueOf(aerVar.g());
                    break;
                case 24:
                    this.f4280c = Integer.valueOf(aerVar.g());
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
        if (this.f4278a != null) {
            aetVar.a(1, this.f4278a.intValue());
        }
        if (this.f4279b != null) {
            aetVar.a(2, this.f4279b.intValue());
        }
        if (this.f4280c != null) {
            aetVar.a(3, this.f4280c.intValue());
        }
        super.a(aetVar);
    }
}
