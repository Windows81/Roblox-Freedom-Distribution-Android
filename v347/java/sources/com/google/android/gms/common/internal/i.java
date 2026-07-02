package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: loaded from: classes.dex */
public class i implements Parcelable.Creator<GetServiceRequest> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest createFromParcel(Parcel parcel) {
        boolean zC = false;
        Feature[] featureArr = null;
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Feature[] featureArr2 = null;
        Account account = null;
        Bundle bundleJ = null;
        Scope[] scopeArr = null;
        IBinder iBinderI = null;
        String strH = null;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 3:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 4:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 5:
                    iBinderI = com.google.android.gms.common.internal.safeparcel.a.i(parcel, iA);
                    break;
                case 6:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Scope.CREATOR);
                    break;
                case 7:
                    bundleJ = com.google.android.gms.common.internal.safeparcel.a.j(parcel, iA);
                    break;
                case 8:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Account.CREATOR);
                    break;
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
                case 10:
                    featureArr2 = (Feature[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Feature.CREATOR);
                    break;
                case 11:
                    featureArr = (Feature[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Feature.CREATOR);
                    break;
                case 12:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new GetServiceRequest(iD3, iD2, iD, strH, iBinderI, scopeArr, bundleJ, account, featureArr2, featureArr, zC);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
