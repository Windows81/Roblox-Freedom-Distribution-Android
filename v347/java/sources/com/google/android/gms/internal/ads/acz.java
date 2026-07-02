package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
final class acz implements aci {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ack f3813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ada f3815c;

    acz(ack ackVar, String str, Object[] objArr) {
        this.f3813a = ackVar;
        this.f3814b = str;
        this.f3815c = new ada(ackVar.getClass(), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.aci
    public final int a() {
        return (this.f3815c.f3819d & 1) == 1 ? abd.e.h : abd.e.i;
    }

    @Override // com.google.android.gms.internal.ads.aci
    public final boolean b() {
        return (this.f3815c.f3819d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.aci
    public final ack c() {
        return this.f3813a;
    }

    final ada d() {
        return this.f3815c;
    }

    public final int e() {
        return this.f3815c.h;
    }

    public final int f() {
        return this.f3815c.i;
    }

    public final int g() {
        return this.f3815c.e;
    }

    public final int h() {
        return this.f3815c.j;
    }

    public final int i() {
        return this.f3815c.m;
    }

    final int[] j() {
        return this.f3815c.n;
    }

    public final int k() {
        return this.f3815c.l;
    }

    public final int l() {
        return this.f3815c.k;
    }
}
