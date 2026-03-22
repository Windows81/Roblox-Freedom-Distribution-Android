package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzlu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzlu> CREATOR = new aqi();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5807a;

    public zzlu(int i) {
        this.f5807a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5807a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
