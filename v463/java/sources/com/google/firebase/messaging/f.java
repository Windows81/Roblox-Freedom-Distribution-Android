package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f implements Parcelable.Creator<RemoteMessage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RemoteMessage createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Bundle bundleM = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(iA) == 2) {
                bundleM = com.google.android.gms.common.internal.safeparcel.a.m(parcel, iA);
            } else {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new RemoteMessage(bundleM);
    }
}
