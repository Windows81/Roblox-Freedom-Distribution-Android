package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConnectionResult createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        PendingIntent pendingIntent = null;
        String strK = null;
        int iD = 0;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 2) {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 3) {
                pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, PendingIntent.CREATOR);
            } else if (iA2 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new ConnectionResult(iD, iD2, pendingIntent, strK);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
