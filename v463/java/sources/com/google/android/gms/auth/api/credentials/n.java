package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class n implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArrN = null;
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
                        credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, CredentialPickerConfig.CREATOR);
                        break;
                    case 2:
                        zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                        break;
                    case 3:
                        zC2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                        break;
                    case 4:
                        strArrN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                        break;
                    case 5:
                        zC3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
                        break;
                    case 6:
                        strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                        break;
                    case 7:
                        strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
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
        return new HintRequest(iD, credentialPickerConfig, zC, zC2, strArrN, zC3, strK, strK2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}
