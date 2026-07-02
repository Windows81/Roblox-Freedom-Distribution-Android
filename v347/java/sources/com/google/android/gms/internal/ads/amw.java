package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class amw extends aev<amw> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4232a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private anj f4233b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anj f4234c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private anj f4235d = null;
    private anj[] e = anj.b();
    private Integer f = null;

    public amw() {
        this.Y = null;
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4232a != null) {
            iA += aet.b(1, this.f4232a.intValue());
        }
        if (this.f4233b != null) {
            iA += aet.b(2, this.f4233b);
        }
        if (this.f4234c != null) {
            iA += aet.b(3, this.f4234c);
        }
        if (this.f4235d != null) {
            iA += aet.b(4, this.f4235d);
        }
        if (this.e != null && this.e.length > 0) {
            int iB = iA;
            for (int i = 0; i < this.e.length; i++) {
                anj anjVar = this.e[i];
                if (anjVar != null) {
                    iB += aet.b(5, anjVar);
                }
            }
            iA = iB;
        }
        return this.f != null ? iA + aet.b(6, this.f.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 8:
                    this.f4232a = Integer.valueOf(aerVar.g());
                    break;
                case 18:
                    if (this.f4233b == null) {
                        this.f4233b = new anj();
                    }
                    aerVar.a(this.f4233b);
                    break;
                case 26:
                    if (this.f4234c == null) {
                        this.f4234c = new anj();
                    }
                    aerVar.a(this.f4234c);
                    break;
                case 34:
                    if (this.f4235d == null) {
                        this.f4235d = new anj();
                    }
                    aerVar.a(this.f4235d);
                    break;
                case 42:
                    int iA2 = afe.a(aerVar, 42);
                    int length = this.e == null ? 0 : this.e.length;
                    anj[] anjVarArr = new anj[iA2 + length];
                    if (length != 0) {
                        System.arraycopy(this.e, 0, anjVarArr, 0, length);
                    }
                    while (length < anjVarArr.length - 1) {
                        anjVarArr[length] = new anj();
                        aerVar.a(anjVarArr[length]);
                        aerVar.a();
                        length++;
                    }
                    anjVarArr[length] = new anj();
                    aerVar.a(anjVarArr[length]);
                    this.e = anjVarArr;
                    break;
                case 48:
                    this.f = Integer.valueOf(aerVar.g());
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
        if (this.f4232a != null) {
            aetVar.a(1, this.f4232a.intValue());
        }
        if (this.f4233b != null) {
            aetVar.a(2, this.f4233b);
        }
        if (this.f4234c != null) {
            aetVar.a(3, this.f4234c);
        }
        if (this.f4235d != null) {
            aetVar.a(4, this.f4235d);
        }
        if (this.e != null && this.e.length > 0) {
            for (int i = 0; i < this.e.length; i++) {
                anj anjVar = this.e[i];
                if (anjVar != null) {
                    aetVar.a(5, anjVar);
                }
            }
        }
        if (this.f != null) {
            aetVar.a(6, this.f.intValue());
        }
        super.a(aetVar);
    }
}
