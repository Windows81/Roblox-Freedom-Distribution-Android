package com.roblox.platform.http.c;

import c.x;
import e.c;
import e.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f7707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected x f7708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected c.a f7709d;

    protected String a() {
        return "roblox.com";
    }

    public j(String str, String str2) {
        this.f7707b = str;
        this.f7706a = str2 == null ? a() : str2;
    }

    protected String a(String str, String str2) {
        return "https://" + str + "." + str2;
    }

    public j<T> a(x xVar) {
        this.f7708c = xVar;
        return this;
    }

    public j<T> a(c.a aVar) {
        this.f7709d = aVar;
        return this;
    }

    protected m a(String str) {
        m.a aVar = new m.a();
        aVar.a(str);
        aVar.a(this.f7708c);
        c.a aVar2 = this.f7709d;
        if (aVar2 != null) {
            aVar.a(aVar2);
        }
        aVar.a(e.a.a.a.a());
        return aVar.a();
    }

    public T a(Class<T> cls) {
        try {
            return (T) a(a(this.f7707b, this.f7706a)).a(cls);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return (T) a(a(this.f7707b, a())).a(cls);
        }
    }
}
