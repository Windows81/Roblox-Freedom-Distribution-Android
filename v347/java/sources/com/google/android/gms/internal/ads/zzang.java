package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzang extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzang> CREATOR = new ml();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5787d;
    public boolean e;

    public zzang(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzang(int i, int i2, boolean z, boolean z2) {
        this(12451000, i2, true, false, z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private zzang(int i, int i2, boolean z, boolean z2, boolean z3) {
        String str = z ? "0" : "1";
        this(new StringBuilder(String.valueOf(str).length() + 36).append("afma-sdk-a-v").append(i).append(".").append(i2).append(".").append(str).toString(), i, i2, z, z3);
    }

    zzang(String str, int i, int i2, boolean z, boolean z2) {
        this.f5784a = str;
        this.f5785b = i;
        this.f5786c = i2;
        this.f5787d = z;
        this.e = z2;
    }

    public static zzang a() {
        return new zzang(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5784a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5785b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5786c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5787d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
