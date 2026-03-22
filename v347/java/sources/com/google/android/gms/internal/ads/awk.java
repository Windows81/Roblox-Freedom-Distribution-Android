package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class awk implements Parcelable.Creator<zzsg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzsg createFromParcel(Parcel parcel) {
        String[] strArrL = null;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String[] strArrL2 = null;
        String strH = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 2:
                    strArrL2 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
                    break;
                case 3:
                    strArrL = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzsg(strH, strArrL2, strArrL);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzsg[] newArray(int i) {
        return new zzsg[i];
    }
}
