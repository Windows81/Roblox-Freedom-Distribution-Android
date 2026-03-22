package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ce extends com.google.android.gms.analytics.q<ce> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5967d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public final String a() {
        return this.f5964a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ce ceVar = (ce) qVar;
        if (!TextUtils.isEmpty(this.f5964a)) {
            ceVar.f5964a = this.f5964a;
        }
        if (!TextUtils.isEmpty(this.f5965b)) {
            ceVar.f5965b = this.f5965b;
        }
        if (!TextUtils.isEmpty(this.f5966c)) {
            ceVar.f5966c = this.f5966c;
        }
        if (!TextUtils.isEmpty(this.f5967d)) {
            ceVar.f5967d = this.f5967d;
        }
        if (!TextUtils.isEmpty(this.e)) {
            ceVar.e = this.e;
        }
        if (!TextUtils.isEmpty(this.f)) {
            ceVar.f = this.f;
        }
        if (!TextUtils.isEmpty(this.g)) {
            ceVar.g = this.g;
        }
        if (!TextUtils.isEmpty(this.h)) {
            ceVar.h = this.h;
        }
        if (!TextUtils.isEmpty(this.i)) {
            ceVar.i = this.i;
        }
        if (TextUtils.isEmpty(this.j)) {
            return;
        }
        ceVar.j = this.j;
    }

    public final void a(String str) {
        this.f5964a = str;
    }

    public final String b() {
        return this.f5965b;
    }

    public final void b(String str) {
        this.f5965b = str;
    }

    public final String c() {
        return this.f5966c;
    }

    public final void c(String str) {
        this.f5966c = str;
    }

    public final String d() {
        return this.f5967d;
    }

    public final void d(String str) {
        this.f5967d = str;
    }

    public final String e() {
        return this.e;
    }

    public final void e(String str) {
        this.e = str;
    }

    public final String f() {
        return this.f;
    }

    public final void f(String str) {
        this.f = str;
    }

    public final String g() {
        return this.g;
    }

    public final void g(String str) {
        this.g = str;
    }

    public final String h() {
        return this.h;
    }

    public final void h(String str) {
        this.h = str;
    }

    public final String i() {
        return this.i;
    }

    public final void i(String str) {
        this.i = str;
    }

    public final String j() {
        return this.j;
    }

    public final void j(String str) {
        this.j = str;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("name", this.f5964a);
        map.put("source", this.f5965b);
        map.put("medium", this.f5966c);
        map.put("keyword", this.f5967d);
        map.put("content", this.e);
        map.put("id", this.f);
        map.put("adNetworkId", this.g);
        map.put("gclid", this.h);
        map.put("dclid", this.i);
        map.put("aclid", this.j);
        return a((Object) map);
    }
}
