package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bec implements Parcelable.Creator<zzzt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzt createFromParcel(Parcel parcel) {
        int iD = 0;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD2 = 0;
        int iD3 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 3:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzzt(iD3, iD2, iD);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzt[] newArray(int i) {
        return new zzzt[i];
    }
}
