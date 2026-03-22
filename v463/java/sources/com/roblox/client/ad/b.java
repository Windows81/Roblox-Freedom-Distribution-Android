package com.roblox.client.ad;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5618b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f5619a = new b();
    }

    public static b a() {
        return a.f5619a;
    }

    public String b() {
        if (TextUtils.isEmpty(this.f5618b)) {
            this.f5618b = u.g().getString("credential_type_key", "");
        }
        return this.f5618b;
    }

    public String c() {
        if (TextUtils.isEmpty(this.f5617a)) {
            this.f5617a = u.g().getString("credential_value_key", "");
        }
        return this.f5617a;
    }

    public void a(String str, String str2) {
        this.f5617a = str;
        this.f5618b = str2;
    }

    public void b(String str, String str2) {
        this.f5617a = str;
        this.f5618b = str2;
        SharedPreferences.Editor editorEdit = u.g().edit();
        editorEdit.putString("credential_value_key", str);
        editorEdit.putString("credential_type_key", str2);
        editorEdit.apply();
    }
}
