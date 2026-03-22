package com.roblox.client.util;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {
    public String a(String str) {
        return str.replaceAll("/+$", "/");
    }

    public String b(String str) {
        return str + "/";
    }

    public String c(String str) {
        return str.replaceAll("/+$", "");
    }

    public String d(String str) {
        if (str.endsWith("//")) {
            return a(str);
        }
        if (!str.endsWith("/")) {
            return b(str);
        }
        return str;
    }

    public String e(String str) {
        return str.substring(str.indexOf(".") + 1, str.length());
    }

    public String f(String str) {
        return str.substring(0, str.indexOf("."));
    }
}
