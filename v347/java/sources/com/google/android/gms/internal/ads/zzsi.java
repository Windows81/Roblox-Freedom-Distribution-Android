package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzsi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzsi> CREATOR = new awl();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f5822d;
    public final String[] e;
    public final String[] f;
    public final boolean g;
    public final long h;

    zzsi(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.f5819a = z;
        this.f5820b = str;
        this.f5821c = i;
        this.f5822d = bArr;
        this.e = strArr;
        this.f = strArr2;
        this.g = z2;
        this.h = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5819a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5820b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5821c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5822d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
