package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aoe implements Parcelable.Creator<zzjn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjn createFromParcel(Parcel parcel) {
        zzjn[] zzjnVarArr = null;
        boolean zC = false;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean zC2 = false;
        boolean zC3 = false;
        int iD = 0;
        int iD2 = 0;
        boolean zC4 = false;
        int iD3 = 0;
        int iD4 = 0;
        String strH = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 3:
                    iD4 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 4:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 5:
                    zC4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 6:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 7:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 8:
                    zzjnVarArr = (zzjn[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, zzjn.CREATOR);
                    break;
                case 9:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 10:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 11:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzjn(strH, iD4, iD3, zC4, iD2, iD, zzjnVarArr, zC3, zC2, zC);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjn[] newArray(int i) {
        return new zzjn[i];
    }
}
