package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class abp extends aev<abp> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Long f3767d = null;
    private Long e = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f3764a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f3765b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f3766c = null;

    public abp() {
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3767d != null) {
            iA += aet.d(1, this.f3767d.longValue());
        }
        if (this.e != null) {
            iA += aet.d(2, this.e.longValue());
        }
        if (this.f3764a != null) {
            iA += aet.d(3, this.f3764a.longValue());
        }
        if (this.f3765b != null) {
            iA += aet.d(4, this.f3765b.longValue());
        }
        return this.f3766c != null ? iA + aet.d(5, this.f3766c.longValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f3767d = Long.valueOf(aerVar.h());
                    break;
                case 16:
                    this.e = Long.valueOf(aerVar.h());
                    break;
                case 24:
                    this.f3764a = Long.valueOf(aerVar.h());
                    break;
                case 32:
                    this.f3765b = Long.valueOf(aerVar.h());
                    break;
                case 40:
                    this.f3766c = Long.valueOf(aerVar.h());
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
        if (this.f3767d != null) {
            aetVar.b(1, this.f3767d.longValue());
        }
        if (this.e != null) {
            aetVar.b(2, this.e.longValue());
        }
        if (this.f3764a != null) {
            aetVar.b(3, this.f3764a.longValue());
        }
        if (this.f3765b != null) {
            aetVar.b(4, this.f3765b.longValue());
        }
        if (this.f3766c != null) {
            aetVar.b(5, this.f3766c.longValue());
        }
        super.a(aetVar);
    }
}
