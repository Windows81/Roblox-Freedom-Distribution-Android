package com.roblox.client.ae;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static s f5651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f5652b;

    public s(Context context) {
        this.f5652b = context;
    }

    public static s a(Context context) {
        if (f5651a == null) {
            synchronized (s.class) {
                if (f5651a == null) {
                    f5651a = new s(context);
                }
            }
        }
        return f5651a;
    }

    public SharedPreferences a(String str) {
        return a(str, false);
    }

    public SharedPreferences a() {
        return a("prefs", false);
    }

    public SharedPreferences a(String str, boolean z) {
        if (!z && com.roblox.client.i.b.a() && com.roblox.client.u.r()) {
            str = com.roblox.client.u.f() + "_" + str;
            k.c("rbx.prefs", "Using SharedPreference file:" + str);
        }
        return this.f5652b.getSharedPreferences(str, 0);
    }

    @Deprecated
    public static SharedPreferences a(Context context, String str) {
        return a(context, str, false);
    }

    @Deprecated
    public static SharedPreferences a(Context context, String str, boolean z) {
        if (!z && com.roblox.client.i.b.a() && com.roblox.client.u.r()) {
            str = com.roblox.client.u.f() + "_" + str;
            k.c("rbx.prefs", "Using SharedPreference file:" + str);
        }
        return context.getSharedPreferences(str, 0);
    }
}
