package com.google.android.gms.common.util;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f3568a = Pattern.compile("\\$\\{(.*?)\\}");

    public static String a(String str) {
        return str == null ? "" : str;
    }

    public static boolean b(String str) {
        return str == null || str.trim().isEmpty();
    }
}
