package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h implements Parcelable.Creator<SignInRequest> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SignInRequest createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
            } else if (iA2 != 2) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, ResolveAccountRequest.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new SignInRequest(iD, resolveAccountRequest);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SignInRequest[] newArray(int i) {
        return new SignInRequest[i];
    }
}
