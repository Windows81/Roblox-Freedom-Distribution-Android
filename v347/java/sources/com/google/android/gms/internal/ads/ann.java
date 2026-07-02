package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ann extends aev<ann> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4288a = null;

    public ann() {
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
    public final com.google.android.gms.internal.ads.ann a(com.google.android.gms.internal.ads.aer r7) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            int r0 = r7.a()
            switch(r0) {
                case 0: goto Ld;
                case 8: goto Le;
                default: goto L7;
            }
        L7:
            boolean r0 = super.a(r7, r0)
            if (r0 != 0) goto L0
        Ld:
            return r6
        Le:
            int r1 = r7.j()
            int r2 = r7.g()     // Catch: java.lang.IllegalArgumentException -> L22
            if (r2 < 0) goto L2a
            r3 = 3
            if (r2 > r3) goto L2a
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            r6.f4288a = r2     // Catch: java.lang.IllegalArgumentException -> L22
            goto L0
        L22:
            r2 = move-exception
            r7.e(r1)
            r6.a(r7, r0)
            goto L0
        L2a:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L22
            r4 = 46
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L22
            r5.<init>(r4)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.StringBuilder r2 = r5.append(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.String r4 = " is not a valid enum VideoErrorCode"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.String r2 = r2.toString()     // Catch: java.lang.IllegalArgumentException -> L22
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            throw r3     // Catch: java.lang.IllegalArgumentException -> L22
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ann.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.ann");
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        return this.f4288a != null ? iA + aet.b(1, this.f4288a.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4288a != null) {
            aetVar.a(1, this.f4288a.intValue());
        }
        super.a(aetVar);
    }
}
