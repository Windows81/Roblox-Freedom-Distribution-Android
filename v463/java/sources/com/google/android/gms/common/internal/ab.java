package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ab implements Parcelable.Creator<ResolveAccountRequest> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ResolveAccountRequest createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int iD = 0;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 2) {
                account = (Account) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Account.CREATOR);
            } else if (iA2 == 3) {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, GoogleSignInAccount.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new ResolveAccountRequest(iD, account, iD2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
