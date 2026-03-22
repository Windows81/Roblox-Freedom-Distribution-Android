package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInAccount createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String strK = null;
        String strK2 = null;
        String strK3 = null;
        String strK4 = null;
        Uri uri = null;
        String strK5 = null;
        String strK6 = null;
        ArrayList arrayListC = null;
        String strK7 = null;
        String strK8 = null;
        long jF = 0;
        int iD = 0;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 3:
                    strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 4:
                    strK3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 5:
                    strK4 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 6:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Uri.CREATOR);
                    break;
                case 7:
                    strK5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 8:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 9:
                    strK6 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 10:
                    arrayListC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA, Scope.CREATOR);
                    break;
                case 11:
                    strK7 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 12:
                    strK8 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new GoogleSignInAccount(iD, strK, strK2, strK3, strK4, uri, strK5, jF, strK6, arrayListC, strK7, strK8);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
