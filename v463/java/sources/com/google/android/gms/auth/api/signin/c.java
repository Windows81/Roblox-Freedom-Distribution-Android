package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInOptions createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        ArrayList arrayListC = null;
        Account account = null;
        String strK = null;
        String strK2 = null;
        ArrayList arrayListC2 = null;
        int iD = 0;
        boolean zC = false;
        boolean zC2 = false;
        boolean zC3 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    arrayListC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Account.CREATOR);
                    break;
                case 4:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 5:
                    zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 6:
                    zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
                case 7:
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 8:
                    strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 9:
                    arrayListC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new GoogleSignInOptions(iD, (ArrayList<Scope>) arrayListC, account, zC, zC2, zC3, strK, strK2, (ArrayList<GoogleSignInOptionsExtensionParcelable>) arrayListC2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
