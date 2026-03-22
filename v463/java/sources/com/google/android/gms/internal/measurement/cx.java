package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cx implements Parcelable.Creator<zzed> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzed createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long jF = 0;
        long jF2 = 0;
        long jF3 = 0;
        String strK = null;
        String strK2 = null;
        zzjx zzjxVar = null;
        String strK3 = null;
        zzeu zzeuVar = null;
        zzeu zzeuVar2 = null;
        zzeu zzeuVar3 = null;
        boolean zC = false;
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
                    zzjxVar = (zzjx) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzjx.CREATOR);
                    break;
                case 5:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 6:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 7:
                    strK3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 8:
                    zzeuVar = (zzeu) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzeu.CREATOR);
                    break;
                case 9:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 10:
                    zzeuVar2 = (zzeu) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzeu.CREATOR);
                    break;
                case 11:
                    jF3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 12:
                    zzeuVar3 = (zzeu) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzeu.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new zzed(strK, strK2, zzjxVar, jF, zC, strK3, zzeuVar, jF2, zzeuVar2, jF3, zzeuVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzed[] newArray(int i) {
        return new zzed[i];
    }
}
