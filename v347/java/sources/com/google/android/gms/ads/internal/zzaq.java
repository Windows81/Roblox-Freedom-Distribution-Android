package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.ads.cm;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new r();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3208d;
    public final int e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    private final String i;

    zzaq(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.f3205a = z;
        this.f3206b = z2;
        this.i = str;
        this.f3207c = z3;
        this.f3208d = f;
        this.e = i;
        this.f = z4;
        this.g = z5;
        this.h = z6;
    }

    public zzaq(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, i, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3205a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f3206b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f3207c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f3208d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
