package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class gn implements Parcelable.Creator<zzahk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzahk createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strH = null;
        zzjj zzjjVar = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    zzjjVar = (zzjj) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, zzjj.CREATOR);
                    break;
                case 3:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzahk(zzjjVar, strH);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzahk[] newArray(int i) {
        return new zzahk[i];
    }
}
