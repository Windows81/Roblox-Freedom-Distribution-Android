package com.roblox.client.util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n {
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
        if (str != null) {
            String strEncode = null;
            try {
                strEncode = URLEncoder.encode(str, Constants.UTF8_NAME);
            } catch (UnsupportedEncodingException e) {
                g.e("StringUtils", "Invalid character in stringToEncode. Error: " + e.getMessage());
            }
            return strEncode;
        }
        return str;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(), 0, str.length());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
