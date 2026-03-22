package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInOptionsExtensionParcelable createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        Bundle bundleM = null;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 2) {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                bundleM = com.google.android.gms.common.internal.safeparcel.a.m(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new GoogleSignInOptionsExtensionParcelable(iD, iD2, bundleM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInOptionsExtensionParcelable[] newArray(int i) {
        return new GoogleSignInOptionsExtensionParcelable[i];
    }
}
