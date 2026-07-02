package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afo extends aev<afo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3929a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f3930b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f3931c = null;

    public afo() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3929a != null) {
            iA += aet.b(1, this.f3929a);
        }
        if (this.f3930b != null) {
            iA += aet.d(2, this.f3930b.longValue());
        }
        if (this.f3931c == null) {
            return iA;
        }
        this.f3931c.booleanValue();
        return iA + aet.b(3) + 1;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f3929a = aerVar.e();
                    break;
                case 16:
                    this.f3930b = Long.valueOf(aerVar.b());
                    break;
                case 24:
                    this.f3931c = Boolean.valueOf(aerVar.d());
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
        if (this.f3929a != null) {
            aetVar.a(1, this.f3929a);
        }
        if (this.f3930b != null) {
            aetVar.b(2, this.f3930b.longValue());
        }
        if (this.f3931c != null) {
            aetVar.a(3, this.f3931c.booleanValue());
        }
        super.a(aetVar);
    }
}
