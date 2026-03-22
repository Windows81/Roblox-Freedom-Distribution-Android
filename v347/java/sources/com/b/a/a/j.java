package com.b.a.a;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Long f2386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f2387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f2388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f2389d;
    protected int e;
    protected long f;
    protected long g;
    protected long h;
    protected long i;
    protected long j;
    transient i k;
    protected final Set<String> l;
    private boolean m;
    private boolean n;
    private boolean o;

    private j(int i, String str, int i2, i iVar, long j, long j2, long j3) {
        this.f2387b = iVar.a();
        this.f2388c = i;
        this.f2389d = str;
        this.e = i2;
        this.g = j;
        this.f = j2;
        this.k = iVar;
        iVar.f2352a = i;
        this.h = j3;
        this.i = iVar.i();
        this.j = iVar.h();
        this.l = iVar.d() == null ? null : Collections.unmodifiableSet(iVar.d());
    }

    public int a(int i) {
        return this.k.a(this, i);
    }

    public String a() {
        return this.f2387b;
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
        return this.f2388c;
    }

    public void b(int i) {
        this.f2388c = i;
        this.k.f2352a = this.f2388c;
    }

    public Long e() {
        return this.f2386a;
    }

    public void c(long j) {
        this.f2386a = Long.valueOf(j);
    }

    public void d(long j) {
        this.f = j;
    }

    public int f() {
        return this.e;
    }

    public void c(int i) {
        this.e = i;
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

    public i j() {
        return this.k;
    }

    public String k() {
        return this.f2389d;
    }

    public Set<String> l() {
        return this.l;
    }

    public void m() {
        this.m = true;
        this.k.f2353b = true;
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
        return this.f2387b.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        return this.f2387b.equals(((j) obj).f2387b);
    }

    public boolean q() {
        return this.l != null && this.l.size() > 0;
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

    public q s() {
        return this.k.f2354c;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2390a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2392c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private i f2393d;
        private long e;
        private Long g;
        private long h;
        private long f = Long.MIN_VALUE;
        private int i = 0;

        public a a(int i) {
            this.f2390a = i;
            this.i |= 2;
            return this;
        }

        public a a(String str) {
            this.f2391b = str;
            return this;
        }

        public a b(int i) {
            this.f2392c = i;
            return this;
        }

        public a a(i iVar) {
            this.f2393d = iVar;
            return this;
        }

        public a a(long j) {
            this.e = j;
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

        public j a() {
            if (this.f2393d == null) {
                throw new IllegalArgumentException("must provide a job");
            }
            if ((this.i & 2) == 0) {
                throw new IllegalArgumentException("must provide a priority");
            }
            if ((this.i & 1) == 0) {
                throw new IllegalArgumentException("must provide a session id");
            }
            if ((this.i & 4) == 0) {
                throw new IllegalArgumentException("must provide a created timestamp");
            }
            j jVar = new j(this.f2390a, this.f2391b, this.f2392c, this.f2393d, this.e, this.f, this.h);
            if (this.g != null) {
                jVar.c(this.g.longValue());
            }
            return jVar;
        }
    }
}
