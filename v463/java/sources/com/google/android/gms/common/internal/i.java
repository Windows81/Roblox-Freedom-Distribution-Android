package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i implements Parcelable.Creator<GetServiceRequest> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        IBinder iBinderL = null;
        Scope[] scopeArr = null;
        Bundle bundleM = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        boolean zC = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 3:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 4:
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 5:
                    iBinderL = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
                    break;
                case 6:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Scope.CREATOR);
                    break;
                case 7:
                    bundleM = com.google.android.gms.common.internal.safeparcel.a.m(parcel, iA);
                    break;
                case 8:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Account.CREATOR);
                    break;
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
                case 10:
                    featureArr = (Feature[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Feature.CREATOR);
                    break;
                case 12:
                    zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new GetServiceRequest(iD, iD2, iD3, strK, iBinderL, scopeArr, bundleM, account, featureArr, featureArr2, zC);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
