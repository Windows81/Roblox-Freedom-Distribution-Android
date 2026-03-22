package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ac implements Parcelable.Creator<ResolveAccountResponse> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ResolveAccountResponse createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        IBinder iBinderL = null;
        ConnectionResult connectionResult = null;
        int iD = 0;
        boolean zC = false;
        boolean zC2 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 2) {
                iBinderL = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
            } else if (iA2 == 3) {
                connectionResult = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, ConnectionResult.CREATOR);
            } else if (iA2 == 4) {
                zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
            } else if (iA2 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new ResolveAccountResponse(iD, iBinderL, connectionResult, zC, zC2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
