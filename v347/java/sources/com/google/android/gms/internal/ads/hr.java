package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class hr implements Parcelable.Creator<zzaiq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiq createFromParcel(Parcel parcel) {
        ArrayList<String> arrayListN = null;
        boolean zC = false;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean zC2 = false;
        ArrayList<String> arrayListN2 = null;
        boolean zC3 = false;
        boolean zC4 = false;
        String strH = null;
        String strH2 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 3:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 4:
                    zC4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 5:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 6:
                    arrayListN2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 7:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 8:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzaiq(strH2, strH, zC4, zC3, arrayListN2, zC2, zC, arrayListN);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiq[] newArray(int i) {
        return new zzaiq[i];
    }
}
