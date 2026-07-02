package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afl extends aev<afl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f3919a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f3920b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3921c = null;

    public afl() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3919a != null) {
            iA += aet.b(1, this.f3919a.intValue());
        }
        if (this.f3920b != null) {
            iA += aet.b(2, this.f3920b);
        }
        return this.f3921c != null ? iA + aet.b(3, this.f3921c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f3919a = Integer.valueOf(aerVar.c());
                    break;
                case 18:
                    this.f3920b = aerVar.f();
                    break;
                case 26:
                    this.f3921c = aerVar.f();
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
        if (this.f3919a != null) {
            aetVar.a(1, this.f3919a.intValue());
        }
        if (this.f3920b != null) {
            aetVar.a(2, this.f3920b);
        }
        if (this.f3921c != null) {
            aetVar.a(3, this.f3921c);
        }
        super.a(aetVar);
    }
}
