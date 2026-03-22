package com.appsflyer;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class AFKeystoreWrapper {

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private Context f32;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    KeyStore f34;

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    final Object f31 = new Object();

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    String f35 = "";

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    int f33 = 0;

    public AFKeystoreWrapper(Context context) {
        this.f32 = context;
        AFLogger.afInfoLog("Initialising KeyStore..");
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.f34 = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
            AFLogger.afErrorLog("Couldn't load keystore instance of type: AndroidKeyStore", e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0023, code lost:
    
        r1 = r4.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
    
        if (r1.length != 3) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        com.appsflyer.AFLogger.afInfoLog("Found a matching AF key with alias:\n".concat(java.lang.String.valueOf(r4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
    
        r3 = r1[1].trim().split("=");
        r1 = r1[2].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
    
        if (r3.length != 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
    
        if (r1.length != 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
    
        r7.f35 = r3[1].trim();
        r7.f33 = java.lang.Integer.parseInt(r1[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
    
        r1 = th;
     */
    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean m12() {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f31
            monitor-enter(r0)
            java.security.KeyStore r1 = r7.f34     // Catch: java.lang.Throwable -> L8f
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L8c
            java.security.KeyStore r1 = r7.f34     // Catch: java.lang.Throwable -> L70
            java.util.Enumeration r1 = r1.aliases()     // Catch: java.lang.Throwable -> L70
        Lf:
            boolean r4 = r1.hasMoreElements()     // Catch: java.lang.Throwable -> L70
            if (r4 == 0) goto L8c
            java.lang.Object r4 = r1.nextElement()     // Catch: java.lang.Throwable -> L70
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L70
            if (r4 == 0) goto Lf
            boolean r5 = m10(r4)     // Catch: java.lang.Throwable -> L70
            if (r5 == 0) goto Lf
            java.lang.String r1 = ","
            java.lang.String[] r1 = r4.split(r1)     // Catch: java.lang.Throwable -> L70
            int r5 = r1.length     // Catch: java.lang.Throwable -> L70
            r6 = 3
            if (r5 != r6) goto L8c
            java.lang.String r5 = "Found a matching AF key with alias:\n"
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L70
            java.lang.String r4 = r5.concat(r4)     // Catch: java.lang.Throwable -> L70
            com.appsflyer.AFLogger.afInfoLog(r4)     // Catch: java.lang.Throwable -> L70
            r3 = r1[r2]     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = r3.trim()     // Catch: java.lang.Throwable -> L6e
            java.lang.String r4 = "="
            java.lang.String[] r3 = r3.split(r4)     // Catch: java.lang.Throwable -> L6e
            r4 = 2
            r1 = r1[r4]     // Catch: java.lang.Throwable -> L6e
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L6e
            java.lang.String r5 = "="
            java.lang.String[] r1 = r1.split(r5)     // Catch: java.lang.Throwable -> L6e
            int r5 = r3.length     // Catch: java.lang.Throwable -> L6e
            if (r5 != r4) goto L8d
            int r5 = r1.length     // Catch: java.lang.Throwable -> L6e
            if (r5 != r4) goto L8d
            r3 = r3[r2]     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = r3.trim()     // Catch: java.lang.Throwable -> L6e
            r7.f35 = r3     // Catch: java.lang.Throwable -> L6e
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L6e
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L6e
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L6e
            r7.f33 = r1     // Catch: java.lang.Throwable -> L6e
            goto L8d
        L6e:
            r1 = move-exception
            goto L72
        L70:
            r1 = move-exception
            r2 = 0
        L72:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8f
            java.lang.String r4 = "Couldn't list KeyStore Aliases: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L8f
            java.lang.Class r4 = r1.getClass()     // Catch: java.lang.Throwable -> L8f
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Throwable -> L8f
            r3.append(r4)     // Catch: java.lang.Throwable -> L8f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L8f
            com.appsflyer.AFLogger.afErrorLog(r3, r1)     // Catch: java.lang.Throwable -> L8f
            goto L8d
        L8c:
            r2 = 0
        L8d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8f
            return r2
        L8f:
            r1 = move-exception
            monitor-exit(r0)
            goto L93
        L92:
            throw r1
        L93:
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AFKeystoreWrapper.m12():boolean");
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    final void m14(String str) {
        AFLogger.afInfoLog("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 5);
            AlgorithmParameterSpec algorithmParameterSpecBuild = null;
            synchronized (this.f31) {
                if (!this.f34.containsAlias(str)) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        algorithmParameterSpecBuild = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                    } else if (Build.VERSION.SDK_INT >= 18 && !AndroidUtils.m32()) {
                        algorithmParameterSpecBuild = new KeyPairGeneratorSpec.Builder(this.f32).setAlias(str).setSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setSerialNumber(BigInteger.ONE).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
                    }
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(algorithmParameterSpecBuild);
                    keyPairGenerator.generateKeyPair();
                } else {
                    AFLogger.afInfoLog("Alias already exists: ".concat(String.valueOf(str)));
                }
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Exception ");
            sb.append(th.getMessage());
            sb.append(" occurred");
            AFLogger.afErrorLog(sb.toString(), th);
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static boolean m10(String str) {
        return str.startsWith("com.appsflyer");
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    final String m13() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.appsflyer,");
        synchronized (this.f31) {
            sb.append("KSAppsFlyerId=");
            sb.append(this.f35);
            sb.append(",");
            sb.append("KSAppsFlyerRICounter=");
            sb.append(this.f33);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    final String m11() {
        String str;
        synchronized (this.f31) {
            str = this.f35;
        }
        return str;
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    final int m15() {
        int i;
        synchronized (this.f31) {
            i = this.f33;
        }
        return i;
    }
}
