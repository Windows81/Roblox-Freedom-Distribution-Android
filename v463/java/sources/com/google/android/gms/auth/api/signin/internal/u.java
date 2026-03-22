package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class u implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 2) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                googleSignInOptions = (GoogleSignInOptions) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, GoogleSignInOptions.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new SignInConfiguration(strK, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
