package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class awu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bbu f4570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzang f4571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.bt f4572d;

    awu(Context context, bbu bbuVar, zzang zzangVar, com.google.android.gms.ads.internal.bt btVar) {
        this.f4569a = context;
        this.f4570b = bbuVar;
        this.f4571c = zzangVar;
        this.f4572d = btVar;
    }

    public final Context a() {
        return this.f4569a.getApplicationContext();
    }

    public final com.google.android.gms.ads.internal.m a(String str) {
        return new com.google.android.gms.ads.internal.m(this.f4569a, new zzjn(), str, this.f4570b, this.f4571c, this.f4572d);
    }

    public final com.google.android.gms.ads.internal.m b(String str) {
        return new com.google.android.gms.ads.internal.m(this.f4569a.getApplicationContext(), new zzjn(), str, this.f4570b, this.f4571c, this.f4572d);
    }

    public final awu b() {
        return new awu(this.f4569a.getApplicationContext(), this.f4570b, this.f4571c, this.f4572d);
    }
}
