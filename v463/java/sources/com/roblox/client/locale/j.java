package com.roblox.client.locale;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static j f6516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f6517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f6518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f6519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f6520e;
    private org.greenrobot.eventbus.c f;

    public static j a(Context context) {
        if (f6516a == null) {
            synchronized (j.class) {
                if (f6516a == null) {
                    f6516a = new j(context, k.a(), new Configuration(context.getResources().getConfiguration()), b.a(), org.greenrobot.eventbus.c.a());
                }
            }
        }
        return f6516a;
    }

    j(Context context, k kVar, Configuration configuration, b bVar, org.greenrobot.eventbus.c cVar) {
        this.f6518c = context;
        this.f6517b = kVar;
        this.f6519d = configuration;
        this.f6520e = bVar;
        this.f = cVar;
    }

    private f a() {
        b bVar = this.f6520e;
        if (bVar != null) {
            f fVarB = bVar.b();
            if (fVarB != null) {
                return fVarB;
            }
            com.roblox.client.analytics.d.a("App locale value is null");
            com.roblox.client.ae.k.b("rbx.locale", "App locale value is null");
            return f.f6502a;
        }
        com.roblox.client.analytics.d.a("LocaleManager is null in getAppLocale()");
        com.roblox.client.ae.k.b("rbx.locale", "LocaleManger is null in getAppLocale()");
        return f.f6502a;
    }

    public String a(String str) {
        return a(str, a());
    }

    public String a(String str, Object... objArr) {
        try {
            return String.format(a(str), objArr);
        } catch (IllegalFormatException unused) {
            com.roblox.client.analytics.d.a("IllegalFormatException thrown in getString() of StringResourceAccessor");
            return "";
        }
    }

    public String a(String str, f fVar) {
        String strA = this.f6517b.a(str, fVar);
        if (strA == null) {
            strA = b(str, fVar);
        }
        return strA == null ? "" : strA;
    }

    private String b(String str, f fVar) {
        b bVar;
        if (this.f6518c != null && (bVar = this.f6520e) != null) {
            if (fVar.equals(bVar.b())) {
                return b(str);
            }
            return c(str, fVar);
        }
        com.roblox.client.analytics.d.a("Context or LocaleManager is null in getStringFromResources().");
        com.roblox.client.ae.k.b("rbx.locale", "Context or LocaleManager is null in getStringFromResources().");
        return null;
    }

    private String c(String str, f fVar) {
        Configuration configuration = this.f6519d;
        if (configuration != null) {
            configuration.setLocale(new Locale(fVar.b()));
            return a(str, this.f6518c.createConfigurationContext(this.f6519d).getResources());
        }
        com.roblox.client.analytics.d.a("Configuration is null in getStringForLocale().");
        com.roblox.client.ae.k.b("rbx.locale", "Configuration is null in getStringForLocale().");
        return null;
    }

    private String b(String str) {
        return a(str, this.f6518c.getResources());
    }

    private String a(String str, Resources resources) {
        if (resources != null) {
            try {
                return resources.getString(resources.getIdentifier(str, "string", this.f6518c.getPackageName()));
            } catch (Resources.NotFoundException unused) {
                com.roblox.client.analytics.d.a("Resources.NotFoundException thrown in getStringByKeyName() for key: " + str);
                return null;
            }
        }
        com.roblox.client.ae.k.b("rbx.locale", "Resources passed to getStringByKeyName() is null.");
        return null;
    }
}
