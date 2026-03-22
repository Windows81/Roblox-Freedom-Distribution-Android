package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f4152a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static double a(String str, double d2) {
        if (str == null) {
            return 100.0d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return 100.0d;
        }
    }

    public static long a(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static jr a(bw bwVar, String str) {
        com.google.android.gms.common.internal.aa.a(bwVar);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new HashMap();
        try {
            String strValueOf = String.valueOf(str);
            Map<String, String> mapA = com.google.android.gms.common.util.k.a(new URI(strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?")), "UTF-8");
            jr jrVar = new jr();
            jrVar.e(mapA.get("utm_content"));
            jrVar.c(mapA.get("utm_medium"));
            jrVar.a(mapA.get("utm_campaign"));
            jrVar.b(mapA.get("utm_source"));
            jrVar.d(mapA.get("utm_term"));
            jrVar.f(mapA.get("utm_id"));
            jrVar.g(mapA.get("anid"));
            jrVar.h(mapA.get("gclid"));
            jrVar.i(mapA.get("dclid"));
            jrVar.j(mapA.get("aclid"));
            return jrVar;
        } catch (URISyntaxException e2) {
            bwVar.d("No valid campaign data found", e2);
            return null;
        }
    }

    public static String a(Locale locale) {
        if (locale == null) {
            return null;
        }
        String language = locale.getLanguage();
        if (TextUtils.isEmpty(language)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(language.toLowerCase(locale));
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry().toLowerCase(locale));
        }
        return sb.toString();
    }

    public static String a(boolean z) {
        return z ? "1" : "0";
    }

    public static void a(Map<String, String> map, String str, String str2) {
        if (str2 == null || map.containsKey(str)) {
            return;
        }
        map.put(str, str2);
    }

    public static void a(Map<String, String> map, String str, Map<String, String> map2) {
        a(map, str, map2.get(str));
    }

    public static void a(Map<String, String> map, String str, boolean z) {
        if (map.containsKey(str)) {
            return;
        }
        map.put(str, z ? "1" : "0");
    }

    public static boolean a(double d2, String str) {
        int i;
        if (d2 > 0.0d && d2 < 100.0d) {
            if (TextUtils.isEmpty(str)) {
                i = 1;
            } else {
                i = 0;
                for (int length = str.length() - 1; length >= 0; length--) {
                    char cCharAt = str.charAt(length);
                    i = ((i << 6) & 268435455) + cCharAt + (cCharAt << 14);
                    int i2 = 266338304 & i;
                    if (i2 != 0) {
                        i ^= i2 >> 21;
                    }
                }
            }
            if (i % 10000 >= d2 * 100.0d) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context, String str) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, str), 0);
            if (serviceInfo != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean a(Context context, String str, boolean z) {
        try {
            ActivityInfo receiverInfo = context.getPackageManager().getReceiverInfo(new ComponentName(context, str), 0);
            if (receiverInfo != null && receiverInfo.enabled) {
                if (!z) {
                    return true;
                }
                if (receiverInfo.exported) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean a(String str, boolean z) {
        return str == null || str.equalsIgnoreCase("true") || str.equalsIgnoreCase("yes") || str.equalsIgnoreCase("1") || !(str.equalsIgnoreCase("false") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("0"));
    }

    public static MessageDigest b(String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static void b(Map<String, String> map, String str, String str2) {
        if (str2 == null || !TextUtils.isEmpty(map.get(str))) {
            return;
        }
        map.put(str, str2);
    }

    public static boolean c(String str) {
        return TextUtils.isEmpty(str) || !str.startsWith("http:");
    }
}
