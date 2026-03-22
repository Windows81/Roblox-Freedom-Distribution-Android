package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aes extends aev<aes> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f3879a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3880b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3881c = null;

    public aes() {
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3879a != null) {
            iA += aet.d(1, this.f3879a.longValue());
        }
        if (this.f3880b != null) {
            iA += aet.b(3, this.f3880b);
        }
        return this.f3881c != null ? iA + aet.b(4, this.f3881c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f3879a = Long.valueOf(aerVar.h());
                    break;
                case 26:
                    this.f3880b = aerVar.e();
                    break;
                case 34:
                    this.f3881c = aerVar.f();
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
        if (this.f3879a != null) {
            aetVar.b(1, this.f3879a.longValue());
        }
        if (this.f3880b != null) {
            aetVar.a(3, this.f3880b);
        }
        if (this.f3881c != null) {
            aetVar.a(4, this.f3881c);
        }
        super.a(aetVar);
    }
}
