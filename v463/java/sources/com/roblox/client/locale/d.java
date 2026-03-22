package com.roblox.client.locale;

import android.content.Context;
import android.content.SharedPreferences;
import com.roblox.client.ae.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6476a;

    public d(Context context) {
        this.f6476a = context;
    }

    private SharedPreferences d() {
        return s.a(this.f6476a, "LocaleSettingsPreferences");
    }

    @Override // com.roblox.client.locale.c
    public f a() {
        return f.a(d().getString("DEFAULT_LOCALE_VALUE", null));
    }

    @Override // com.roblox.client.locale.c
    public f b() {
        return f.a(d().getString("PREF_NAME_SELECTED_LOCALE", null));
    }

    @Override // com.roblox.client.locale.c
    public f c() {
        return f.a(d().getString("PREF_NAME_UGC_LOCALE", null));
    }

    @Override // com.roblox.client.locale.c
    public void a(f fVar) {
        if (fVar == null) {
            return;
        }
        b(fVar.a());
    }

    @Override // com.roblox.client.locale.c
    public void b(f fVar) {
        if (fVar == null) {
            return;
        }
        c(fVar.a());
    }

    public void b(String str) {
        a("DEFAULT_LOCALE_VALUE", str);
    }

    public void c(String str) {
        a("PREF_NAME_SELECTED_LOCALE", str);
    }

    @Override // com.roblox.client.locale.c
    public void a(String str) {
        a("PREF_NAME_UGC_LOCALE", str);
    }

    private void a(String str, String str2) {
        if (str2 == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = d().edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }
}
