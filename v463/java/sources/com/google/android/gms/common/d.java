package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements Parcelable.Creator<Feature> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Feature createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        int iD = 0;
        long jF = -1;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 == 2) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new Feature(strK, iD, jF);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Feature[] newArray(int i) {
        return new Feature[i];
    }
}
