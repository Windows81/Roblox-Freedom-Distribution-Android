package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class u implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        PendingIntent pendingIntent = null;
        int iD = 0;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 2) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 == 3) {
                pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, PendingIntent.CREATOR);
            } else if (iA2 != 1000) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new Status(iD, iD2, strK, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
