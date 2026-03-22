package com.appsflyer.internal;

import android.net.NetworkInfo;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class s {

    public static final class d {

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        public static final s f297 = new s();
    }

    s() {
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static boolean m193(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }

    public static final class a {

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        public final String f294;

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        public final String f295;

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        public final String f296;

        a(String str, String str2, String str3) {
            this.f294 = str;
            this.f295 = str2;
            this.f296 = str3;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|50|3|4|(5:6|7|(2:9|(1:(2:11|(3:55|13|(1:15)(2:16|(1:18)(0)))(1:19))(1:54)))(2:20|(2:23|(1:25)(2:26|(2:28|(2:30|22)(2:31|(2:33|25)(0)))(0)))(1:22))|48|49)(0)|34|52|35|(2:39|(1:41))|48|49) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008f, code lost:
    
        r12 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0090, code lost:
    
        r2 = r1;
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0096, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting network info. ", r12);
        r11 = r2;
        r2 = r1;
        r1 = r11;
     */
    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.appsflyer.internal.s.a m192(android.content.Context r12) {
        /*
            java.lang.String r0 = "unknown"
            r1 = 0
            java.lang.String r2 = "connectivity"
            java.lang.Object r2 = r12.getSystemService(r2)     // Catch: java.lang.Throwable -> L94
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2     // Catch: java.lang.Throwable -> L94
            java.lang.String r3 = "MOBILE"
            java.lang.String r4 = "WIFI"
            if (r2 == 0) goto L6d
            r5 = 21
            int r6 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L94
            r7 = 0
            r8 = 1
            if (r5 > r6) goto L3d
            android.net.Network[] r5 = r2.getAllNetworks()     // Catch: java.lang.Throwable -> L94
            int r6 = r5.length     // Catch: java.lang.Throwable -> L94
        L1e:
            if (r7 >= r6) goto L6d
            r9 = r5[r7]     // Catch: java.lang.Throwable -> L94
            android.net.NetworkInfo r9 = r2.getNetworkInfo(r9)     // Catch: java.lang.Throwable -> L94
            boolean r10 = m193(r9)     // Catch: java.lang.Throwable -> L94
            if (r10 == 0) goto L3a
            int r2 = r9.getType()     // Catch: java.lang.Throwable -> L94
            if (r8 != r2) goto L33
            goto L47
        L33:
            int r2 = r9.getType()     // Catch: java.lang.Throwable -> L94
            if (r2 != 0) goto L6d
            goto L53
        L3a:
            int r7 = r7 + 1
            goto L1e
        L3d:
            android.net.NetworkInfo r5 = r2.getNetworkInfo(r8)     // Catch: java.lang.Throwable -> L94
            boolean r5 = m193(r5)     // Catch: java.lang.Throwable -> L94
            if (r5 == 0) goto L49
        L47:
            r0 = r4
            goto L6d
        L49:
            android.net.NetworkInfo r5 = r2.getNetworkInfo(r7)     // Catch: java.lang.Throwable -> L94
            boolean r5 = m193(r5)     // Catch: java.lang.Throwable -> L94
            if (r5 == 0) goto L55
        L53:
            r0 = r3
            goto L6d
        L55:
            android.net.NetworkInfo r2 = r2.getActiveNetworkInfo()     // Catch: java.lang.Throwable -> L94
            boolean r5 = m193(r2)     // Catch: java.lang.Throwable -> L94
            if (r5 == 0) goto L6d
            int r5 = r2.getType()     // Catch: java.lang.Throwable -> L94
            if (r8 != r5) goto L66
            goto L47
        L66:
            int r2 = r2.getType()     // Catch: java.lang.Throwable -> L94
            if (r2 != 0) goto L6d
            goto L53
        L6d:
            java.lang.String r2 = "phone"
            java.lang.Object r12 = r12.getSystemService(r2)     // Catch: java.lang.Throwable -> L94
            android.telephony.TelephonyManager r12 = (android.telephony.TelephonyManager) r12     // Catch: java.lang.Throwable -> L94
            java.lang.String r2 = r12.getSimOperatorName()     // Catch: java.lang.Throwable -> L94
            java.lang.String r1 = r12.getNetworkOperatorName()     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L85
            boolean r3 = r1.isEmpty()     // Catch: java.lang.Throwable -> L8f
            if (r3 == 0) goto L9e
        L85:
            r3 = 2
            int r12 = r12.getPhoneType()     // Catch: java.lang.Throwable -> L8f
            if (r3 != r12) goto L9e
            java.lang.String r1 = "CDMA"
            goto L9e
        L8f:
            r12 = move-exception
            r11 = r2
            r2 = r1
            r1 = r11
            goto L96
        L94:
            r12 = move-exception
            r2 = r1
        L96:
            java.lang.String r3 = "Exception while collecting network info. "
            com.appsflyer.AFLogger.afErrorLog(r3, r12)
            r11 = r2
            r2 = r1
            r1 = r11
        L9e:
            com.appsflyer.internal.s$a r12 = new com.appsflyer.internal.s$a
            r12.<init>(r0, r1, r2)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.s.m192(android.content.Context):com.appsflyer.internal.s$a");
    }
}
