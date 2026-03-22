package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInAccount createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        String strH = null;
        String strH2 = null;
        String strH3 = null;
        String strH4 = null;
        Uri uri = null;
        String strH5 = null;
        long jF = 0;
        String strH6 = null;
        ArrayList arrayListC = null;
        String strH7 = null;
        String strH8 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 3:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 4:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 5:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 6:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, iA, Uri.CREATOR);
                    break;
                case 7:
                    strH5 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 8:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 9:
                    strH6 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 10:
                    arrayListC = com.google.android.gms.common.internal.safeparcel.a.c(parcel, iA, Scope.CREATOR);
                    break;
                case 11:
                    strH7 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 12:
                    strH8 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new GoogleSignInAccount(iD, strH, strH2, strH3, strH4, uri, strH5, jF, strH6, arrayListC, strH7, strH8);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
