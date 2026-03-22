package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dl implements Parcelable.Creator<zzer> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzer createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Bundle bundleM = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(iA) != 2) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                bundleM = com.google.android.gms.common.internal.safeparcel.a.m(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new zzer(bundleM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzer[] newArray(int i) {
        return new zzer[i];
    }
}
