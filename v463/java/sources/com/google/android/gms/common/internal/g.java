package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g implements Parcelable.Creator<ConnectionInfo> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConnectionInfo createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Bundle bundleM = null;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                bundleM = com.google.android.gms.common.internal.safeparcel.a.m(parcel, iA);
            } else if (iA2 != 2) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                featureArr = (Feature[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA, Feature.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new ConnectionInfo(bundleM, featureArr);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConnectionInfo[] newArray(int i) {
        return new ConnectionInfo[i];
    }
}
