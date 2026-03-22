package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class dp implements Parcelable.Creator<zzael> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzael createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean zC = false;
        ArrayList<String> arrayListN = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 2:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 3:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new zzael(zC, arrayListN);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzael[] newArray(int i) {
        return new zzael[i];
    }
}
