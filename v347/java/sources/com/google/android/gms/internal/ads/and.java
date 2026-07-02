package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class and extends aev<and> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4259a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4260b = null;

    public and() {
        this.Y = null;
        this.Z = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        return r8;
     */
    @Override // com.google.android.gms.internal.ads.afb
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.and a(com.google.android.gms.internal.ads.aer r9) throws java.io.IOException {
        /*
            r8 = this;
            r7 = 4
            r6 = 2
        L2:
            int r1 = r9.a()
            switch(r1) {
                case 0: goto Lf;
                case 8: goto L10;
                case 16: goto L46;
                default: goto L9;
            }
        L9:
            boolean r0 = super.a(r9, r1)
            if (r0 != 0) goto L2
        Lf:
            return r8
        L10:
            int r0 = r9.j()
            int r2 = r9.g()     // Catch: java.lang.IllegalArgumentException -> L23
            if (r2 < 0) goto L2b
            if (r2 > r6) goto L2b
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.IllegalArgumentException -> L23
            r8.f4259a = r2     // Catch: java.lang.IllegalArgumentException -> L23
            goto L2
        L23:
            r2 = move-exception
            r9.e(r0)
            r8.a(r9, r1)
            goto L2
        L2b:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L23
            r4 = 43
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L23
            r5.<init>(r4)     // Catch: java.lang.IllegalArgumentException -> L23
            java.lang.StringBuilder r2 = r5.append(r2)     // Catch: java.lang.IllegalArgumentException -> L23
            java.lang.String r4 = " is not a valid enum NetworkType"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.IllegalArgumentException -> L23
            java.lang.String r2 = r2.toString()     // Catch: java.lang.IllegalArgumentException -> L23
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L23
            throw r3     // Catch: java.lang.IllegalArgumentException -> L23
        L46:
            int r2 = r9.j()
            int r0 = r9.g()     // Catch: java.lang.IllegalArgumentException -> L59
            if (r0 < 0) goto L61
            if (r0 > r6) goto L61
        L52:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.IllegalArgumentException -> L59
            r8.f4260b = r0     // Catch: java.lang.IllegalArgumentException -> L59
            goto L2
        L59:
            r0 = move-exception
            r9.e(r2)
            r8.a(r9, r1)
            goto L2
        L61:
            if (r0 < r7) goto L65
            if (r0 <= r7) goto L52
        L65:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L59
            r4 = 51
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L59
            r5.<init>(r4)     // Catch: java.lang.IllegalArgumentException -> L59
            java.lang.StringBuilder r0 = r5.append(r0)     // Catch: java.lang.IllegalArgumentException -> L59
            java.lang.String r4 = " is not a valid enum CellularNetworkType"
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch: java.lang.IllegalArgumentException -> L59
            java.lang.String r0 = r0.toString()     // Catch: java.lang.IllegalArgumentException -> L59
            r3.<init>(r0)     // Catch: java.lang.IllegalArgumentException -> L59
            throw r3     // Catch: java.lang.IllegalArgumentException -> L59
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.and.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.and");
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4259a != null) {
            iA += aet.b(1, this.f4259a.intValue());
        }
        return this.f4260b != null ? iA + aet.b(2, this.f4260b.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4259a != null) {
            aetVar.a(1, this.f4259a.intValue());
        }
        if (this.f4260b != null) {
            aetVar.a(2, this.f4260b.intValue());
        }
        super.a(aetVar);
    }
}
