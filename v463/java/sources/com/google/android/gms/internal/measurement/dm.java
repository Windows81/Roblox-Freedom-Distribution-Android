package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dm implements Parcelable.Creator<zzeu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeu createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        zzer zzerVar = null;
        String strK2 = null;
        long jF = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 2) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 == 3) {
                zzerVar = (zzer) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzer.CREATOR);
            } else if (iA2 == 4) {
                strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new zzeu(strK, zzerVar, strK2, jF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeu[] newArray(int i) {
        return new zzeu[i];
    }
}
