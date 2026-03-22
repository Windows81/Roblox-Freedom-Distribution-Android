package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aqi implements Parcelable.Creator<zzlu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzlu createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzlu(iD);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzlu[] newArray(int i) {
        return new zzlu[i];
    }
}
