package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = "";
        GoogleSignInAccount googleSignInAccount = null;
        String strK2 = "";
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 4) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 == 7) {
                googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, GoogleSignInAccount.CREATOR);
            } else if (iA2 != 8) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new SignInAccount(strK, googleSignInAccount, strK2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
