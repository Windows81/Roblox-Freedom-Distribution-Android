package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class ff implements Callable<fc> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f5013b;

    ff(fe feVar, Context context) {
        this.f5013b = feVar;
        this.f5012a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0066  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.fc call() throws java.lang.Exception {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.fe r0 = r6.f5013b
            java.util.WeakHashMap r0 = com.google.android.gms.internal.ads.fe.a(r0)
            android.content.Context r1 = r6.f5012a
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.ads.fg r0 = (com.google.android.gms.internal.ads.fg) r0
            if (r0 == 0) goto L66
            long r2 = r0.f5014a
            com.google.android.gms.internal.ads.are<java.lang.Long> r1 = com.google.android.gms.internal.ads.aro.bq
            com.google.android.gms.internal.ads.arm r4 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r1 = r4.a(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r4 = r1.longValue()
            long r2 = r2 + r4
            com.google.android.gms.common.util.d r1 = com.google.android.gms.ads.internal.aw.l()
            long r4 = r1.a()
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 >= 0) goto L64
            r1 = 1
        L30:
            if (r1 != 0) goto L66
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r1 = com.google.android.gms.internal.ads.aro.bp
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L66
            com.google.android.gms.internal.ads.fd r1 = new com.google.android.gms.internal.ads.fd
            android.content.Context r2 = r6.f5012a
            com.google.android.gms.internal.ads.fc r0 = r0.f5015b
            r1.<init>(r2, r0)
            com.google.android.gms.internal.ads.fc r0 = r1.a()
        L51:
            com.google.android.gms.internal.ads.fe r1 = r6.f5013b
            java.util.WeakHashMap r1 = com.google.android.gms.internal.ads.fe.a(r1)
            android.content.Context r2 = r6.f5012a
            com.google.android.gms.internal.ads.fg r3 = new com.google.android.gms.internal.ads.fg
            com.google.android.gms.internal.ads.fe r4 = r6.f5013b
            r3.<init>(r4, r0)
            r1.put(r2, r3)
            return r0
        L64:
            r1 = 0
            goto L30
        L66:
            com.google.android.gms.internal.ads.fd r0 = new com.google.android.gms.internal.ads.fd
            android.content.Context r1 = r6.f5012a
            r0.<init>(r1)
            com.google.android.gms.internal.ads.fc r0 = r0.a()
            goto L51
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ff.call():java.lang.Object");
    }
}
