package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class xk extends aev<xk> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5667d;
    private String e;

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f5664a != null) {
            iA += aet.b(1, this.f5664a);
        }
        if (this.f5665b != null) {
            iA += aet.b(2, this.f5665b);
        }
        if (this.f5666c != null) {
            iA += aet.b(3, this.f5666c);
        }
        if (this.f5667d != null) {
            iA += aet.b(4, this.f5667d);
        }
        return this.e != null ? iA + aet.b(5, this.e) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f5664a = aerVar.e();
                    break;
                case 18:
                    this.f5665b = aerVar.e();
                    break;
                case 26:
                    this.f5666c = aerVar.e();
                    break;
                case 34:
                    this.f5667d = aerVar.e();
                    break;
                case 42:
                    this.e = aerVar.e();
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
        if (this.f5664a != null) {
            aetVar.a(1, this.f5664a);
        }
        if (this.f5665b != null) {
            aetVar.a(2, this.f5665b);
        }
        if (this.f5666c != null) {
            aetVar.a(3, this.f5666c);
        }
        if (this.f5667d != null) {
            aetVar.a(4, this.f5667d);
        }
        if (this.e != null) {
            aetVar.a(5, this.e);
        }
        super.a(aetVar);
    }
}
