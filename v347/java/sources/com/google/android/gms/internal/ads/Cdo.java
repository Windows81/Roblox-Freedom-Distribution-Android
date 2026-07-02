package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.do, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cdo implements Parcelable.Creator<zzaej> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaej createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        String strH = null;
        String strH2 = null;
        ArrayList<String> arrayListN = null;
        int iD2 = 0;
        ArrayList<String> arrayListN2 = null;
        long jF = 0;
        boolean zC = false;
        long jF2 = 0;
        ArrayList<String> arrayListN3 = null;
        long jF3 = 0;
        int iD3 = 0;
        String strH3 = null;
        long jF4 = 0;
        String strH4 = null;
        boolean zC2 = false;
        String strH5 = null;
        String strH6 = null;
        boolean zC3 = false;
        boolean zC4 = false;
        boolean zC5 = false;
        boolean zC6 = false;
        boolean zC7 = false;
        zzaev zzaevVar = null;
        String strH7 = null;
        String strH8 = null;
        boolean zC8 = false;
        boolean zC9 = false;
        zzaig zzaigVar = null;
        ArrayList<String> arrayListN4 = null;
        ArrayList<String> arrayListN5 = null;
        boolean zC10 = false;
        zzael zzaelVar = null;
        boolean zC11 = false;
        String strH9 = null;
        ArrayList<String> arrayListN6 = null;
        boolean zC12 = false;
        String strH10 = null;
        zzaiq zzaiqVar = null;
        String strH11 = null;
        boolean zC13 = false;
        boolean zC14 = false;
        Bundle bundleJ = null;
        boolean zC15 = false;
        int iD4 = 0;
        boolean zC16 = false;
        ArrayList<String> arrayListN7 = null;
        boolean zC17 = false;
        String strH12 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 3:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 4:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 5:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 6:
                    arrayListN2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 7:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 8:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 10:
                    arrayListN3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 11:
                    jF3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 12:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 13:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 14:
                    jF4 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 15:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                case 41:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
                case 18:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 19:
                    strH5 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 21:
                    strH6 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 22:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 23:
                    zC4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 24:
                    zC5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 25:
                    zC6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 26:
                    zC7 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 28:
                    zzaevVar = (zzaev) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzaev.CREATOR);
                    break;
                case 29:
                    strH7 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 30:
                    strH8 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 31:
                    zC8 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 32:
                    zC9 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 33:
                    zzaigVar = (zzaig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzaig.CREATOR);
                    break;
                case 34:
                    arrayListN4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 35:
                    arrayListN5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 36:
                    zC10 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 37:
                    zzaelVar = (zzael) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzael.CREATOR);
                    break;
                case 38:
                    zC11 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 39:
                    strH9 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 40:
                    arrayListN6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 42:
                    zC12 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 43:
                    strH10 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 44:
                    zzaiqVar = (zzaiq) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzaiq.CREATOR);
                    break;
                case 45:
                    strH11 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 46:
                    zC13 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 47:
                    zC14 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 48:
                    bundleJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 49:
                    zC15 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 50:
                    iD4 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 51:
                    zC16 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 52:
                    arrayListN7 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 53:
                    zC17 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 54:
                    strH12 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzaej(iD, strH, strH2, arrayListN, iD2, arrayListN2, jF, zC, jF2, arrayListN3, jF3, iD3, strH3, jF4, strH4, zC2, strH5, strH6, zC3, zC4, zC5, zC6, zC7, zzaevVar, strH7, strH8, zC8, zC9, zzaigVar, arrayListN4, arrayListN5, zC10, zzaelVar, zC11, strH9, arrayListN6, zC12, strH10, zzaiqVar, strH11, zC13, zC14, bundleJ, zC15, iD4, zC16, arrayListN7, zC17, strH12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaej[] newArray(int i) {
        return new zzaej[i];
    }
}
