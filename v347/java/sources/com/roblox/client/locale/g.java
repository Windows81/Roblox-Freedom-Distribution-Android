package com.roblox.client.locale;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f7392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f7393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f7394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f7395d;
    private a e;
    private org.greenrobot.eventbus.c f;

    public static g a(Context context) {
        if (f7392a == null) {
            synchronized (g.class) {
                if (f7392a == null) {
                    f7392a = new g(context, h.a(), new Configuration(context.getResources().getConfiguration()), a.a(), org.greenrobot.eventbus.c.a());
                }
            }
        }
        return f7392a;
    }

    g(Context context, h hVar, Configuration configuration, a aVar, org.greenrobot.eventbus.c cVar) {
        this.f7394c = context;
        this.f7393b = hVar;
        this.f7395d = configuration;
        this.e = aVar;
        this.f = cVar;
    }

    private c a() {
        if (this.e != null) {
            c cVarB = this.e.b();
            if (cVarB == null) {
                com.roblox.client.b.c.a("App locale value is null");
                com.roblox.client.util.g.b("rbx.locale", "App locale value is null");
                return c.ENGLISH;
            }
            return cVarB;
        }
        com.roblox.client.b.c.a("LocaleManager is null in getAppLocale()");
        com.roblox.client.util.g.b("rbx.locale", "LocaleManger is null in getAppLocale()");
        return c.ENGLISH;
    }

    public String a(String str) {
        return a(str, a());
    }

    public String a(String str, c cVar) {
        String strA = this.f7393b.a(str, cVar);
        if (strA == null) {
            strA = b(str, cVar);
        }
        return strA == null ? "" : strA;
    }

    private String b(String str, c cVar) {
        if (this.f7394c != null && this.e != null) {
            if (cVar.equals(this.e.b())) {
                return b(str);
            }
            return c(str, cVar);
        }
        com.roblox.client.b.c.a("Context or LocaleManager is null in getStringFromResources().");
        com.roblox.client.util.g.b("rbx.locale", "Context or LocaleManager is null in getStringFromResources().");
        return null;
    }

    private String c(String str, c cVar) {
        return Build.VERSION.SDK_INT >= 17 ? d(str, cVar) : b(str);
    }

    @TargetApi(17)
    private String d(String str, c cVar) {
        if (this.f7395d != null) {
            this.f7395d.setLocale(new Locale(cVar.b()));
            return a(str, this.f7394c.createConfigurationContext(this.f7395d).getResources());
        }
        com.roblox.client.b.c.a("Configuration is null in getStringForApiLevel17AndAbove().");
        com.roblox.client.util.g.b("rbx.locale", "Configuration is null in getStringForApiLevel17AndAbove().");
        return null;
    }

    private String b(String str) {
        return a(str, this.f7394c.getResources());
    }

    private String a(String str, Resources resources) {
        if (resources != null) {
            return resources.getString(resources.getIdentifier(str, "string", this.f7394c.getPackageName()));
        }
        com.roblox.client.b.c.a("Resources passed to getStringByKeyName() is null.");
        com.roblox.client.util.g.b("rbx.locale", "Resources passed to getStringByKeyName() is null.");
        return null;
    }
}
