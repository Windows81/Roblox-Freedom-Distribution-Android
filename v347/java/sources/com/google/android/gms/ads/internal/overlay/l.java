package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzaq;
import com.google.android.gms.internal.ads.zzang;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzc zzcVar = null;
        IBinder iBinderI = null;
        IBinder iBinderI2 = null;
        IBinder iBinderI3 = null;
        IBinder iBinderI4 = null;
        String strH = null;
        boolean zC = false;
        String strH2 = null;
        IBinder iBinderI5 = null;
        int iD = 0;
        int iD2 = 0;
        String strH3 = null;
        zzang zzangVar = null;
        String strH4 = null;
        zzaq zzaqVar = null;
        IBinder iBinderI6 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    zzcVar = (zzc) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzc.CREATOR);
                    break;
                case 3:
                    iBinderI = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 4:
                    iBinderI2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 5:
                    iBinderI3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 6:
                    iBinderI4 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 7:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 8:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 9:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 10:
                    iBinderI5 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 11:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 12:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 13:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 14:
                    zzangVar = (zzang) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzang.CREATOR);
                    break;
                case 15:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
                case 16:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 17:
                    zzaqVar = (zzaq) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzaq.CREATOR);
                    break;
                case 18:
                    iBinderI6 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new AdOverlayInfoParcel(zzcVar, iBinderI, iBinderI2, iBinderI3, iBinderI4, strH, zC, strH2, iBinderI5, iD, iD2, strH3, zzangVar, strH4, zzaqVar, iBinderI6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
