package com.roblox.client.locale;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.roblox.client.util.m;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f7340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f7341b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f7342c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Locale f7343d = null;
    private c e = null;
    private c f = null;
    private EnumC0115a g;

    /* JADX INFO: renamed from: com.roblox.client.locale.a$a, reason: collision with other inner class name */
    public enum EnumC0115a {
        LOCALE_MODE_LOGIN_SIGN_UP,
        LOCALE_MODE_GENERAL_EXPERIENCE
    }

    public static a a() {
        if (f7340a == null) {
            synchronized (a.class) {
                if (f7340a == null) {
                    f7340a = new a();
                }
            }
        }
        return f7340a;
    }

    a() {
    }

    public c a(Context context) {
        if (this.f7342c != null) {
            return this.f7342c;
        }
        c cVarA = c.a(c(context).getString("DEFAULT_LOCALE_VALUE", null));
        if (cVarA == null) {
            return c.ENGLISH;
        }
        return cVarA;
    }

    void a(c cVar) {
        this.f7342c = cVar;
    }

    public void a(c cVar, Context context) {
        a(cVar);
        SharedPreferences.Editor editorEdit = c(context).edit();
        editorEdit.putString("DEFAULT_LOCALE_VALUE", cVar.a());
        editorEdit.apply();
    }

    public void b(Context context) {
        c cVarA = this.f7341b;
        if (cVarA == null) {
            com.roblox.client.util.g.b("rbx.locale", "mUserLocale is empty");
            cVarA = c.a(a((String) null, c(context)));
            if (cVarA == null) {
                com.roblox.client.util.g.b("rbx.locale", "No stored value for mUserLocale.");
                cVarA = c.ENGLISH;
            }
        }
        com.roblox.client.util.g.b("rbx.locale", "Updating App configuration based on locale = " + cVarA);
        b(context, cVarA);
    }

    public void b(c cVar) {
        this.f7341b = cVar;
    }

    public c b() {
        return this.f7341b;
    }

    public c c() {
        return this.f;
    }

    public void c(c cVar) {
        this.f = cVar;
    }

    public Locale d() {
        return this.f7343d;
    }

    public void a(Locale locale) {
        this.f7343d = locale;
    }

    public void d(c cVar) {
        this.e = cVar;
    }

    public c e() {
        return this.e;
    }

    public void a(EnumC0115a enumC0115a) {
        this.g = enumC0115a;
    }

    public EnumC0115a f() {
        return this.g;
    }

    private boolean e(c cVar) {
        return this.f7341b.equals(cVar);
    }

    private void a(Context context, c cVar) {
        a(cVar, c(context));
        b(context, cVar);
    }

    public boolean b(c cVar, Context context) {
        if (cVar != null) {
            z = e(cVar) ? false : true;
            if (z && context != null) {
                a(context, cVar);
            }
        }
        return z;
    }

    private Context b(Context context, c cVar) {
        this.f7341b = cVar;
        String strB = cVar.b();
        Resources resources = context.getResources();
        return Build.VERSION.SDK_INT >= 24 ? a(context, strB, resources, resources.getConfiguration()) : b(context, strB, resources, resources.getConfiguration());
    }

    private String a(String str, SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("PREF_NAME_SELECTED_LOCALE", str);
    }

    private void a(c cVar, SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("PREF_NAME_SELECTED_LOCALE", cVar.a());
        editorEdit.apply();
    }

    @TargetApi(24)
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
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLayoutDirection(localeA);
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return context;
    }

    private Locale a(String str) {
        if (!str.contains("_")) {
            return new Locale(str);
        }
        String[] strArrSplit = str.split("_");
        return new Locale(strArrSplit[0], strArrSplit[1]);
    }

    private static SharedPreferences c(Context context) {
        return m.a(context, "LocaleSettingsPreferences");
    }

    public boolean g() {
        return (this.f7341b == null || this.f7343d == null || !this.f7341b.b().equals(this.f7343d.getLanguage())) ? false : true;
    }
}
