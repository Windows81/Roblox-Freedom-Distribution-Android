package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class dj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f4204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f4205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f4206e;
    final long f;
    final Long g;
    final Long h;
    final Boolean i;

    dj(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Boolean bool) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        com.google.android.gms.common.internal.aa.b(j >= 0);
        com.google.android.gms.common.internal.aa.b(j2 >= 0);
        com.google.android.gms.common.internal.aa.b(j4 >= 0);
        this.f4202a = str;
        this.f4203b = str2;
        this.f4204c = j;
        this.f4205d = j2;
        this.f4206e = j3;
        this.f = j4;
        this.g = l;
        this.h = l2;
        this.i = bool;
    }

    final dj a() {
        return new dj(this.f4202a, this.f4203b, this.f4204c + 1, 1 + this.f4205d, this.f4206e, this.f, this.g, this.h, this.i);
    }

    final dj a(long j) {
        return new dj(this.f4202a, this.f4203b, this.f4204c, this.f4205d, j, this.f, this.g, this.h, this.i);
    }

    final dj a(Long l, Long l2, Boolean bool) {
        return new dj(this.f4202a, this.f4203b, this.f4204c, this.f4205d, this.f4206e, this.f, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }

    final dj b(long j) {
        return new dj(this.f4202a, this.f4203b, this.f4204c, this.f4205d, this.f4206e, j, this.g, this.h, this.i);
    }
}
