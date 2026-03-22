package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i implements Parcelable.Creator<CredentialPickerConfig> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        boolean zC = false;
        boolean zC2 = false;
        boolean zC3 = false;
        int iD2 = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
            } else if (iA2 == 2) {
                zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
            } else if (iA2 == 3) {
                zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
            } else if (iA2 == 4) {
                iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 1000) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new CredentialPickerConfig(iD, zC, zC2, zC3, iD2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig[] newArray(int i) {
        return new CredentialPickerConfig[i];
    }
}
