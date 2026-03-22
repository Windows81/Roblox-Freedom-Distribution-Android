package com.roblox.client.ae;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {
    public String a(String str) {
        return str.replaceAll("/+$", "/");
    }

    public String b(String str) {
        return str + "/";
    }

    public String c(String str) {
        if (str.endsWith("//")) {
            return a(str);
        }
        return !str.endsWith("/") ? b(str) : str;
    }

    public String d(String str) {
        return str.substring(0, str.indexOf("."));
    }

    public static String e(String str) {
        if (str == null || str.startsWith("https://") || str.startsWith("http://")) {
            return str;
        }
        if (!str.contains(com.roblox.client.u.b())) {
            return com.roblox.client.u.d() + str;
        }
        return "https://" + str;
    }
}
