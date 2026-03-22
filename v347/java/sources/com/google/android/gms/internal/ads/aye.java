package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aye {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static aye f4615a = new aye();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4618d;
    private int e;
    private int f;

    public static aye a() {
        return f4615a;
    }

    final void a(int i) {
        this.f4616b += i;
    }

    final void b() {
        this.f4617c++;
    }

    final void c() {
        this.f4618d++;
    }

    final void d() {
        this.e++;
    }

    final void e() {
        this.f++;
    }

    public final int f() {
        return this.f4617c;
    }

    public final int g() {
        return this.f4618d;
    }

    public final int h() {
        return this.e;
    }

    public final int i() {
        return this.f;
    }

    public final Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putInt("ipl", this.f4616b);
        bundle.putInt("ipds", this.f4617c);
        bundle.putInt("ipde", this.f4618d);
        bundle.putInt("iph", this.e);
        bundle.putInt("ipm", this.f);
        return bundle;
    }
}
