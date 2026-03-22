package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cu implements Parcelable.Creator<zzdz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdz createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long jF = 0;
        long jF2 = 0;
        long jF3 = 0;
        long jF4 = 0;
        String strK = null;
        String strK2 = null;
        String strK3 = null;
        String strK4 = null;
        String strK5 = null;
        String strK6 = null;
        long jF5 = -2147483648L;
        boolean zC = true;
        boolean zC2 = false;
        int iD = 0;
        boolean zC3 = true;
        boolean zC4 = true;
        boolean zC5 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 3:
                    strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 4:
                    strK3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 5:
                    strK4 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 6:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 7:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 8:
                    strK5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 9:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 10:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 11:
                    jF5 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 12:
                    strK6 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 13:
                    jF3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 14:
                    jF4 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 15:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 16:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 17:
                    zC4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 18:
                    zC5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new zzdz(strK, strK2, strK3, strK4, jF, jF2, strK5, zC, zC2, jF5, strK6, jF3, jF4, iD, zC3, zC4, zC5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdz[] newArray(int i) {
        return new zzdz[i];
    }
}
