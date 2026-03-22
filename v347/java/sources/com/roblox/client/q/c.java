package com.roblox.client.q;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.roblox.client.RobloxSettings;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7725b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f7726a = new c();
    }

    public static c a() {
        return a.f7726a;
    }

    public String b() {
        if (TextUtils.isEmpty(this.f7725b)) {
            this.f7725b = RobloxSettings.getKeyValues().getString("credential_type_key", "");
        }
        return this.f7725b;
    }

    public String c() {
        if (TextUtils.isEmpty(this.f7724a)) {
            this.f7724a = RobloxSettings.getKeyValues().getString("credential_value_key", "");
        }
        return this.f7724a;
    }

    public void a(String str, String str2) {
        this.f7724a = str;
        this.f7725b = str2;
    }

    public void b(String str, String str2) {
        this.f7724a = str;
        this.f7725b = str2;
        SharedPreferences.Editor editorEdit = RobloxSettings.getKeyValues().edit();
        editorEdit.putString("credential_value_key", str);
        editorEdit.putString("credential_type_key", str2);
        editorEdit.apply();
    }
}
