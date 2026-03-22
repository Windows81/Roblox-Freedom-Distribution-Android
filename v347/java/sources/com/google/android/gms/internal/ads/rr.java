package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class rr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5516c;

    private rr(int i, int i2, int i3) {
        this.f5516c = i;
        this.f5515b = i2;
        this.f5514a = i3;
    }

    public static rr a() {
        return new rr(0, 0, 0);
    }

    public static rr a(int i, int i2) {
        return new rr(1, i, i2);
    }

    public static rr a(zzjn zzjnVar) {
        return zzjnVar.f5806d ? new rr(3, 0, 0) : zzjnVar.i ? new rr(2, 0, 0) : zzjnVar.h ? a() : a(zzjnVar.f, zzjnVar.f5805c);
    }

    public static rr b() {
        return new rr(4, 0, 0);
    }

    public final boolean c() {
        return this.f5516c == 2;
    }

    public final boolean d() {
        return this.f5516c == 3;
    }

    public final boolean e() {
        return this.f5516c == 0;
    }

    public final boolean f() {
        return this.f5516c == 4;
    }
}
