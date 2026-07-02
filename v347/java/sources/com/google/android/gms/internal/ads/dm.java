package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class dm implements Parcelable.Creator<zzaef> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaef createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        Bundle bundleJ = null;
        zzjj zzjjVar = null;
        zzjn zzjnVar = null;
        String strH = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String strH2 = null;
        String strH3 = null;
        String strH4 = null;
        zzang zzangVar = null;
        Bundle bundleJ2 = null;
        int iD2 = 0;
        ArrayList<String> arrayListN = null;
        Bundle bundleJ3 = null;
        boolean zC = false;
        int iD3 = 0;
        int iD4 = 0;
        float fG = 0.0f;
        String strH5 = null;
        long jF = 0;
        String strH6 = null;
        ArrayList<String> arrayListN2 = null;
        String strH7 = null;
        zzpl zzplVar = null;
        ArrayList<String> arrayListN3 = null;
        long jF2 = 0;
        String strH8 = null;
        float fG2 = 0.0f;
        boolean zC2 = false;
        int iD5 = 0;
        int iD6 = 0;
        boolean zC3 = false;
        boolean zC4 = false;
        String strH9 = null;
        String strH10 = null;
        boolean zC5 = false;
        int iD7 = 0;
        Bundle bundleJ4 = null;
        String strH11 = null;
        zzlu zzluVar = null;
        boolean zC6 = false;
        Bundle bundleJ5 = null;
        String strH12 = null;
        String strH13 = null;
        String strH14 = null;
        boolean zC7 = false;
        ArrayList<Integer> arrayListM = null;
        String strH15 = null;
        ArrayList<String> arrayListN4 = null;
        int iD8 = 0;
        boolean zC8 = false;
        boolean zC9 = false;
        boolean zC10 = false;
        ArrayList<String> arrayListN5 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    bundleJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 3:
                    zzjjVar = (zzjj) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzjj.CREATOR);
                    break;
                case 4:
                    zzjnVar = (zzjn) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzjn.CREATOR);
                    break;
                case 5:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, PackageInfo.CREATOR);
                    break;
                case 8:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 9:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 10:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 11:
                    zzangVar = (zzang) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzang.CREATOR);
                    break;
                case 12:
                    bundleJ2 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 13:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 14:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 15:
                    bundleJ3 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 16:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
                case 18:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 19:
                    iD4 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 20:
                    fG = com.google.android.gms.common.internal.safeparcel.a.g(parcel, iA);
                    break;
                case 21:
                    strH5 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 25:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 26:
                    strH6 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 27:
                    arrayListN2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 28:
                    strH7 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 29:
                    zzplVar = (zzpl) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzpl.CREATOR);
                    break;
                case 30:
                    arrayListN3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 31:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 33:
                    strH8 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 34:
                    fG2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, iA);
                    break;
                case 35:
                    iD5 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 36:
                    iD6 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 37:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 38:
                    zC4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 39:
                    strH9 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 40:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 41:
                    strH10 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 42:
                    zC5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 43:
                    iD7 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 44:
                    bundleJ4 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 45:
                    strH11 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 46:
                    zzluVar = (zzlu) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzlu.CREATOR);
                    break;
                case 47:
                    zC6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 48:
                    bundleJ5 = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 49:
                    strH12 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 50:
                    strH13 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 51:
                    strH14 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 52:
                    zC7 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 53:
                    arrayListM = com.google.android.gms.common.internal.safeparcel.a.m(parcel, iA);
                    break;
                case 54:
                    strH15 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 55:
                    arrayListN4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 56:
                    iD8 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 57:
                    zC8 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 58:
                    zC9 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 59:
                    zC10 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 60:
                    arrayListN5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzaef(iD, bundleJ, zzjjVar, zzjnVar, strH, applicationInfo, packageInfo, strH2, strH3, strH4, zzangVar, bundleJ2, iD2, arrayListN, bundleJ3, zC, iD3, iD4, fG, strH5, jF, strH6, arrayListN2, strH7, zzplVar, arrayListN3, jF2, strH8, fG2, zC2, iD5, iD6, zC3, zC4, strH9, strH10, zC5, iD7, bundleJ4, strH11, zzluVar, zC6, bundleJ5, strH12, strH13, strH14, zC7, arrayListM, strH15, arrayListN4, iD8, zC8, zC9, zC10, arrayListN5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaef[] newArray(int i) {
        return new zzaef[i];
    }
}
