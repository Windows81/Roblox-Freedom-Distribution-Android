package com.roblox.client;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RobloxApplication extends Application {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f6429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Locale f6430b;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f6429a = getApplicationContext();
        f6430b = Locale.getDefault();
    }

    public static Locale a() {
        return f6430b;
    }

    public static Context b() {
        return f6429a;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        try {
            super.attachBaseContext(context);
            android.support.d.a.a(this);
        } catch (RuntimeException e) {
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 24) {
            com.roblox.client.locale.a.a().a(configuration.getLocales().get(0));
        } else {
            com.roblox.client.locale.a.a().a(configuration.locale);
        }
    }

    public static void a(String str, int i) {
        switch (i) {
            case 5:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_RUNNING_MODERATE");
                break;
            case 10:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_RUNNING_LOW");
                break;
            case 15:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_RUNNING_CRITICAL");
                break;
            case 20:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_UI_HIDDEN");
                break;
            case 40:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_BACKGROUND");
                break;
            case 60:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_MODERATE");
                break;
            case 80:
                com.roblox.client.util.g.d(str, "TRIM_MEMORY_COMPLETE");
                break;
        }
    }
}
