package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class atr implements Parcelable.Creator<zzpl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzpl createFromParcel(Parcel parcel) {
        int iD = 0;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzmu zzmuVar = null;
        boolean zC = false;
        int iD2 = 0;
        boolean zC2 = false;
        int iD3 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 3:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 4:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 5:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 6:
                    zzmuVar = (zzmu) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzmu.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzpl(iD3, zC2, iD2, zC, iD, zzmuVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzpl[] newArray(int i) {
        return new zzpl[i];
    }
}
