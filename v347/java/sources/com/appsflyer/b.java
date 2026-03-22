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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private KeyStore f2183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f2184c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2182a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2185d = "";
    private int e = 0;

    public b(Context context) {
        this.f2184c = context;
        e();
    }

    private void e() {
        c.c("Initialising KeyStore..");
        try {
            this.f2183b = KeyStore.getInstance("AndroidKeyStore");
            this.f2183b.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            c.a("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    void a(String str) {
        this.f2185d = str;
        this.e = 0;
        b(f());
    }

    void a() {
        String strF = f();
        synchronized (this.f2182a) {
            this.e++;
            c(strF);
        }
        b(f());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
    
        r4 = r0.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        if (r4.length != 3) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        com.appsflyer.c.c("Found a matching AF key with alias:\n" + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
    
        r0 = r4[1].trim().split("=");
        r2 = r4[2].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        if (r0.length != 2) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
    
        if (r2.length != 2) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
    
        r8.f2185d = r0[1].trim();
        r8.e = java.lang.Integer.parseInt(r2[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009a, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean b() {
        /*
            r8 = this;
            r7 = 2
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r8.f2182a
            monitor-enter(r3)
            java.security.KeyStore r0 = r8.f2183b     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L9c
            java.security.KeyStore r0 = r8.f2183b     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            java.util.Enumeration r4 = r0.aliases()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
        L10:
            boolean r0 = r4.hasMoreElements()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            if (r0 == 0) goto L78
            java.lang.Object r0 = r4.nextElement()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            if (r0 == 0) goto L10
            boolean r5 = r8.d(r0)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            if (r5 == 0) goto L10
            java.lang.String r4 = ","
            java.lang.String[] r4 = r0.split(r4)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            int r5 = r4.length     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            r6 = 3
            if (r5 != r6) goto L78
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            java.lang.String r6 = "Found a matching AF key with alias:\n"
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            java.lang.StringBuilder r0 = r5.append(r0)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            com.appsflyer.c.c(r0)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L97
            r0 = 1
            r0 = r4[r0]     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            java.lang.String r2 = "="
            java.lang.String[] r0 = r0.split(r2)     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            r2 = 2
            r2 = r4[r2]     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            java.lang.String r2 = r2.trim()     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            java.lang.String r4 = "="
            java.lang.String[] r2 = r2.split(r4)     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            int r4 = r0.length     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            if (r4 != r7) goto L76
            int r4 = r2.length     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            if (r4 != r7) goto L76
            r4 = 1
            r0 = r0[r4]     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            r8.f2185d = r0     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            r0 = 1
            r0 = r2[r0]     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
            r8.e = r0     // Catch: java.lang.Throwable -> L97 java.lang.Throwable -> L9a
        L76:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L97
            return r1
        L78:
            r1 = r2
            goto L76
        L7a:
            r0 = move-exception
            r1 = r2
        L7c:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            java.lang.String r4 = "Couldn't list KeyStore Aliases: "
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L97
            java.lang.Class r4 = r0.getClass()     // Catch: java.lang.Throwable -> L97
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Throwable -> L97
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L97
            com.appsflyer.c.a(r2, r0)     // Catch: java.lang.Throwable -> L97
            goto L76
        L97:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L97
            throw r0
        L9a:
            r0 = move-exception
            goto L7c
        L9c:
            r1 = r2
            goto L76
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.b.b():boolean");
    }

    private void b(String str) {
        c.c("Creating a new key with alias: " + str);
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 5);
            AlgorithmParameterSpec algorithmParameterSpecBuild = null;
            synchronized (this.f2182a) {
                if (!this.f2183b.containsAlias(str)) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        algorithmParameterSpecBuild = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                    } else if (Build.VERSION.SDK_INT >= 18 && !m.c()) {
                        algorithmParameterSpecBuild = new KeyPairGeneratorSpec.Builder(this.f2184c).setAlias(str).setSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setSerialNumber(BigInteger.ONE).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
                    }
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(algorithmParameterSpecBuild);
                    keyPairGenerator.generateKeyPair();
                } else {
                    c.c("Alias already exists: " + str);
                }
            }
        } catch (Throwable th) {
            c.a("Exception " + th.getMessage() + " occurred", th);
        }
    }

    private void c(String str) {
        c.c("Deleting key with alias: " + str);
        try {
            synchronized (this.f2182a) {
                this.f2183b.deleteEntry(str);
            }
        } catch (KeyStoreException e) {
            c.a("Exception " + e.getMessage() + " occurred", e);
        }
    }

    private boolean d(String str) {
        return str.startsWith("com.appsflyer");
    }

    private String f() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.appsflyer,");
        synchronized (this.f2182a) {
            sb.append("KSAppsFlyerId=").append(this.f2185d).append(",");
            sb.append("KSAppsFlyerRICounter=").append(this.e);
        }
        return sb.toString();
    }

    String c() {
        String str;
        synchronized (this.f2182a) {
            str = this.f2185d;
        }
        return str;
    }

    int d() {
        int i;
        synchronized (this.f2182a) {
            i = this.e;
        }
        return i;
    }
}
