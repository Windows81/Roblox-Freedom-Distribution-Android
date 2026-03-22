package com.roblox.client.locale;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public static String a(Context context, String str, int i) {
        if (context == null) {
            com.roblox.client.ae.k.e("rbx.locale", "context is null");
            com.roblox.client.analytics.d.a("Context passed to getStringValue() in DynamicStringUtils is null.");
            return "";
        }
        if (com.roblox.client.b.n()) {
            return j.a(context).a(str);
        }
        return context.getString(i);
    }
}
