package com.roblox.platform.http.c;

import b.w;
import d.c;
import d.m;

/* JADX INFO: loaded from: classes.dex */
public class f<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f8052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f8053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected w f8054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected c.a f8055d;

    public f(String str, String str2) {
        this.f8053b = str;
        this.f8052a = str2 == null ? a() : str2;
    }

    protected String a() {
        return "roblox.com";
    }

    protected String a(String str, String str2) {
        return "https://" + str + "." + str2;
    }

    public f<T> a(w wVar) {
        this.f8054c = wVar;
        return this;
    }

    public f<T> a(c.a aVar) {
        this.f8055d = aVar;
        return this;
    }

    protected m a(String str) {
        m.a aVar = new m.a();
        aVar.a(str);
        aVar.a(this.f8054c);
        if (this.f8055d != null) {
            aVar.a(this.f8055d);
        }
        aVar.a(d.a.a.a.a());
        return aVar.a();
    }

    public T a(Class<T> cls) {
        try {
            return (T) a(a(this.f8053b, this.f8052a)).a(cls);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return (T) a(a(this.f8053b, a())).a(cls);
        }
    }
}
