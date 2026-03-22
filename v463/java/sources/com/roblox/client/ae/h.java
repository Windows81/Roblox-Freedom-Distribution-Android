package com.roblox.client.ae;

import android.content.Context;
import android.content.res.Configuration;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {
    public static Context a(Context context) {
        return b(context);
    }

    private static Context b(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        if (configuration.fontScale > 1.0f) {
            configuration.fontScale = 1.0f;
        }
        return context.createConfigurationContext(configuration);
    }
}
