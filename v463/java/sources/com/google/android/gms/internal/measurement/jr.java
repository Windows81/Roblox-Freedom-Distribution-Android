package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jr extends com.google.android.gms.analytics.q<jr> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4632e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public final String a() {
        return this.f4628a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        jr jrVar = (jr) qVar;
        if (!TextUtils.isEmpty(this.f4628a)) {
            jrVar.f4628a = this.f4628a;
        }
        if (!TextUtils.isEmpty(this.f4629b)) {
            jrVar.f4629b = this.f4629b;
        }
        if (!TextUtils.isEmpty(this.f4630c)) {
            jrVar.f4630c = this.f4630c;
        }
        if (!TextUtils.isEmpty(this.f4631d)) {
            jrVar.f4631d = this.f4631d;
        }
        if (!TextUtils.isEmpty(this.f4632e)) {
            jrVar.f4632e = this.f4632e;
        }
        if (!TextUtils.isEmpty(this.f)) {
            jrVar.f = this.f;
        }
        if (!TextUtils.isEmpty(this.g)) {
            jrVar.g = this.g;
        }
        if (!TextUtils.isEmpty(this.h)) {
            jrVar.h = this.h;
        }
        if (!TextUtils.isEmpty(this.i)) {
            jrVar.i = this.i;
        }
        if (TextUtils.isEmpty(this.j)) {
            return;
        }
        jrVar.j = this.j;
    }

    public final void a(String str) {
        this.f4628a = str;
    }

    public final String b() {
        return this.f4629b;
    }

    public final void b(String str) {
        this.f4629b = str;
    }

    public final String c() {
        return this.f4630c;
    }

    public final void c(String str) {
        this.f4630c = str;
    }

    public final String d() {
        return this.f4631d;
    }

    public final void d(String str) {
        this.f4631d = str;
    }

    public final String e() {
        return this.f4632e;
    }

    public final void e(String str) {
        this.f4632e = str;
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
        map.put("name", this.f4628a);
        map.put(Payload.SOURCE, this.f4629b);
        map.put("medium", this.f4630c);
        map.put("keyword", this.f4631d);
        map.put("content", this.f4632e);
        map.put("id", this.f);
        map.put("adNetworkId", this.g);
        map.put("gclid", this.h);
        map.put("dclid", this.i);
        map.put("aclid", this.j);
        return a((Object) map);
    }
}
