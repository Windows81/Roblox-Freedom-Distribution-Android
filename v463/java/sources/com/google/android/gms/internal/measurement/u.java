package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.a.a.a;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class u extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f4695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a.C0076a f4696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cj f4697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4699e;
    private final Object f;

    u(ae aeVar) {
        super(aeVar);
        this.f4699e = false;
        this.f = new Object();
        this.f4697c = new cj(aeVar.c());
    }

    private static String a(String str) {
        MessageDigest messageDigestB = cn.b("MD5");
        if (messageDigestB == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestB.digest(str.getBytes())));
    }

    private final boolean a(a.C0076a c0076a, a.C0076a c0076a2) {
        String strA = null;
        String strA2 = c0076a2 == null ? null : c0076a2.a();
        if (TextUtils.isEmpty(strA2)) {
            return true;
        }
        String strB = s().b();
        synchronized (this.f) {
            if (!this.f4699e) {
                this.f4698d = f();
                this.f4699e = true;
            } else if (TextUtils.isEmpty(this.f4698d)) {
                if (c0076a != null) {
                    strA = c0076a.a();
                }
                if (strA == null) {
                    String strValueOf = String.valueOf(strA2);
                    String strValueOf2 = String.valueOf(strB);
                    return g(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
                }
                String strValueOf3 = String.valueOf(strA);
                String strValueOf4 = String.valueOf(strB);
                this.f4698d = a(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            }
            String strValueOf5 = String.valueOf(strA2);
            String strValueOf6 = String.valueOf(strB);
            String strA3 = a(strValueOf6.length() != 0 ? strValueOf5.concat(strValueOf6) : new String(strValueOf5));
            if (TextUtils.isEmpty(strA3)) {
                return false;
            }
            if (strA3.equals(this.f4698d)) {
                return true;
            }
            if (!TextUtils.isEmpty(this.f4698d)) {
                b("Resetting the client id because Advertising Id changed.");
                strB = s().c();
                a("New client Id", strB);
            }
            String strValueOf7 = String.valueOf(strA2);
            String strValueOf8 = String.valueOf(strB);
            return g(strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7));
        }
    }

    private final synchronized a.C0076a d() {
        if (this.f4697c.a(1000L)) {
            this.f4697c.a();
            a.C0076a c0076aE = e();
            if (!a(this.f4696b, c0076aE)) {
                f("Failed to reset client id on adid change. Not using adid");
                c0076aE = new a.C0076a("", false);
            }
            this.f4696b = c0076aE;
        }
        return this.f4696b;
    }

    private final a.C0076a e() {
        try {
            return com.google.android.gms.a.a.a.a(j());
        } catch (IllegalStateException unused) {
            e("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        } catch (Exception e2) {
            if (!f4695a) {
                f4695a = true;
                d("Error getting advertiser id", e2);
            }
            return null;
        }
    }

    private final String f() {
        String str = null;
        try {
            FileInputStream fileInputStreamOpenFileInput = j().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int i = fileInputStreamOpenFileInput.read(bArr, 0, 128);
            if (fileInputStreamOpenFileInput.available() > 0) {
                e("Hash file seems corrupted, deleting it.");
                fileInputStreamOpenFileInput.close();
                j().deleteFile("gaClientIdData");
            } else if (i <= 0) {
                b("Hash file is empty.");
                fileInputStreamOpenFileInput.close();
            } else {
                String str2 = new String(bArr, 0, i);
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (FileNotFoundException unused) {
                } catch (IOException e2) {
                    e = e2;
                    str = str2;
                    d("Error reading Hash file, deleting it", e);
                    j().deleteFile("gaClientIdData");
                    return str;
                }
                str = str2;
            }
        } catch (FileNotFoundException unused2) {
        } catch (IOException e3) {
            e = e3;
        }
        return str;
    }

    private final boolean g(String str) {
        try {
            String strA = a(str);
            b("Storing hashed adid.");
            FileOutputStream fileOutputStreamOpenFileOutput = j().openFileOutput("gaClientIdData", 0);
            fileOutputStreamOpenFileOutput.write(strA.getBytes());
            fileOutputStreamOpenFileOutput.close();
            this.f4698d = strA;
            return true;
        } catch (IOException e2) {
            e("Error creating hash file", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
    }

    public final boolean b() {
        y();
        a.C0076a c0076aD = d();
        return (c0076aD == null || c0076aD.b()) ? false : true;
    }

    public final String c() {
        y();
        a.C0076a c0076aD = d();
        String strA = c0076aD != null ? c0076aD.a() : null;
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return strA;
    }
}
