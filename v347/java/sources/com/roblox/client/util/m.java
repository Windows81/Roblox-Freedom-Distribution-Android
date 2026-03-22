package com.roblox.client.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.roblox.client.RobloxSettings;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f7929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f7930b;

    public m(Context context) {
        this.f7930b = context;
    }

    public static m a(Context context) {
        if (f7929a == null) {
            synchronized (m.class) {
                if (f7929a == null) {
                    f7929a = new m(context);
                }
            }
        }
        return f7929a;
    }

    public SharedPreferences a(String str) {
        return a(str, false);
    }

    public SharedPreferences a() {
        return a("prefs", false);
    }

    public SharedPreferences a(String str, boolean z) {
        if (!z && com.roblox.client.d.b.a() && RobloxSettings.isTestSite()) {
            str = RobloxSettings.getDomain() + "_" + str;
            g.c("rbx.prefs", "Using SharedPreference file:" + str);
        }
        return this.f7930b.getSharedPreferences(str, 0);
    }

    @Deprecated
    public static SharedPreferences a(Context context, String str) {
        return a(context, str, false);
    }

    @Deprecated
    public static SharedPreferences a(Context context, String str, boolean z) {
        if (!z && com.roblox.client.d.b.a() && RobloxSettings.isTestSite()) {
            str = RobloxSettings.getDomain() + "_" + str;
            g.c("rbx.prefs", "Using SharedPreference file:" + str);
        }
        return context.getSharedPreferences(str, 0);
    }
}
