package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ea implements Parcelable.Creator<zzaey> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaey createFromParcel(Parcel parcel) {
        String strH = null;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean zC = false;
        String strH2 = null;
        PackageInfo packageInfo = null;
        ArrayList<String> arrayListN = null;
        String strH3 = null;
        ApplicationInfo applicationInfo = null;
        zzang zzangVar = null;
        Bundle bundleJ = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    bundleJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 2:
                    zzangVar = (zzang) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzang.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 5:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 6:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, PackageInfo.CREATOR);
                    break;
                case 7:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 8:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzaey(bundleJ, zzangVar, applicationInfo, strH3, arrayListN, packageInfo, strH2, zC, strH);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaey[] newArray(int i) {
        return new zzaey[i];
    }
}
