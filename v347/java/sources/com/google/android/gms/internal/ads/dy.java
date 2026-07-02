package com.google.android.gms.internal.ads;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
final class dy implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ OutputStream f4944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ byte[] f4945b;

    dy(zzaev zzaevVar, OutputStream outputStream, byte[] bArr) {
        this.f4944a = outputStream;
        this.f4945b = bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            r4 = this;
            r2 = 0
            java.io.DataOutputStream r1 = new java.io.DataOutputStream     // Catch: java.io.IOException -> L17 java.lang.Throwable -> L33
            java.io.OutputStream r0 = r4.f4944a     // Catch: java.io.IOException -> L17 java.lang.Throwable -> L33
            r1.<init>(r0)     // Catch: java.io.IOException -> L17 java.lang.Throwable -> L33
            byte[] r0 = r4.f4945b     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            int r0 = r0.length     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            r1.writeInt(r0)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            byte[] r0 = r4.f4945b     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            r1.write(r0)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            com.google.android.gms.common.util.l.a(r1)
        L16:
            return
        L17:
            r0 = move-exception
            r1 = r2
        L19:
            java.lang.String r2 = "Error transporting the ad response"
            com.google.android.gms.internal.ads.jd.b(r2, r0)     // Catch: java.lang.Throwable -> L41
            com.google.android.gms.internal.ads.in r2 = com.google.android.gms.ads.internal.aw.i()     // Catch: java.lang.Throwable -> L41
            java.lang.String r3 = "LargeParcelTeleporter.pipeData.1"
            r2.a(r0, r3)     // Catch: java.lang.Throwable -> L41
            if (r1 != 0) goto L2f
            java.io.OutputStream r0 = r4.f4944a
            com.google.android.gms.common.util.l.a(r0)
            goto L16
        L2f:
            com.google.android.gms.common.util.l.a(r1)
            goto L16
        L33:
            r0 = move-exception
            r1 = r2
        L35:
            if (r1 != 0) goto L3d
            java.io.OutputStream r1 = r4.f4944a
            com.google.android.gms.common.util.l.a(r1)
        L3c:
            throw r0
        L3d:
            com.google.android.gms.common.util.l.a(r1)
            goto L3c
        L41:
            r0 = move-exception
            goto L35
        L43:
            r0 = move-exception
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dy.run():void");
    }
}
