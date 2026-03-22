package com.birbit.android.jobqueue;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Long f2952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f2953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f2954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f2955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f2956e;
    protected long f;
    protected long g;
    protected long h;
    protected long i;
    protected long j;
    transient g k;
    protected final Set<String> l;
    private boolean m;
    private boolean n;
    private boolean o;

    private h(int i, String str, int i2, g gVar, long j, long j2, long j3) {
        this.f2953b = gVar.a();
        this.f2954c = i;
        this.f2955d = str;
        this.f2956e = i2;
        this.g = j;
        this.f = j2;
        this.k = gVar;
        gVar.f2947a = i;
        this.h = j3;
        this.i = gVar.i();
        this.j = gVar.h();
        this.l = gVar.d() == null ? null : Collections.unmodifiableSet(gVar.d());
    }

    public int a(int i) {
        return this.k.a(this, i);
    }

    public String a() {
        return this.f2953b;
    }

    public boolean a(long j) {
        return this.i > j;
    }

    public long b() {
        return this.i;
    }

    public boolean b(long j) {
        return this.j > j;
    }

    public long c() {
        return this.j;
    }

    public int d() {
        return this.f2954c;
    }

    public void b(int i) {
        this.f2954c = i;
        this.k.f2947a = i;
    }

    public Long e() {
        return this.f2952a;
    }

    public void c(long j) {
        this.f2952a = Long.valueOf(j);
    }

    public void d(long j) {
        this.f = j;
    }

    public int f() {
        return this.f2956e;
    }

    public void c(int i) {
        this.f2956e = i;
    }

    public long g() {
        return this.g;
    }

    public long h() {
        return this.h;
    }

    public void e(long j) {
        this.h = j;
    }

    public long i() {
        return this.f;
    }

    public g j() {
        return this.k;
    }

    public String k() {
        return this.f2955d;
    }

    public Set<String> l() {
        return this.l;
    }

    public void m() {
        this.m = true;
        this.k.f2948b = true;
    }

    public boolean n() {
        return this.m;
    }

    public void o() {
        this.n = true;
        m();
    }

    public boolean p() {
        return this.n;
    }

    public int hashCode() {
        return this.f2953b.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f2953b.equals(((h) obj).f2953b);
        }
        return false;
    }

    public boolean q() {
        Set<String> set = this.l;
        return set != null && set.size() > 0;
    }

    public synchronized void r() {
        this.o = true;
    }

    public void a(Context context) {
        this.k.a(context);
    }

    public void d(int i) {
        this.k.a(i);
    }

    public m s() {
        return this.k.f2949c;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2959c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private g f2960d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2961e;
        private Long g;
        private long h;
        private long f = Long.MIN_VALUE;
        private int i = 0;

        public a a(int i) {
            this.f2957a = i;
            this.i |= 2;
            return this;
        }

        public a a(String str) {
            this.f2958b = str;
            return this;
        }

        public a b(int i) {
            this.f2959c = i;
            return this;
        }

        public a a(g gVar) {
            this.f2960d = gVar;
            return this;
        }

        public a a(long j) {
            this.f2961e = j;
            this.i |= 4;
            return this;
        }

        public a b(long j) {
            this.f = j;
            return this;
        }

        public a c(long j) {
            this.g = Long.valueOf(j);
            return this;
        }

        public a d(long j) {
            this.h = j;
            this.i |= 1;
            return this;
        }

        public h a() {
            g gVar = this.f2960d;
            if (gVar == null) {
                throw new IllegalArgumentException("must provide a job");
            }
            int i = this.i;
            if ((i & 2) == 0) {
                throw new IllegalArgumentException("must provide a priority");
            }
            if ((i & 1) == 0) {
                throw new IllegalArgumentException("must provide a session id");
            }
            if ((i & 4) == 0) {
                throw new IllegalArgumentException("must provide a created timestamp");
            }
            h hVar = new h(this.f2957a, this.f2958b, this.f2959c, gVar, this.f2961e, this.f, this.h);
            Long l = this.g;
            if (l != null) {
                hVar.c(l.longValue());
            }
            return hVar;
        }
    }
}
