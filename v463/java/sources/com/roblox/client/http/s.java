package com.roblox.client.http;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.roblox.client.RobloxApplication;
import com.roblox.client.j.a;
import com.roblox.client.u;
import java.net.CookiePolicy;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class s extends com.roblox.platform.http.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f6356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f6357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f6358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicBoolean f6359e;

    s(CookiePolicy cookiePolicy) {
        super(cookiePolicy);
        this.f6357c = Executors.newSingleThreadExecutor();
        this.f6358d = new AtomicBoolean(true);
        this.f6359e = new AtomicBoolean(false);
        Context contextB = RobloxApplication.b();
        if (contextB != null) {
            this.f6356b = contextB.getSharedPreferences("webView_backup", 0);
        }
    }

    @Override // com.roblox.platform.http.h, c.m
    public void a(c.t tVar, List<c.l> list) {
        super.a(tVar, list);
        if (com.roblox.client.b.bU()) {
            com.roblox.platform.http.g.a().a(tVar.a().toString());
        }
    }

    @Override // com.roblox.platform.http.h
    public String a(String str) {
        String strA = super.a(str);
        if (this.f6358d.getAndSet(false) && ((strA == null || com.roblox.client.i.d.a(strA)) && c())) {
            com.roblox.client.ae.k.c("ShellCookieHandler", "Cookie is invalid at first check.");
            this.f6359e.set(true);
        }
        if (d() && this.f6359e.get()) {
            URL url = null;
            try {
                url = new URL(str);
            } catch (MalformedURLException unused) {
            }
            if (url != null) {
                com.roblox.client.ae.k.c("ShellCookieHandler", "no cookie for " + url.getHost());
                String strB = b(str);
                if (!TextUtils.isEmpty(url.getHost()) && !TextUtils.isEmpty(strB) && ((strA == null || !strA.contains(".ROBLOSECURITY")) && strB.contains(".ROBLOSECURITY"))) {
                    com.roblox.client.ae.k.c("ShellCookieHandler", "Use back up.");
                    super.a(u.f(), strB);
                    return strB;
                }
                com.roblox.client.ae.k.c("ShellCookieHandler", "No backup found.");
            }
        }
        return strA;
    }

    @Override // com.roblox.platform.http.h
    public void a(String str, String str2) {
        c(str, str2);
        super.a(str, str2);
    }

    public void a() {
        if (!com.roblox.client.b.cn()) {
            SharedPreferences sharedPreferences = this.f6356b;
            if (sharedPreferences != null) {
                sharedPreferences.edit().clear().commit();
                return;
            }
            return;
        }
        String strA = super.a(u.f());
        if (strA == null || !strA.contains(".ROBLOSECURITY")) {
            return;
        }
        String[] strArrSplit = strA.split(";");
        if (strArrSplit.length == 0) {
            return;
        }
        String str = null;
        int length = strArrSplit.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            String str2 = strArrSplit[i];
            if (str2.contains(".ROBLOSECURITY")) {
                str = str2;
                break;
            }
            i++;
        }
        if (str == null) {
            return;
        }
        d(u.f(), String.format("%s; domain=%s; path=/", str, u.f()));
    }

    private String b(String str) {
        URL url;
        SharedPreferences sharedPreferences;
        try {
            url = new URL(str);
        } catch (MalformedURLException unused) {
        }
        if (TextUtils.isEmpty(url.getHost()) || !url.getHost().endsWith(u.f()) || (sharedPreferences = this.f6356b) == null) {
            return null;
        }
        String string = sharedPreferences.getString(u.f(), null);
        String string2 = this.f6356b.getString(u.f() + "-2", null);
        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
            return com.roblox.client.j.a.a(string, string2);
        }
        return null;
    }

    private boolean c() {
        SharedPreferences sharedPreferences = this.f6356b;
        return (sharedPreferences == null || sharedPreferences.getString(u.f(), null) == null) ? false : true;
    }

    private void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.equals("auth." + u.f())) {
            d(u.f(), str2);
        }
    }

    private void d(final String str, final String str2) {
        if (!d() || this.f6356b == null) {
            return;
        }
        this.f6357c.execute(new Runnable() { // from class: com.roblox.client.http.s.1
            @Override // java.lang.Runnable
            public void run() {
                a.C0154a c0154aA = com.roblox.client.j.a.a(str2);
                if (c0154aA != null) {
                    s.this.f6356b.edit().putString(str, c0154aA.b()).apply();
                    s.this.f6356b.edit().putString(str + "-2", c0154aA.a()).commit();
                }
            }
        });
    }

    private boolean d() {
        return com.roblox.client.b.cn() && Build.VERSION.SDK_INT >= 23;
    }
}
