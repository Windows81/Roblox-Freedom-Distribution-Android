package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afj extends aev<afj> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f3912a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f3913b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3914c = null;

    public afj() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3912a != null) {
            iA += aet.b(1, this.f3912a);
        }
        if (this.f3913b != null) {
            iA += aet.b(2, this.f3913b);
        }
        return this.f3914c != null ? iA + aet.b(3, this.f3914c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f3912a = aerVar.f();
                    break;
                case 18:
                    this.f3913b = aerVar.f();
                    break;
                case 26:
                    this.f3914c = aerVar.f();
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
        if (this.f3912a != null) {
            aetVar.a(1, this.f3912a);
        }
        if (this.f3913b != null) {
            aetVar.a(2, this.f3913b);
        }
        if (this.f3914c != null) {
            aetVar.a(3, this.f3914c);
        }
        super.a(aetVar);
    }
}
