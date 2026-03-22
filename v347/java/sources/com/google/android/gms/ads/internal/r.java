package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class r implements Parcelable.Creator<zzaq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaq createFromParcel(Parcel parcel) {
        boolean zC = false;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strH = null;
        float fG = 0.0f;
        boolean zC2 = false;
        boolean zC3 = false;
        int iD = 0;
        boolean zC4 = false;
        boolean zC5 = false;
        boolean zC6 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    zC6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 3:
                    zC5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 4:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 5:
                    zC4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 6:
                    fG = com.google.android.gms.common.internal.safeparcel.a.g(parcel, iA);
                    break;
                case 7:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 8:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 10:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzaq(zC6, zC5, strH, zC4, fG, iD, zC3, zC2, zC);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaq[] newArray(int i) {
        return new zzaq[i];
    }
}
