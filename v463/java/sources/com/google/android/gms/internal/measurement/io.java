package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class io implements Parcelable.Creator<zzjx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjx createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        Long lG = null;
        Float fI = null;
        String strK2 = null;
        String strK3 = null;
        Double dJ = null;
        long jF = 0;
        int iD = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 3:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 4:
                    lG = com.google.android.gms.common.internal.safeparcel.a.g(parcel, iA);
                    break;
                case 5:
                    fI = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 6:
                    strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 7:
                    strK3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 8:
                    dJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new zzjx(iD, strK, jF, lG, fI, strK2, strK3, dJ);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjx[] newArray(int i) {
        return new zzjx[i];
    }
}
