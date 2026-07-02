package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ani extends aev<ani> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ani[] f4271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4272b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4273c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private anj f4274d = null;

    public ani() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ani a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f4272b = aerVar.e();
                    break;
                case 16:
                    int iJ = aerVar.j();
                    try {
                        this.f4273c = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 26:
                    if (this.f4274d == null) {
                        this.f4274d = new anj();
                    }
                    aerVar.a(this.f4274d);
                    break;
                default:
                    if (!super.a(aerVar, iA)) {
                    }
                    break;
            }
        }
        return this;
    }

    public static ani[] b() {
        if (f4271a == null) {
            synchronized (aez.f3892b) {
                if (f4271a == null) {
                    f4271a = new ani[0];
                }
            }
        }
        return f4271a;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4272b != null) {
            iA += aet.b(1, this.f4272b);
        }
        if (this.f4273c != null) {
            iA += aet.b(2, this.f4273c.intValue());
        }
        return this.f4274d != null ? iA + aet.b(3, this.f4274d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4272b != null) {
            aetVar.a(1, this.f4272b);
        }
        if (this.f4273c != null) {
            aetVar.a(2, this.f4273c.intValue());
        }
        if (this.f4274d != null) {
            aetVar.a(3, this.f4274d);
        }
        super.a(aetVar);
    }
}
