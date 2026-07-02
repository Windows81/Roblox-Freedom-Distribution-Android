package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class anc extends aev<anc> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ana f4255a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ani[] f4256b = ani.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f4257c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private anj f4258d = null;

    public anc() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final anc a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    if (this.f4255a == null) {
                        this.f4255a = new ana();
                    }
                    aerVar.a(this.f4255a);
                    break;
                case 18:
                    int iA2 = afe.a(aerVar, 18);
                    int length = this.f4256b == null ? 0 : this.f4256b.length;
                    ani[] aniVarArr = new ani[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.f4256b, 0, aniVarArr, 0, length);
                    }
                    while (length < aniVarArr.length - 1) {
                        aniVarArr[length] = new ani();
                        aerVar.a(aniVarArr[length]);
                        aerVar.a();
                        length++;
                    }
                    aniVarArr[length] = new ani();
                    aerVar.a(aniVarArr[length]);
                    this.f4256b = aniVarArr;
                    break;
                case 24:
                    int iJ = aerVar.j();
                    try {
                        this.f4257c = Integer.valueOf(amr.a(aerVar.g()));
                    } catch (IllegalArgumentException e) {
                        aerVar.e(iJ);
                        a(aerVar, iA);
                    }
                    break;
                case 34:
                    if (this.f4258d == null) {
                        this.f4258d = new anj();
                    }
                    aerVar.a(this.f4258d);
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
    protected final int a() {
        int iA = super.a();
        if (this.f4255a != null) {
            iA += aet.b(1, this.f4255a);
        }
        if (this.f4256b != null && this.f4256b.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.f4256b.length; i++) {
                ani aniVar = this.f4256b[i];
                if (aniVar != null) {
                    iB += aet.b(2, aniVar);
                }
            }
            iA = iB;
        }
        if (this.f4257c != null) {
            iA += aet.b(3, this.f4257c.intValue());
        }
        return this.f4258d != null ? iA + aet.b(4, this.f4258d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4255a != null) {
            aetVar.a(1, this.f4255a);
        }
        if (this.f4256b != null && this.f4256b.length > 0) {
            for (int i = 0; i < this.f4256b.length; i++) {
                ani aniVar = this.f4256b[i];
                if (aniVar != null) {
                    aetVar.a(2, aniVar);
                }
            }
        }
        if (this.f4257c != null) {
            aetVar.a(3, this.f4257c.intValue());
        }
        if (this.f4258d != null) {
            aetVar.a(4, this.f4258d);
        }
        super.a(aetVar);
    }
}
