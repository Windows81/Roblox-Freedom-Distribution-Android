package com.appsflyer;

import java.security.MessageDigest;
import java.util.Formatter;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class v {
    v() {
    }

    public final String a(Map<String, Object> map) {
        return a(((String) map.get("appsflyerKey")).substring(0, 7) + ((String) map.get("uid")).substring(0, 7) + ((String) map.get("af_timestamp")).substring(r1.length() - 7));
    }

    public final String b(Map<String, Object> map) {
        return a(b(((((((String) map.get("appsflyerKey")) + map.get("af_timestamp")) + map.get("uid")) + map.get("installDate")) + map.get("counter")) + map.get("iaecounter")));
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            messageDigest.update(str.getBytes(Constants.UTF8_NAME));
            return a(messageDigest.digest());
        } catch (Exception e) {
            c.a("Error turning " + str.substring(0, 6) + ".. to SHA1", e);
            return null;
        }
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes(Constants.UTF8_NAME));
            return a(messageDigest.digest());
        } catch (Exception e) {
            c.a("Error turning " + str.substring(0, 6) + ".. to MD5", e);
            return null;
        }
    }

    private static String a(byte[] bArr) {
        Formatter formatter = new Formatter();
        for (byte b2 : bArr) {
            formatter.format("%02x", Byte.valueOf(b2));
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }

    public static String a(long j) {
        StringBuilder sb = new StringBuilder();
        sb.append(g.a().a("AppsFlyerKey")).append(j);
        return a(sb.toString());
    }
}
