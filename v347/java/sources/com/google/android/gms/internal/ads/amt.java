package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class amt extends aev<amt> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile amt[] f4222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f4223b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anh f4224c = null;

    public amt() {
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
    public final com.google.android.gms.internal.ads.amt a(com.google.android.gms.internal.ads.aer r7) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            int r0 = r7.a()
            switch(r0) {
                case 0: goto Ld;
                case 8: goto Le;
                case 18: goto L46;
                default: goto L7;
            }
        L7:
            boolean r0 = super.a(r7, r0)
            if (r0 != 0) goto L0
        Ld:
            return r6
        Le:
            int r1 = r7.j()
            int r2 = r7.g()     // Catch: java.lang.IllegalArgumentException -> L23
            if (r2 < 0) goto L2b
            r3 = 10
            if (r2 > r3) goto L2b
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.IllegalArgumentException -> L23
            r6.f4223b = r2     // Catch: java.lang.IllegalArgumentException -> L23
            goto L0
        L23:
            r2 = move-exception
            r7.e(r1)
            r6.a(r7, r0)
            goto L0
        L2b:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L23
            r4 = 44
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L23
            r5.<init>(r4)     // Catch: java.lang.IllegalArgumentException -> L23
            java.lang.StringBuilder r2 = r5.append(r2)     // Catch: java.lang.IllegalArgumentException -> L23
            java.lang.String r4 = " is not a valid enum AdFormatType"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.IllegalArgumentException -> L23
            java.lang.String r2 = r2.toString()     // Catch: java.lang.IllegalArgumentException -> L23
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L23
            throw r3     // Catch: java.lang.IllegalArgumentException -> L23
        L46:
            com.google.android.gms.internal.ads.anh r0 = r6.f4224c
            if (r0 != 0) goto L51
            com.google.android.gms.internal.ads.anh r0 = new com.google.android.gms.internal.ads.anh
            r0.<init>()
            r6.f4224c = r0
        L51:
            com.google.android.gms.internal.ads.anh r0 = r6.f4224c
            r7.a(r0)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.amt.a(com.google.android.gms.internal.ads.aer):com.google.android.gms.internal.ads.amt");
    }

    public static amt[] b() {
        if (f4222a == null) {
            synchronized (aez.f3892b) {
                if (f4222a == null) {
                    f4222a = new amt[0];
                }
            }
        }
        return f4222a;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    protected final int a() {
        int iA = super.a();
        if (this.f4223b != null) {
            iA += aet.b(1, this.f4223b.intValue());
        }
        return this.f4224c != null ? iA + aet.b(2, this.f4224c) : iA;
    }

    @Override // com.google.android.gms.internal.ads.aev, com.google.android.gms.internal.ads.afb
    public final void a(aet aetVar) throws IOException {
        if (this.f4223b != null) {
            aetVar.a(1, this.f4223b.intValue());
        }
        if (this.f4224c != null) {
            aetVar.a(2, this.f4224c);
        }
        super.a(aetVar);
    }
}
