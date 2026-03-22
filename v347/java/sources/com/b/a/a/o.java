package com.b.a.a;

import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f2416a = Long.MIN_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2417b = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2418c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2419d = null;
    private boolean e = false;
    private int f;
    private long g;
    private HashSet<String> h;

    public o(int i) {
        this.f = i;
    }

    public long a() {
        return this.f2416a;
    }

    public long b() {
        return this.f2417b;
    }

    public o a(String str) {
        this.f2418c = str;
        return this;
    }

    public String c() {
        return this.f2418c;
    }

    public String d() {
        return this.f2419d;
    }

    public boolean e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public long g() {
        return this.g;
    }

    public HashSet<String> h() {
        return this.h;
    }
}
