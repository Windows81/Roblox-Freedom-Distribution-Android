package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class amy extends aev<amy> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f4240a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ank f4241b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4242c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4243d = null;

    public amy() {
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
    public final com.google.android.gms.internal.ads.amy a(com.google.android.gms.internal.ads.aer r7) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            int r0 = r7.a()
            switch(r0) {
                case 0: goto Ld;
                case 40: goto Le;
                case 50: goto L45;
                case 58: goto L56;
                case 66: goto L5d;
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
            r3 = 2
            if (r2 > r3) goto L2a
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            r6.f4240a = r2     // Catch: java.lang.IllegalArgumentException -> L22
            goto L0
        L22:
            r2 = move-exception
            r7.e(r1)
            r6.a(r7, r0)
            goto L0
        L2a:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L22
            r4 = 40
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L22
            r5.<init>(r4)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.StringBuilder r2 = r5.append(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.String r4 = " is not a valid enum Platform"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.IllegalArgumentException -> L22
            java.lang.String r2 = r2.toString()     // Catch: java.lang.IllegalArgumentException -> L22
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L22
            throw r3     // Catch: java.lang.IllegalArgumentException -> L22
        L45:
            com.google.android.gms.internal.ads.ank r0 = r6.f4241b
            if (r0 != 0) goto L50
            com.google.android.gms.internal.ads.ank r0 = new com.google.android.gms.internal.ads.ank
            r0.<init>()
            r6.f4241b = r0
        L50:
            com.google.android.gms.internal.ads.ank r0 = r6.f4241b
            r7.a(r0)
            goto L0
        L56:
            java.lang.String r0 = r7.e()
            r6.f4242c = r0
            goto L0
        L5d:
            java.lang.String r0 = r7.e()
            r6.f4243d = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.amy.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.amy");
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4240a != null) {
            iA += aet.b(5, this.f4240a.intValue());
        }
        if (this.f4241b != null) {
            iA += aet.b(6, this.f4241b);
        }
        if (this.f4242c != null) {
            iA += aet.b(7, this.f4242c);
        }
        return this.f4243d != null ? iA + aet.b(8, this.f4243d) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4240a != null) {
            aetVar.a(5, this.f4240a.intValue());
        }
        if (this.f4241b != null) {
            aetVar.a(6, this.f4241b);
        }
        if (this.f4242c != null) {
            aetVar.a(7, this.f4242c);
        }
        if (this.f4243d != null) {
            aetVar.a(8, this.f4243d);
        }
        super.a(aetVar);
    }
}
