package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements Parcelable.Creator<AuthAccountRequest> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AuthAccountRequest createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        IBinder iBinderL = null;
        Scope[] scopeArr = null;
        Integer numE = null;
        Integer numE2 = null;
        Account account = null;
        int iD = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    iBinderL = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
                    break;
                case 3:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Scope.CREATOR);
                    break;
                case 4:
                    numE = com.google.android.gms.common.internal.safeparcel.a.e(parcel, iA);
                    break;
                case 5:
                    numE2 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, iA);
                    break;
                case 6:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Account.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new AuthAccountRequest(iD, iBinderL, scopeArr, numE, numE2, account);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AuthAccountRequest[] newArray(int i) {
        return new AuthAccountRequest[i];
    }
}
