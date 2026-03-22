package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class awl implements Parcelable.Creator<zzsi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzsi createFromParcel(Parcel parcel) {
        boolean zC = false;
        String[] strArrL = null;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long jF = 0;
        String[] strArrL2 = null;
        byte[] bArrK = null;
        int iD = 0;
        String strH = null;
        boolean zC2 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 2:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 3:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 4:
                    bArrK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 5:
                    strArrL2 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
                    break;
                case 6:
                    strArrL = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
                    break;
                case 7:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 8:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzsi(zC2, strH, iD, bArrK, strArrL2, strArrL, zC, jF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzsi[] newArray(int i) {
        return new zzsi[i];
    }
}
