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
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class ca {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f5953a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static double a(String str, double d2) {
        if (str == null) {
            return 100.0d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            return 100.0d;
        }
    }

    public static long a(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    public static ce a(bj bjVar, String str) {
        com.google.android.gms.common.internal.w.a(bjVar);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new HashMap();
        try {
            String strValueOf = String.valueOf(str);
            Map<String, String> mapA = com.google.android.gms.common.util.k.a(new URI(strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?")), Constants.UTF8_NAME);
            ce ceVar = new ce();
            ceVar.e(mapA.get("utm_content"));
            ceVar.c(mapA.get("utm_medium"));
            ceVar.a(mapA.get("utm_campaign"));
            ceVar.b(mapA.get("utm_source"));
            ceVar.d(mapA.get("utm_term"));
            ceVar.f(mapA.get("utm_id"));
            ceVar.g(mapA.get("anid"));
            ceVar.h(mapA.get("gclid"));
            ceVar.i(mapA.get("dclid"));
            ceVar.j(mapA.get("aclid"));
            return ceVar;
        } catch (URISyntaxException e) {
            bjVar.d("No valid campaign data found", e);
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
            sb.append("-").append(locale.getCountry().toLowerCase(locale));
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
        if (d2 <= 0.0d || d2 >= 100.0d) {
            return false;
        }
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
        return ((double) (i % 10000)) >= 100.0d * d2;
    }

    public static boolean a(Context context, String str) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, str), 0);
            if (serviceInfo != null) {
                return serviceInfo.enabled;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean a(Context context, String str, boolean z) {
        try {
            ActivityInfo receiverInfo = context.getPackageManager().getReceiverInfo(new ComponentName(context, str), 0);
            if (receiverInfo == null || !receiverInfo.enabled) {
                return false;
            }
            if (z) {
                if (!receiverInfo.exported) {
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean a(String str, boolean z) {
        if (str == null || str.equalsIgnoreCase("true") || str.equalsIgnoreCase("yes") || str.equalsIgnoreCase("1")) {
            return true;
        }
        return (str.equalsIgnoreCase("false") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("0")) ? false : true;
    }

    public static MessageDigest b(String str) {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                return null;
            }
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
            i = i2 + 1;
        }
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
