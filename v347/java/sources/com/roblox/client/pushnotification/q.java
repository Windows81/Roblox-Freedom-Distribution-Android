package com.roblox.client.pushnotification;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class q {
    public String a(Context context, String str) {
        return a(context).getString(str, null);
    }

    public void a(Context context, String str, String str2) {
        SharedPreferences.Editor editorB = b(context);
        editorB.putString(str, str2);
        editorB.apply();
    }

    public boolean b(Context context, String str) {
        return a(context).getBoolean(str, false);
    }

    public void a(Context context, String str, boolean z) {
        SharedPreferences.Editor editorB = b(context);
        editorB.putBoolean(str, z);
        editorB.apply();
    }

    private SharedPreferences a(Context context) {
        return com.roblox.client.util.m.a(context, "NotificationPreferences");
    }

    private SharedPreferences.Editor b(Context context) {
        return a(context).edit();
    }
}
