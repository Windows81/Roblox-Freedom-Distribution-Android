package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.ads.a.a;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class h extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a.C0063a f5991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final bw f5992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5993d;
    private boolean e;
    private final Object f;

    h(r rVar) {
        super(rVar);
        this.e = false;
        this.f = new Object();
        this.f5992c = new bw(rVar.c());
    }

    private static String a(String str) {
        MessageDigest messageDigestB = ca.b("MD5");
        if (messageDigestB == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestB.digest(str.getBytes())));
    }

    private final boolean a(a.C0063a c0063a, a.C0063a c0063a2) {
        String strC;
        String strA = c0063a2 == null ? null : c0063a2.a();
        if (TextUtils.isEmpty(strA)) {
            return true;
        }
        String strB = s().b();
        synchronized (this.f) {
            if (!this.e) {
                this.f5993d = f();
                this.e = true;
            } else if (TextUtils.isEmpty(this.f5993d)) {
                String strA2 = c0063a != null ? c0063a.a() : null;
                if (strA2 == null) {
                    String strValueOf = String.valueOf(strA);
                    String strValueOf2 = String.valueOf(strB);
                    return g(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
                }
                String strValueOf3 = String.valueOf(strA2);
                String strValueOf4 = String.valueOf(strB);
                this.f5993d = a(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            }
            String strValueOf5 = String.valueOf(strA);
            String strValueOf6 = String.valueOf(strB);
            String strA3 = a(strValueOf6.length() != 0 ? strValueOf5.concat(strValueOf6) : new String(strValueOf5));
            if (TextUtils.isEmpty(strA3)) {
                return false;
            }
            if (strA3.equals(this.f5993d)) {
                return true;
            }
            if (TextUtils.isEmpty(this.f5993d)) {
                strC = strB;
            } else {
                b("Resetting the client id because Advertising Id changed.");
                strC = s().c();
                a("New client Id", strC);
            }
            String strValueOf7 = String.valueOf(strA);
            String strValueOf8 = String.valueOf(strC);
            return g(strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7));
        }
    }

    private final synchronized a.C0063a d() {
        if (this.f5992c.a(1000L)) {
            this.f5992c.a();
            a.C0063a c0063aE = e();
            if (a(this.f5991b, c0063aE)) {
                this.f5991b = c0063aE;
            } else {
                f("Failed to reset client id on adid change. Not using adid");
                this.f5991b = new a.C0063a("", false);
            }
        }
        return this.f5991b;
    }

    private final a.C0063a e() {
        try {
            return com.google.android.gms.ads.a.a.a(j());
        } catch (IllegalStateException e) {
            e("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        } catch (Exception e2) {
            if (f5990a) {
                return null;
            }
            f5990a = true;
            d("Error getting advertiser id", e2);
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
                    str = str2;
                } catch (FileNotFoundException e) {
                    str = str2;
                } catch (IOException e2) {
                    str = str2;
                    e = e2;
                    d("Error reading Hash file, deleting it", e);
                    j().deleteFile("gaClientIdData");
                    return str;
                }
            }
        } catch (FileNotFoundException e3) {
        } catch (IOException e4) {
            e = e4;
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
            this.f5993d = strA;
            return true;
        } catch (IOException e) {
            e("Error creating hash file", e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
    }

    public final boolean b() {
        y();
        a.C0063a c0063aD = d();
        return (c0063aD == null || c0063aD.b()) ? false : true;
    }

    public final String c() {
        y();
        a.C0063a c0063aD = d();
        String strA = c0063aD != null ? c0063aD.a() : null;
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return strA;
    }
}
