package com.google.android.gms.internal.measurement;

import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ct {
    private long A;
    private long B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final fc f4169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4173e;
    private String f;
    private long g;
    private long h;
    private long i;
    private String j;
    private long k;
    private String l;
    private long m;
    private long n;
    private boolean o;
    private long p;
    private boolean q;
    private boolean r;
    private long s;
    private long t;
    private long u;
    private long v;
    private long w;
    private long x;
    private String y;
    private boolean z;

    ct(fc fcVar, String str) {
        com.google.android.gms.common.internal.aa.a(fcVar);
        com.google.android.gms.common.internal.aa.a(str);
        this.f4169a = fcVar;
        this.f4170b = str;
        fcVar.w();
    }

    public final long A() {
        this.f4169a.w();
        return this.p;
    }

    public final boolean B() {
        this.f4169a.w();
        return this.q;
    }

    public final boolean C() {
        this.f4169a.w();
        return this.r;
    }

    public final void a() {
        this.f4169a.w();
        this.z = false;
    }

    public final void a(long j) {
        this.f4169a.w();
        this.z |= this.h != j;
        this.h = j;
    }

    public final void a(String str) {
        this.f4169a.w();
        this.z |= !iq.b(this.f4171c, str);
        this.f4171c = str;
    }

    public final void a(boolean z) {
        this.f4169a.w();
        this.z |= this.o != z;
        this.o = z;
    }

    public final String b() {
        this.f4169a.w();
        return this.f4170b;
    }

    public final void b(long j) {
        this.f4169a.w();
        this.z |= this.i != j;
        this.i = j;
    }

    public final void b(String str) {
        this.f4169a.w();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.z |= !iq.b(this.f4172d, str);
        this.f4172d = str;
    }

    public final void b(boolean z) {
        this.f4169a.w();
        this.z = this.q != z;
        this.q = z;
    }

    public final String c() {
        this.f4169a.w();
        return this.f4171c;
    }

    public final void c(long j) {
        this.f4169a.w();
        this.z |= this.k != j;
        this.k = j;
    }

    public final void c(String str) {
        this.f4169a.w();
        this.z |= !iq.b(this.f4173e, str);
        this.f4173e = str;
    }

    public final void c(boolean z) {
        this.f4169a.w();
        this.z = this.r != z;
        this.r = z;
    }

    public final String d() {
        this.f4169a.w();
        return this.f4172d;
    }

    public final void d(long j) {
        this.f4169a.w();
        this.z |= this.m != j;
        this.m = j;
    }

    public final void d(String str) {
        this.f4169a.w();
        this.z |= !iq.b(this.f, str);
        this.f = str;
    }

    public final String e() {
        this.f4169a.w();
        return this.f4173e;
    }

    public final void e(long j) {
        this.f4169a.w();
        this.z |= this.n != j;
        this.n = j;
    }

    public final void e(String str) {
        this.f4169a.w();
        this.z |= !iq.b(this.j, str);
        this.j = str;
    }

    public final String f() {
        this.f4169a.w();
        return this.f;
    }

    public final void f(long j) {
        com.google.android.gms.common.internal.aa.b(j >= 0);
        this.f4169a.w();
        this.z = (this.g != j) | this.z;
        this.g = j;
    }

    public final void f(String str) {
        this.f4169a.w();
        this.z |= !iq.b(this.l, str);
        this.l = str;
    }

    public final long g() {
        this.f4169a.w();
        return this.h;
    }

    public final void g(long j) {
        this.f4169a.w();
        this.z |= this.A != j;
        this.A = j;
    }

    public final void g(String str) {
        this.f4169a.w();
        this.z |= !iq.b(this.y, str);
        this.y = str;
    }

    public final long h() {
        this.f4169a.w();
        return this.i;
    }

    public final void h(long j) {
        this.f4169a.w();
        this.z |= this.B != j;
        this.B = j;
    }

    public final String i() {
        this.f4169a.w();
        return this.j;
    }

    public final void i(long j) {
        this.f4169a.w();
        this.z |= this.s != j;
        this.s = j;
    }

    public final long j() {
        this.f4169a.w();
        return this.k;
    }

    public final void j(long j) {
        this.f4169a.w();
        this.z |= this.t != j;
        this.t = j;
    }

    public final String k() {
        this.f4169a.w();
        return this.l;
    }

    public final void k(long j) {
        this.f4169a.w();
        this.z |= this.u != j;
        this.u = j;
    }

    public final long l() {
        this.f4169a.w();
        return this.m;
    }

    public final void l(long j) {
        this.f4169a.w();
        this.z |= this.v != j;
        this.v = j;
    }

    public final long m() {
        this.f4169a.w();
        return this.n;
    }

    public final void m(long j) {
        this.f4169a.w();
        this.z |= this.x != j;
        this.x = j;
    }

    public final void n(long j) {
        this.f4169a.w();
        this.z |= this.w != j;
        this.w = j;
    }

    public final boolean n() {
        this.f4169a.w();
        return this.o;
    }

    public final long o() {
        this.f4169a.w();
        return this.g;
    }

    public final void o(long j) {
        this.f4169a.w();
        this.z |= this.p != j;
        this.p = j;
    }

    public final long p() {
        this.f4169a.w();
        return this.A;
    }

    public final long q() {
        this.f4169a.w();
        return this.B;
    }

    public final void r() {
        this.f4169a.w();
        long j = this.g + 1;
        if (j > 2147483647L) {
            this.f4169a.q().y().a("Bundle index overflow. appId", dx.a(this.f4170b));
            j = 0;
        }
        this.z = true;
        this.g = j;
    }

    public final long s() {
        this.f4169a.w();
        return this.s;
    }

    public final long t() {
        this.f4169a.w();
        return this.t;
    }

    public final long u() {
        this.f4169a.w();
        return this.u;
    }

    public final long v() {
        this.f4169a.w();
        return this.v;
    }

    public final long w() {
        this.f4169a.w();
        return this.x;
    }

    public final long x() {
        this.f4169a.w();
        return this.w;
    }

    public final String y() {
        this.f4169a.w();
        return this.y;
    }

    public final String z() {
        this.f4169a.w();
        String str = this.y;
        g((String) null);
        return str;
    }
}
