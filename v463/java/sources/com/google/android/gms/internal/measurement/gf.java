package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gf implements Callable<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ gb f4398a;

    gf(gb gbVar) {
        this.f4398a = gbVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0072  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* synthetic */ java.lang.String call() throws java.lang.Exception {
        /*
            r8 = this;
            com.google.android.gms.internal.measurement.gb r0 = r8.f4398a
            com.google.android.gms.internal.measurement.ei r0 = r0.r()
            java.lang.String r0 = r0.w()
            if (r0 == 0) goto Ld
            return r0
        Ld:
            com.google.android.gms.internal.measurement.gb r0 = r8.f4398a
            com.google.android.gms.internal.measurement.gb r0 = r0.e()
            com.google.android.gms.internal.measurement.ex r1 = r0.p()
            boolean r1 = r1.w()
            r2 = 0
            if (r1 == 0) goto L2c
            com.google.android.gms.internal.measurement.dx r0 = r0.q()
            com.google.android.gms.internal.measurement.dz r0 = r0.v()
            java.lang.String r1 = "Cannot retrieve app instance id from analytics worker thread"
        L28:
            r0.a(r1)
            goto L66
        L2c:
            r0.p()
            boolean r1 = com.google.android.gms.internal.measurement.ex.v()
            if (r1 == 0) goto L40
            com.google.android.gms.internal.measurement.dx r0 = r0.q()
            com.google.android.gms.internal.measurement.dz r0 = r0.v()
            java.lang.String r1 = "Cannot retrieve app instance id from main thread"
            goto L28
        L40:
            com.google.android.gms.common.util.d r1 = r0.j()
            long r1 = r1.b()
            r3 = 120000(0x1d4c0, double:5.9288E-319)
            java.lang.String r5 = r0.c(r3)
            com.google.android.gms.common.util.d r6 = r0.j()
            long r6 = r6.b()
            long r6 = r6 - r1
            if (r5 != 0) goto L65
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 >= 0) goto L65
            long r3 = r3 - r6
            java.lang.String r0 = r0.c(r3)
            r2 = r0
            goto L66
        L65:
            r2 = r5
        L66:
            if (r2 == 0) goto L72
            com.google.android.gms.internal.measurement.gb r0 = r8.f4398a
            com.google.android.gms.internal.measurement.ei r0 = r0.r()
            r0.d(r2)
            return r2
        L72:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException
            r0.<init>()
            goto L79
        L78:
            throw r0
        L79:
            goto L78
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.gf.call():java.lang.Object");
    }
}
