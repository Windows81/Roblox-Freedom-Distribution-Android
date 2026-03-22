package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l implements Parcelable.Creator<zzay> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzay createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(iA) != 1) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                credential = (Credential) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Credential.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new zzay(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzay[] newArray(int i) {
        return new zzay[i];
    }
}
