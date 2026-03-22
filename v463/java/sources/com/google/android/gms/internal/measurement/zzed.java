package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class zzed extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzed> CREATOR = new cx();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzjx f4720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f4721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4722e;
    public String f;
    public zzeu g;
    public long h;
    public zzeu i;
    public long j;
    public zzeu k;

    zzed(zzed zzedVar) {
        com.google.android.gms.common.internal.aa.a(zzedVar);
        this.f4718a = zzedVar.f4718a;
        this.f4719b = zzedVar.f4719b;
        this.f4720c = zzedVar.f4720c;
        this.f4721d = zzedVar.f4721d;
        this.f4722e = zzedVar.f4722e;
        this.f = zzedVar.f;
        this.g = zzedVar.g;
        this.h = zzedVar.h;
        this.i = zzedVar.i;
        this.j = zzedVar.j;
        this.k = zzedVar.k;
    }

    zzed(String str, String str2, zzjx zzjxVar, long j, boolean z, String str3, zzeu zzeuVar, long j2, zzeu zzeuVar2, long j3, zzeu zzeuVar3) {
        this.f4718a = str;
        this.f4719b = str2;
        this.f4720c = zzjxVar;
        this.f4721d = j;
        this.f4722e = z;
        this.f = str3;
        this.g = zzeuVar;
        this.h = j2;
        this.i = zzeuVar2;
        this.j = j3;
        this.k = zzeuVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4718a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4719b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f4720c, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4721d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f4722e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable) this.g, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable) this.i, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, (Parcelable) this.k, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
