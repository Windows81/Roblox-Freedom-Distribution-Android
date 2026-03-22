package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzjj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjj> CREATOR = new aoc();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f5801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5802d;
    public final List<String> e;
    public final boolean f;
    public final int g;
    public final boolean h;
    public final String i;
    public final zzmq j;
    public final Location k;
    public final String l;
    public final Bundle m;
    public final Bundle n;
    public final List<String> o;
    public final String p;
    public final String q;
    public final boolean r;

    public zzjj(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzmq zzmqVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.f5799a = i;
        this.f5800b = j;
        this.f5801c = bundle == null ? new Bundle() : bundle;
        this.f5802d = i2;
        this.e = list;
        this.f = z;
        this.g = i3;
        this.h = z2;
        this.i = str;
        this.j = zzmqVar;
        this.k = location;
        this.l = str2;
        this.m = bundle2 == null ? new Bundle() : bundle2;
        this.n = bundle3;
        this.o = list2;
        this.p = str3;
        this.q = str4;
        this.r = z3;
    }

    public final zzjj a() {
        Bundle bundle = this.m.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle == null) {
            bundle = this.f5801c;
            this.m.putBundle("com.google.ads.mediation.admob.AdMobAdapter", this.f5801c);
        }
        return new zzjj(this.f5799a, this.f5800b, bundle, this.f5802d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjj)) {
            return false;
        }
        zzjj zzjjVar = (zzjj) obj;
        return this.f5799a == zzjjVar.f5799a && this.f5800b == zzjjVar.f5800b && com.google.android.gms.common.internal.v.a(this.f5801c, zzjjVar.f5801c) && this.f5802d == zzjjVar.f5802d && com.google.android.gms.common.internal.v.a(this.e, zzjjVar.e) && this.f == zzjjVar.f && this.g == zzjjVar.g && this.h == zzjjVar.h && com.google.android.gms.common.internal.v.a(this.i, zzjjVar.i) && com.google.android.gms.common.internal.v.a(this.j, zzjjVar.j) && com.google.android.gms.common.internal.v.a(this.k, zzjjVar.k) && com.google.android.gms.common.internal.v.a(this.l, zzjjVar.l) && com.google.android.gms.common.internal.v.a(this.m, zzjjVar.m) && com.google.android.gms.common.internal.v.a(this.n, zzjjVar.n) && com.google.android.gms.common.internal.v.a(this.o, zzjjVar.o) && com.google.android.gms.common.internal.v.a(this.p, zzjjVar.p) && com.google.android.gms.common.internal.v.a(this.q, zzjjVar.q) && this.r == zzjjVar.r;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.v.a(Integer.valueOf(this.f5799a), Long.valueOf(this.f5800b), this.f5801c, Integer.valueOf(this.f5802d), this.e, Boolean.valueOf(this.f), Integer.valueOf(this.g), Boolean.valueOf(this.h), this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, Boolean.valueOf(this.r));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5799a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5800b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5801c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5802d);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 5, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable) this.j, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable) this.k, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.m, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.n, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 15, this.o, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.p, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, this.q, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.r);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
