package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afh extends aev<afh> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile afh[] f3905c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f3906a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f3907b = null;

    public afh() {
        this.Y = null;
        this.Z = -1;
    }

    public static afh[] b() {
        if (f3905c == null) {
            synchronized (aez.f3892b) {
                if (f3905c == null) {
                    f3905c = new afh[0];
                }
            }
        }
        return f3905c;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a() + aet.b(1, this.f3906a);
        return this.f3907b != null ? iA + aet.b(2, this.f3907b) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f3906a = aerVar.f();
                    break;
                case 18:
                    this.f3907b = aerVar.f();
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
        aetVar.a(1, this.f3906a);
        if (this.f3907b != null) {
            aetVar.a(2, this.f3907b);
        }
        super.a(aetVar);
    }
}
