package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class zzjx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjx> CREATOR = new io();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Long f4732e;
    private final Float f;
    private final String g;
    private final Double h;

    zzjx(int i, String str, long j, Long l, Float f, String str2, String str3, Double d2) {
        this.f4731d = i;
        this.f4728a = str;
        this.f4729b = j;
        this.f4732e = l;
        this.f = null;
        if (i == 1) {
            this.h = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.h = d2;
        }
        this.g = str2;
        this.f4730c = str3;
    }

    zzjx(ip ipVar) {
        this(ipVar.f4562c, ipVar.f4563d, ipVar.f4564e, ipVar.f4561b);
    }

    zzjx(String str, long j, Object obj, String str2) {
        com.google.android.gms.common.internal.aa.a(str);
        this.f4731d = 2;
        this.f4728a = str;
        this.f4729b = j;
        this.f4730c = str2;
        if (obj == null) {
            this.f4732e = null;
            this.f = null;
            this.h = null;
            this.g = null;
            return;
        }
        if (obj instanceof Long) {
            this.f4732e = (Long) obj;
            this.f = null;
            this.h = null;
            this.g = null;
            return;
        }
        if (obj instanceof String) {
            this.f4732e = null;
            this.f = null;
            this.h = null;
            this.g = (String) obj;
            return;
        }
        if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
        this.f4732e = null;
        this.f = null;
        this.h = (Double) obj;
        this.g = null;
    }

    public final Object a() {
        Long l = this.f4732e;
        if (l != null) {
            return l;
        }
        Double d2 = this.h;
        if (d2 != null) {
            return d2;
        }
        String str = this.g;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4731d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4728a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4729b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4732e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Float) null, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f4730c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
