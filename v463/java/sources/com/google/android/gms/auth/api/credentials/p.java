package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class p implements Parcelable.Creator<PasswordSpecification> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PasswordSpecification createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        ArrayList<String> arrayListP = null;
        ArrayList<Integer> arrayListO = null;
        int iD = 0;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 == 2) {
                arrayListP = com.google.android.gms.common.internal.safeparcel.a.p(parcel, iA);
            } else if (iA2 == 3) {
                arrayListO = com.google.android.gms.common.internal.safeparcel.a.o(parcel, iA);
            } else if (iA2 == 4) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new PasswordSpecification(strK, arrayListP, arrayListO, iD, iD2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PasswordSpecification[] newArray(int i) {
        return new PasswordSpecification[i];
    }
}
