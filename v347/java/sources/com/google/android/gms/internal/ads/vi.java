package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class vi extends aev<vi> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5619a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f5620b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5621c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5622d = null;
    private String e = null;
    private Long f = null;
    private Long g = null;
    private String h = null;
    private Long i = null;
    private String j = null;

    public vi() {
        this.Z = -1;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f5619a != null) {
            iA += aet.b(1, this.f5619a);
        }
        if (this.f5620b != null) {
            iA += aet.d(2, this.f5620b.longValue());
        }
        if (this.f5621c != null) {
            iA += aet.b(3, this.f5621c);
        }
        if (this.f5622d != null) {
            iA += aet.b(4, this.f5622d);
        }
        if (this.e != null) {
            iA += aet.b(5, this.e);
        }
        if (this.f != null) {
            iA += aet.d(6, this.f.longValue());
        }
        if (this.g != null) {
            iA += aet.d(7, this.g.longValue());
        }
        if (this.h != null) {
            iA += aet.b(8, this.h);
        }
        if (this.i != null) {
            iA += aet.d(9, this.i.longValue());
        }
        return this.j != null ? iA + aet.b(10, this.j) : iA;
    }

    @Override // com.google.android.gms.internal.ads.afb
    public final /* synthetic */ afb a(aer aerVar) throws IOException {
        while (true) {
            int iA = aerVar.a();
            switch (iA) {
                case 0:
                    break;
                case 10:
                    this.f5619a = aerVar.e();
                    break;
                case 16:
                    this.f5620b = Long.valueOf(aerVar.h());
                    break;
                case 26:
                    this.f5621c = aerVar.e();
                    break;
                case 34:
                    this.f5622d = aerVar.e();
                    break;
                case 42:
                    this.e = aerVar.e();
                    break;
                case 48:
                    this.f = Long.valueOf(aerVar.h());
                    break;
                case 56:
                    this.g = Long.valueOf(aerVar.h());
                    break;
                case 66:
                    this.h = aerVar.e();
                    break;
                case 72:
                    this.i = Long.valueOf(aerVar.h());
                    break;
                case 82:
                    this.j = aerVar.e();
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
        if (this.f5619a != null) {
            aetVar.a(1, this.f5619a);
        }
        if (this.f5620b != null) {
            aetVar.b(2, this.f5620b.longValue());
        }
        if (this.f5621c != null) {
            aetVar.a(3, this.f5621c);
        }
        if (this.f5622d != null) {
            aetVar.a(4, this.f5622d);
        }
        if (this.e != null) {
            aetVar.a(5, this.e);
        }
        if (this.f != null) {
            aetVar.b(6, this.f.longValue());
        }
        if (this.g != null) {
            aetVar.b(7, this.g.longValue());
        }
        if (this.h != null) {
            aetVar.a(8, this.h);
        }
        if (this.i != null) {
            aetVar.b(9, this.i.longValue());
        }
        if (this.j != null) {
            aetVar.a(10, this.j);
        }
        super.a(aetVar);
    }
}
