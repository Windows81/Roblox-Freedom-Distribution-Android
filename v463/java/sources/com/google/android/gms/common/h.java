package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h implements Parcelable.Creator<GoogleCertificatesQuery> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleCertificatesQuery createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        IBinder iBinderL = null;
        boolean zC = false;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int iA2 = com.google.android.gms.common.internal.safeparcel.a.a(iA);
            if (iA2 == 1) {
                strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
            } else if (iA2 == 2) {
                iBinderL = com.google.android.gms.common.internal.safeparcel.a.l(parcel, iA);
            } else if (iA2 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
            } else {
                zC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new GoogleCertificatesQuery(strK, iBinderL, zC);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleCertificatesQuery[] newArray(int i) {
        return new GoogleCertificatesQuery[i];
    }
}
