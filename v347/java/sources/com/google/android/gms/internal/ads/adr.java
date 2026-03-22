package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class adr extends aev<adr> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f3844a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f3845b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f3846c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f3847d = null;

    public adr() {
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3844a != null) {
            iA += aet.b(1, this.f3844a);
        }
        if (this.f3845b != null) {
            iA += aet.b(2, this.f3845b);
        }
        if (this.f3846c != null) {
            iA += aet.b(3, this.f3846c);
        }
        return this.f3847d != null ? iA + aet.b(4, this.f3847d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f3844a = aerVar.f();
                    break;
                case 18:
                    this.f3845b = aerVar.f();
                    break;
                case 26:
                    this.f3846c = aerVar.f();
                    break;
                case 34:
                    this.f3847d = aerVar.f();
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
        if (this.f3844a != null) {
            aetVar.a(1, this.f3844a);
        }
        if (this.f3845b != null) {
            aetVar.a(2, this.f3845b);
        }
        if (this.f3846c != null) {
            aetVar.a(3, this.f3846c);
        }
        if (this.f3847d != null) {
            aetVar.a(4, this.f3847d);
        }
        super.a(aetVar);
    }
}
