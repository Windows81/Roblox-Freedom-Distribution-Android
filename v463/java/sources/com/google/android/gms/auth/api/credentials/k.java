package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String[] strArrN = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String strK = null;
        String strK2 = null;
        int iD = 0;
        boolean zC = false;
        boolean zC2 = false;
        boolean zC3 = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 != 1000) {
                switch (iA2) {
                    case 1:
                        zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                        break;
                    case 2:
                        strArrN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                        break;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, CredentialPickerConfig.CREATOR);
                        break;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, CredentialPickerConfig.CREATOR);
                        break;
                    case 5:
                        zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                        break;
                    case 6:
                        strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                        break;
                    case 7:
                        strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                        break;
                    case 8:
                        zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                        break;
                }
            } else {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new CredentialRequest(iD, zC, strArrN, credentialPickerConfig, credentialPickerConfig2, zC2, strK, strK2, zC3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}
