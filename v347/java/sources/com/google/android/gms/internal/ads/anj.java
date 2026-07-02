package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anj extends aev<anj> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile anj[] f4275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4276b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4277c = null;

    public anj() {
        this.Y = null;
        this.Z = -1;
    }

    public static anj[] b() {
        if (f4275a == null) {
            synchronized (aez.f3892b) {
                if (f4275a == null) {
                    f4275a = new anj[0];
                }
            }
        }
        return f4275a;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4276b != null) {
            iA += aet.b(1, this.f4276b.intValue());
        }
        return this.f4277c != null ? iA + aet.b(2, this.f4277c.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f4276b = Integer.valueOf(aerVar.g());
                    break;
                case 16:
                    this.f4277c = Integer.valueOf(aerVar.g());
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
        if (this.f4276b != null) {
            aetVar.a(1, this.f4276b.intValue());
        }
        if (this.f4277c != null) {
            aetVar.a(2, this.f4277c.intValue());
        }
        super.a(aetVar);
    }
}
