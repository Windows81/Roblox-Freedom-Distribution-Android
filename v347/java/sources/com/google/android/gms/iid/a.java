package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@Deprecated
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, a> f3625a = new android.support.v4.g.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f3626b = TimeUnit.DAYS.toSeconds(7);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static m f3627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static h f3628d;
    private static String e;
    private Context f;
    private String g;

    private a(Context context, String str) {
        this.g = "";
        this.f = context.getApplicationContext();
        this.g = str;
    }

    static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf = String.valueOf(e2);
            Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 38).append("Never happens: can't find own package ").append(strValueOf).toString());
            return 0;
        }
    }

    public static synchronized a a(Context context, Bundle bundle) {
        a aVar;
        String string = bundle == null ? "" : bundle.getString("subtype");
        String str = string == null ? "" : string;
        Context applicationContext = context.getApplicationContext();
        if (f3627c == null) {
            String packageName = applicationContext.getPackageName();
            Log.w("InstanceID", new StringBuilder(String.valueOf(packageName).length() + 73).append("Instance ID SDK is deprecated, ").append(packageName).append(" should update to use Firebase Instance ID").toString());
            f3627c = new m(applicationContext);
            f3628d = new h(applicationContext);
        }
        e = Integer.toString(a(applicationContext));
        aVar = f3625a.get(str);
        if (aVar == null) {
            aVar = new a(applicationContext, str);
            f3625a.put(str, aVar);
        }
        return aVar;
    }

    static String a(KeyPair keyPair) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            bArrDigest[0] = (byte) ((bArrDigest[0] & 15) + 112);
            return Base64.encodeToString(bArrDigest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e2) {
            Log.w("InstanceID", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    public static m b() {
        return f3627c;
    }

    static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf = String.valueOf(e2);
            Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 38).append("Never happens: can't find own package ").append(strValueOf).toString());
            return null;
        }
    }

    @Deprecated
    public static a c(Context context) {
        return a(context, null);
    }

    private final KeyPair c() {
        return f3627c.c(this.g).a();
    }

    @Deprecated
    public String a(String str, String str2, Bundle bundle) throws IOException {
        String strA;
        boolean z = true;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        String strA2 = f3627c.a("appVersion");
        if (strA2 != null && strA2.equals(e) && (strA = f3627c.a("lastToken")) != null) {
            if ((System.currentTimeMillis() / 1000) - Long.valueOf(Long.parseLong(strA)).longValue() <= f3626b) {
                z = false;
            }
        }
        String strA3 = z ? null : f3627c.a(this.g, str, str2);
        if (strA3 == null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            strA3 = b(str, str2, bundle);
            if (strA3 != null) {
                f3627c.a(this.g, str, str2, strA3, e);
            }
        }
        return strA3;
    }

    final void a() {
        f3627c.d(this.g);
    }

    public final String b(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        String str3 = "".equals(this.g) ? str : this.g;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString("subscription", str);
            bundle.putString("subtype", str3);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str3);
        }
        String strA = h.a(f3628d.a(bundle, c()));
        if (!"RST".equals(strA) && !strA.startsWith("RST|")) {
            return strA;
        }
        b.a(this.f, f3627c);
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }
}
