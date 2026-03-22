package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class zzatt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatt> CREATOR = new tb();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5790c;

    zzatt(int i, String str, String str2) {
        this.f5788a = i;
        this.f5789b = str;
        this.f5790c = str2;
    }

    public zzatt(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5788a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5789b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5790c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
