package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        String strK2 = null;
        Uri uri = null;
        ArrayList arrayListC = null;
        String strK3 = null;
        String strK4 = null;
        String strK5 = null;
        String strK6 = null;
        String strK7 = null;
        String strK8 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 2:
                    strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 3:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Uri.CREATOR);
                    break;
                case 4:
                    arrayListC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA, IdToken.CREATOR);
                    break;
                case 5:
                    strK3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 6:
                    strK4 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 7:
                    strK5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 8:
                    strK6 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 9:
                    strK7 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 10:
                    strK8 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new Credential(strK, strK2, uri, arrayListC, strK3, strK4, strK5, strK6, strK7, strK8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential[] newArray(int i) {
        return new Credential[i];
    }
}
