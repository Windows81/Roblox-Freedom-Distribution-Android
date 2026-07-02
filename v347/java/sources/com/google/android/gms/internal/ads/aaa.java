package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class aaa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aaj f3687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f3688b;

    private aaa(int i) {
        this.f3688b = new byte[i];
        this.f3687a = aaj.a(this.f3688b);
    }

    /* synthetic */ aaa(int i, zw zwVar) {
        this(i);
    }

    public final zv a() {
        this.f3687a.b();
        return new aac(this.f3688b);
    }

    public final aaj b() {
        return this.f3687a;
    }
}
