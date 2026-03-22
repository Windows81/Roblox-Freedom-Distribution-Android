package com.roblox.client.util;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class NetworkUtils {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getPublicIPv4Addresseses() {
        /*
            java.util.Enumeration r0 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Exception -> L64
            java.util.ArrayList r0 = java.util.Collections.list(r0)     // Catch: java.lang.Exception -> L64
            java.lang.String r1 = ""
            java.util.Iterator r2 = r0.iterator()     // Catch: java.lang.Exception -> L64
        Le:
            boolean r0 = r2.hasNext()     // Catch: java.lang.Exception -> L64
            if (r0 == 0) goto L62
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Exception -> L64
            java.net.NetworkInterface r0 = (java.net.NetworkInterface) r0     // Catch: java.lang.Exception -> L64
            java.util.Enumeration r0 = r0.getInetAddresses()     // Catch: java.lang.Exception -> L64
            java.util.ArrayList r0 = java.util.Collections.list(r0)     // Catch: java.lang.Exception -> L64
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Exception -> L64
        L26:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Exception -> L64
            if (r0 == 0) goto Le
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Exception -> L64
            java.net.InetAddress r0 = (java.net.InetAddress) r0     // Catch: java.lang.Exception -> L64
            boolean r4 = r0.isLoopbackAddress()     // Catch: java.lang.Exception -> L64
            if (r4 != 0) goto L80
            java.lang.String r4 = r0.getHostAddress()     // Catch: java.lang.Exception -> L64
            r0 = 58
            int r0 = r4.indexOf(r0)     // Catch: java.lang.Exception -> L64
            if (r0 >= 0) goto L60
            r0 = 1
        L45:
            if (r0 == 0) goto L80
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L64
            r0.<init>()     // Catch: java.lang.Exception -> L64
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L64
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch: java.lang.Exception -> L64
            java.lang.String r1 = " : "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L64
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L64
        L5e:
            r1 = r0
            goto L26
        L60:
            r0 = 0
            goto L45
        L62:
            r0 = r1
        L63:
            return r0
        L64:
            r0 = move-exception
            java.lang.String r1 = "IPAddress"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Android Loop Back IP scanning exception :"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.roblox.client.util.g.d(r1, r0)
            java.lang.String r0 = ""
            goto L63
        L80:
            r0 = r1
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.util.NetworkUtils.getPublicIPv4Addresseses():java.lang.String");
    }
}
