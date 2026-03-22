package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aoc implements Parcelable.Creator<zzjj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjj createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        long jF = 0;
        Bundle bundleJ = null;
        int iD2 = 0;
        ArrayList<String> arrayListN = null;
        boolean zC = false;
        int iD3 = 0;
        boolean zC2 = false;
        String strH = null;
        zzmq zzmqVar = null;
        Location location = null;
        String strH2 = null;
        Bundle bundleJ2 = null;
        Bundle bundleJ3 = null;
        ArrayList<String> arrayListN2 = null;
        String strH3 = null;
        String strH4 = null;
        boolean zC3 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 3:
                    bundleJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 4:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 5:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 6:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 7:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 8:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 10:
                    zzmqVar = (zzmq) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzmq.CREATOR);
                    break;
                case 11:
                    location = (Location) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Location.CREATOR);
                    break;
                case 12:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 13:
                    bundleJ2 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 14:
                    bundleJ3 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 15:
                    arrayListN2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 16:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 17:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 18:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzjj(iD, jF, bundleJ, iD2, arrayListN, zC, iD3, zC2, strH, zzmqVar, location, strH2, bundleJ2, bundleJ3, arrayListN2, strH3, strH4, zC3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjj[] newArray(int i) {
        return new zzjj[i];
    }
}
