package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class aae {
    private static volatile boolean f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    aah f3692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3693d;
    private boolean e;

    static {
        f = false;
        f = true;
    }

    private aae() {
        this.f3691b = 100;
        this.f3693d = Integer.MAX_VALUE;
        this.e = false;
    }

    public static long a(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    static aae a(byte[] bArr, int i, int i2, boolean z) {
        aag aagVar = new aag(bArr, i, i2, z);
        try {
            aagVar.c(i2);
            return aagVar;
        } catch (abj e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int f(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public abstract int a() throws IOException;

    public abstract void a(int i) throws abj;

    public abstract double b() throws IOException;

    public abstract boolean b(int i) throws IOException;

    public abstract float c() throws IOException;

    public abstract int c(int i) throws abj;

    public abstract long d() throws IOException;

    public abstract void d(int i);

    public abstract long e() throws IOException;

    public abstract void e(int i) throws IOException;

    public abstract int f() throws IOException;

    public abstract long g() throws IOException;

    public abstract int h() throws IOException;

    public abstract boolean i() throws IOException;

    public abstract String j() throws IOException;

    public abstract String k() throws IOException;

    public abstract zv l() throws IOException;

    public abstract int m() throws IOException;

    public abstract int n() throws IOException;

    public abstract int o() throws IOException;

    public abstract long p() throws IOException;

    public abstract int q() throws IOException;

    public abstract long r() throws IOException;

    abstract long s() throws IOException;

    public abstract boolean t() throws IOException;

    public abstract int u();
}
