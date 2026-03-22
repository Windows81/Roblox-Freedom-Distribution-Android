package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Parcelable.Creator<AuthAccountResult> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AuthAccountResult createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        Intent intent = null;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 == 2) {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                intent = (Intent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Intent.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new AuthAccountResult(iD, iD2, intent);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AuthAccountResult[] newArray(int i) {
        return new AuthAccountResult[i];
    }
}
