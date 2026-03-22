package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amc implements Parcelable.Creator<zzhl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzhl createFromParcel(Parcel parcel) {
        long jF = 0;
        Bundle bundleJ = null;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean zC = false;
        String strH = null;
        String strH2 = null;
        String strH3 = null;
        long jF2 = 0;
        String strH4 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 3:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 4:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 5:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 6:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 7:
                    bundleJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 8:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzhl(strH4, jF2, strH3, strH2, strH, bundleJ, zC, jF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzhl[] newArray(int i) {
        return new zzhl[i];
    }
}
