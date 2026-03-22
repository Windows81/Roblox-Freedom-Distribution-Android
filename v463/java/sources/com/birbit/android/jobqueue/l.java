package com.birbit.android.jobqueue;

import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f2980a = Long.MIN_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2981b = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2982c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2983d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2984e = false;
    private int f;
    private long g;
    private HashSet<String> h;

    public l(int i) {
        this.f = i;
    }

    public long a() {
        return this.f2980a;
    }

    public long b() {
        return this.f2981b;
    }

    public l a(String str) {
        this.f2982c = str;
        return this;
    }

    public String c() {
        return this.f2982c;
    }

    public String d() {
        return this.f2983d;
    }

    public boolean e() {
        return this.f2984e;
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
