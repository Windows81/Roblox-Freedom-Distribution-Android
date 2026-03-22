package com.roblox.client;

import com.appsflyer.internal.referrer.Payload;
import com.roblox.client.datastructures.NameValuePair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6626a;

    public static void a(String str) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().b(str);
        }
    }

    public static void a(String str, String str2, int i, int i2) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().a(str, str2, i, i2);
        }
    }

    public static void b(String str) {
        String str2;
        if (b.o()) {
            if (str == null || str.equalsIgnoreCase("splash") || (str2 = f6626a) == null || !str2.equalsIgnoreCase(str)) {
                com.roblox.client.ae.k.c("rbx.eventstream", "fireScreenLoaded() " + str);
                f6626a = str;
                com.roblox.client.analytics.c.a().c(str);
            }
        }
    }

    public static void c(String str) {
        if (b.o()) {
            com.roblox.client.ae.k.c("rbx.eventstream", "fireScreenUnloaded() " + str);
            com.roblox.client.analytics.c.a().d(str);
        }
    }

    public static void a(String str, String str2, String str3) {
        com.roblox.client.analytics.c.a().a(str, str2, str3);
    }

    public static void a(String str, String str2) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().a(str, str2);
        }
    }

    public static void b(String str, String str2, String str3) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().b(str, str2, str3);
        }
    }

    public static void a(String str, String str2, boolean z) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().a(str, str2, z);
        }
    }

    public static void a(String str, String str2, String str3, boolean z) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().a(str, str2, z, str3);
        }
    }

    public static void c(String str, String str2, String str3) {
        if (b.o()) {
            com.roblox.client.analytics.c.a().c(str, str2, str3);
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        com.roblox.client.analytics.c.a().a(str, str2, str3, str4, str5, str6, z);
        a();
    }

    public static void a(String str, String str2, String str3, String str4, String str5, boolean z) {
        a(str, str2, str3, str4, null, str5, z);
    }

    public static void a(String str, String str2, String str3, String str4, String str5) {
        com.roblox.client.analytics.c.a().a(str, str2, str3, str4, str5);
        a();
    }

    public static void d(String str, String str2, String str3) {
        a(str, str2, null, null, str3);
    }

    public static void a(String str, boolean z) {
        com.roblox.client.analytics.c.a().a(str, z);
    }

    public static void d(String str) {
        com.roblox.client.analytics.c.a().e(str);
    }

    public static void b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair(Payload.TYPE, str2));
        a(str, "logout", arrayList);
    }

    public static void c(String str, String str2) {
        com.roblox.client.analytics.c.a().b(str, str2);
        a();
    }

    public static void e(String str, String str2, String str3) {
        com.roblox.client.analytics.c.a().d(str, str2, str3);
    }

    public static void a(String str, String str2, List<NameValuePair> list) {
        com.roblox.client.analytics.c.a().a(str, str2, list);
    }

    public static void d(String str, String str2) {
        a(str, str2, (List<NameValuePair>) null);
    }

    public static void a(String str, List<NameValuePair> list) {
        a(str, "contactFriendFinder", list);
    }

    public static void a(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("property", String.valueOf(i)));
        a("nsOpenContent", "touch", arrayList);
    }

    public static void f(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(new NameValuePair("recipientId", str2));
        arrayList.add(new NameValuePair("senderId", str));
        arrayList.add(new NameValuePair("fromInApp", String.valueOf(true)));
        arrayList.add(new NameValuePair("fromInGame", String.valueOf(false)));
        arrayList.add(new NameValuePair("pg", str3));
        a("friending", "request", arrayList);
    }

    public static void g(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(new NameValuePair("recipientId", str2));
        arrayList.add(new NameValuePair("senderId", str));
        arrayList.add(new NameValuePair("fromInApp", String.valueOf(true)));
        arrayList.add(new NameValuePair("fromInGame", String.valueOf(false)));
        arrayList.add(new NameValuePair("pg", str3));
        a("friending", "accept", arrayList);
    }

    public static void a() {
        com.roblox.client.analytics.c.a().c();
    }
}
