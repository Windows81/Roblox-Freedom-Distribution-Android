package com.google.android.gms.internal.ads;

import android.location.Location;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class bcr implements com.google.android.gms.ads.mediation.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f4786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f4788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4789d;
    private final Location e;
    private final int f;
    private final boolean g;

    public bcr(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2) {
        this.f4786a = date;
        this.f4787b = i;
        this.f4788c = set;
        this.e = location;
        this.f4789d = z;
        this.f = i2;
        this.g = z2;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final Date a() {
        return this.f4786a;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final int b() {
        return this.f4787b;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final Set<String> c() {
        return this.f4788c;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final Location d() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final int e() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final boolean f() {
        return this.f4789d;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final boolean g() {
        return this.g;
    }
}
