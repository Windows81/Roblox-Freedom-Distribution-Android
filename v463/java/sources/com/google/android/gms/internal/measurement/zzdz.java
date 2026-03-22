package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class zzdz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdz> CREATOR = new cu();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f4717e;
    public final long f;
    public final String g;
    public final boolean h;
    public final boolean i;
    public final long j;
    public final String k;
    public final long l;
    public final long m;
    public final int n;
    public final boolean o;
    public final boolean p;
    public final boolean q;

    zzdz(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5) {
        com.google.android.gms.common.internal.aa.a(str);
        this.f4713a = str;
        this.f4714b = TextUtils.isEmpty(str2) ? null : str2;
        this.f4715c = str3;
        this.j = j;
        this.f4716d = str4;
        this.f4717e = j2;
        this.f = j3;
        this.g = str5;
        this.h = z;
        this.i = z2;
        this.k = str6;
        this.l = j4;
        this.m = j5;
        this.n = i;
        this.o = z3;
        this.p = z4;
        this.q = z5;
    }

    zzdz(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5) {
        this.f4713a = str;
        this.f4714b = str2;
        this.f4715c = str3;
        this.j = j3;
        this.f4716d = str4;
        this.f4717e = j;
        this.f = j2;
        this.g = str5;
        this.h = z;
        this.i = z2;
        this.k = str6;
        this.l = j4;
        this.m = j5;
        this.n = i;
        this.o = z3;
        this.p = z4;
        this.q = z5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4713a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4714b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4715c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4716d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f4717e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, this.p);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.q);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
