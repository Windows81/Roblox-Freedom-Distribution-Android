package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aqj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f4356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<String> f4359d;
    private final Location e;
    private final boolean f;
    private final Bundle g;
    private final Map<Class<? extends Object>, Object> h;
    private final String i;
    private final String j;
    private final com.google.android.gms.ads.c.a k;
    private final int l;
    private final Set<String> m;
    private final Bundle n;
    private final Set<String> o;
    private final boolean p;

    public aqj(aqk aqkVar) {
        this(aqkVar, null);
    }

    public aqj(aqk aqkVar, com.google.android.gms.ads.c.a aVar) {
        this.f4356a = aqkVar.g;
        this.f4357b = aqkVar.h;
        this.f4358c = aqkVar.i;
        this.f4359d = Collections.unmodifiableSet(aqkVar.f4360a);
        this.e = aqkVar.j;
        this.f = aqkVar.k;
        this.g = aqkVar.f4361b;
        this.h = Collections.unmodifiableMap(aqkVar.f4362c);
        this.i = aqkVar.l;
        this.j = aqkVar.m;
        this.k = aVar;
        this.l = aqkVar.n;
        this.m = Collections.unmodifiableSet(aqkVar.f4363d);
        this.n = aqkVar.e;
        this.o = Collections.unmodifiableSet(aqkVar.f);
        this.p = aqkVar.o;
    }

    public final Bundle a(Class<? extends com.google.android.gms.ads.mediation.b> cls) {
        return this.g.getBundle(cls.getName());
    }

    public final Date a() {
        return this.f4356a;
    }

    public final boolean a(Context context) {
        Set<String> set = this.m;
        aoo.a();
        return set.contains(ly.a(context));
    }

    public final String b() {
        return this.f4357b;
    }

    public final int c() {
        return this.f4358c;
    }

    public final Set<String> d() {
        return this.f4359d;
    }

    public final Location e() {
        return this.e;
    }

    public final boolean f() {
        return this.f;
    }

    public final String g() {
        return this.i;
    }

    public final String h() {
        return this.j;
    }

    public final com.google.android.gms.ads.c.a i() {
        return this.k;
    }

    public final Map<Class<? extends Object>, Object> j() {
        return this.h;
    }

    public final Bundle k() {
        return this.g;
    }

    public final int l() {
        return this.l;
    }

    public final Bundle m() {
        return this.n;
    }

    public final Set<String> n() {
        return this.o;
    }

    public final boolean o() {
        return this.p;
    }
}
