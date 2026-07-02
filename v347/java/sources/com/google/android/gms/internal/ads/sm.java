package com.google.android.gms.internal.ads;

import android.net.http.SslError;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
final class sm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f5554a = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f5555b = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};

    sm() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.bs
            com.google.android.gms.internal.ads.arm r1 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L13
        L12:
            return
        L13:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            java.lang.String r0 = "err"
            r1.putString(r0, r4)
            java.lang.String r0 = "code"
            r1.putString(r0, r5)
            java.lang.String r2 = "host"
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 != 0) goto L3c
            android.net.Uri r0 = android.net.Uri.parse(r6)
            java.lang.String r3 = r0.getHost()
            if (r3 == 0) goto L3c
            java.lang.String r0 = r0.getHost()
        L38:
            r1.putString(r2, r0)
            goto L12
        L3c:
            java.lang.String r0 = ""
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sm.a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    final void a(int i, String str) {
        a("http_err", (i >= 0 || (-i) + (-1) >= f5554a.length) ? String.valueOf(i) : f5554a[(-i) - 1], str);
    }

    final void a(@Nullable SslError sslError) {
        if (sslError == null) {
            return;
        }
        int primaryError = sslError.getPrimaryError();
        a("ssl_err", (primaryError < 0 || primaryError >= f5555b.length) ? String.valueOf(primaryError) : f5555b[primaryError], sslError.getUrl());
    }
}
