package com.roblox.client.z;

import com.roblox.client.p;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f7575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f7576b;

    public static void a(String str) {
        f7576b = str;
    }

    public static void b(String str) {
        f7575a = str;
    }

    public static void a() {
        p.c(f7576b, f7575a);
        f7576b = null;
        f7575a = null;
    }
}
