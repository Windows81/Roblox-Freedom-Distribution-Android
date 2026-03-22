package com.roblox.client.ae;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class t {
    public static int a(String str, char c2) {
        if (str == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == c2) {
                i++;
            }
        }
        return i;
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public static String a(String str) {
        if (str == null) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            k.e("StringUtils", "Invalid character in stringToEncode. Error: " + e2.getMessage());
            return null;
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(), 0, str.length());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] c(String str) throws IllegalArgumentException {
        return com.roblox.client.ae.b.b.a(str);
    }

    public static String d(String str) {
        char cCharAt;
        char upperCase;
        if (str == null || str.length() == 0 || cCharAt == (upperCase = Character.toUpperCase((cCharAt = str.charAt(0))))) {
            return str;
        }
        return upperCase + str.substring(1);
    }
}
