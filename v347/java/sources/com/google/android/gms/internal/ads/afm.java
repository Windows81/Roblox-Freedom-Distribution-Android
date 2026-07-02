package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class afm extends aev<afm> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f3922a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3923b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f3924c = null;

    public afm() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        return r6;
     */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.afm a(com.google.android.gms.internal.ads.aer r7) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            int r0 = r7.a()
            switch(r0) {
                case 0: goto Ld;
                case 8: goto Le;
                case 18: goto L45;
                case 26: goto L4c;
                default: goto L7;
            }
        L7:
            boolean r0 = super.a(r7, r0)
            if (r0 != 0) goto L0
        Ld:
            return r6
        Le:
            int r1 = r7.j()
            int r2 = r7.c()     // Catch: java.lang.IllegalArgumentException -> L22
            if (r2 < 0) goto L2a
            r3 = 1
            if (r2 > r3) goto L2a
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            r6.f3922a = r2     // Catch: java.lang.IllegalArgumentException -> L22
            goto L0
        L22:
            r2 = move-exception
            r7.e(r1)
            r6.a(r7, r0)
            goto L0
        L2a:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L22
            r4 = 36
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L22
            r5.<init>(r4)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.StringBuilder r2 = r5.append(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.String r4 = " is not a valid enum Type"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.String r2 = r2.toString()     // Catch: java.lang.IllegalArgumentException -> L22
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            throw r3     // Catch: java.lang.IllegalArgumentException -> L22
        L45:
            java.lang.String r0 = r7.e()
            r6.f3923b = r0
            goto L0
        L4c:
            byte[] r0 = r7.f()
            r6.f3924c = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.afm.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.afm");
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f3922a != null) {
            iA += aet.b(1, this.f3922a.intValue());
        }
        if (this.f3923b != null) {
            iA += aet.b(2, this.f3923b);
        }
        return this.f3924c != null ? iA + aet.b(3, this.f3924c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f3922a != null) {
            aetVar.a(1, this.f3922a.intValue());
        }
        if (this.f3923b != null) {
            aetVar.a(2, this.f3923b);
        }
        if (this.f3924c != null) {
            aetVar.a(3, this.f3924c);
        }
        super.a(aetVar);
    }
}
