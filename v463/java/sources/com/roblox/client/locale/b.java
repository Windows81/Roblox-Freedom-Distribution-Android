package com.roblox.client.locale;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.roblox.client.locale.c;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f6456a;
    private a g;
    private c h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f6457b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f6458c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Locale f6459d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f6460e = null;
    private String f = null;
    private c.a i = new c.a() { // from class: com.roblox.client.locale.b.1
        @Override // com.roblox.client.locale.c.a
        public c a(Context context) {
            return new d(context);
        }
    };

    public enum a {
        LOCALE_MODE_LOGIN_SIGN_UP,
        LOCALE_MODE_GENERAL_EXPERIENCE
    }

    public static b a() {
        if (f6456a == null) {
            synchronized (b.class) {
                if (f6456a == null) {
                    f6456a = new b();
                }
            }
        }
        return f6456a;
    }

    b() {
    }

    private c d(Context context) {
        if (this.h == null) {
            this.h = this.i.a(context);
        }
        return this.h;
    }

    public f a(Context context) {
        f fVar = this.f6458c;
        if (fVar != null) {
            return fVar;
        }
        f fVarA = d(context).a();
        return fVarA == null ? e() : fVarA;
    }

    private f e() {
        Locale localeC = c();
        if (localeC != null) {
            String country = localeC.getCountry();
            String language = localeC.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                if (!TextUtils.isEmpty(country)) {
                    language = language + "_" + country;
                }
                f fVarB = f.b(language);
                return fVarB != null ? fVarB : f.f6502a;
            }
        }
        return f.f6502a;
    }

    void a(f fVar) {
        this.f6458c = fVar;
    }

    public void a(f fVar, Context context) {
        a(fVar);
        d(context).a(this.f6458c);
    }

    public void b(Context context) {
        f fVarB = this.f6457b;
        if (fVarB == null) {
            com.roblox.client.ae.k.b("rbx.locale", "mUserLocale is empty");
            fVarB = d(context).b();
            if (fVarB == null) {
                com.roblox.client.ae.k.b("rbx.locale", "No stored value for mUserLocale.");
                fVarB = e();
            }
        }
        com.roblox.client.ae.k.b("rbx.locale", "Updating App configuration based on locale = " + fVarB);
        a(context, fVarB);
    }

    public f b() {
        return this.f6457b;
    }

    public String c(Context context) {
        String strA = this.f;
        if (strA == null && context != null) {
            com.roblox.client.ae.k.a("rbx.locale", "mUGCLocaleCode is Empty");
            f fVarC = d(context).c();
            if (fVarC != null) {
                strA = fVarC.a();
            }
            if (strA == null) {
                com.roblox.client.ae.k.b("rbx.locale", "No stored value for mUGCLocaleCode. Use English");
                strA = f.f6502a.a();
            }
        }
        com.roblox.client.ae.k.a("rbx.locale", "mUGCLocaleCode value is: " + strA);
        return strA;
    }

    public void a(Context context, String str) {
        this.f = str;
        d(context).a(this.f);
    }

    public Locale c() {
        return this.f6459d;
    }

    public void a(Locale locale) {
        this.f6459d = locale;
    }

    public void b(f fVar) {
        this.f6460e = fVar;
    }

    public void a(a aVar) {
        this.g = aVar;
    }

    public a d() {
        return this.g;
    }

    public boolean c(f fVar) {
        return this.f6457b.equals(fVar);
    }

    public boolean b(f fVar, Context context) {
        if (fVar == null) {
            return false;
        }
        boolean z = !c(fVar);
        if (!z || context == null) {
            return z;
        }
        d(context).b(fVar);
        a(context, fVar);
        return z;
    }

    private Context a(Context context, f fVar) {
        this.f6457b = fVar;
        String strB = fVar.b();
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT >= 24) {
            return a(context, strB, resources, resources.getConfiguration());
        }
        return b(context, strB, resources, resources.getConfiguration());
    }

    private Context a(Context context, String str, Resources resources, Configuration configuration) {
        Locale localeA = a(str);
        Locale.setDefault(localeA);
        configuration.setLocale(localeA);
        configuration.setLayoutDirection(localeA);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return context.createConfigurationContext(configuration);
    }

    private Context b(Context context, String str, Resources resources, Configuration configuration) {
        Locale localeA = a(str);
        Locale.setDefault(localeA);
        configuration.locale = localeA;
        configuration.setLayoutDirection(localeA);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return context;
    }

    public static Locale a(String str) {
        if (str.contains("_")) {
            String[] strArrSplit = str.split("_");
            return new Locale(strArrSplit[0], strArrSplit[1]);
        }
        return new Locale(str);
    }
}
