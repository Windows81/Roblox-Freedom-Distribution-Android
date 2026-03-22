package com.roblox.client;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RobloxApplication extends Application {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f5575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Locale f5576b;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f5575a = getApplicationContext();
        f5576b = Locale.getDefault();
        f.a(f5575a, f.f5993a, f5575a.getCacheDir().getPath());
    }

    public static Locale a() {
        return f5576b;
    }

    public static Context b() {
        return f5575a;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        try {
            super.attachBaseContext(context);
            androidx.g.a.a(this);
        } catch (RuntimeException unused) {
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 24) {
            com.roblox.client.locale.b.a().a(configuration.getLocales().get(0));
        } else {
            com.roblox.client.locale.b.a().a(configuration.locale);
        }
    }

    public static void a(String str, int i) {
        if (i == 5) {
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_RUNNING_MODERATE");
            return;
        }
        if (i == 10) {
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_RUNNING_LOW");
            return;
        }
        if (i == 15) {
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_RUNNING_CRITICAL");
            return;
        }
        if (i == 20) {
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_UI_HIDDEN");
            return;
        }
        if (i == 40) {
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_BACKGROUND");
        } else if (i == 60) {
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_MODERATE");
        } else {
            if (i != 80) {
                return;
            }
            com.roblox.client.ae.k.d(str, "TRIM_MEMORY_COMPLETE");
        }
    }
}
