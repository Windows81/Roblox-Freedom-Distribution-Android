package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d implements Parcelable.Creator<WakeLockEvent> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WakeLockEvent createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int iD = 0;
        long jF = 0;
        int iD2 = 0;
        String strH = null;
        int iD3 = 0;
        ArrayList<String> arrayListN = null;
        String strH2 = null;
        long jF2 = 0;
        int iD4 = 0;
        String strH3 = null;
        String strH4 = null;
        float fG = 0.0f;
        long jF3 = 0;
        String strH5 = null;
        while (parcel.dataPosition() < iB) {
            int iA = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(iA)) {
                case 1:
                    iD = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 2:
                    jF = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, iA);
                    break;
                case 4:
                    strH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 5:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 6:
                    arrayListN = com.google.android.gms.common.internal.safeparcel.a.n(parcel, iA);
                    break;
                case 8:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 10:
                    strH3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 11:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 12:
                    strH2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 13:
                    strH4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 14:
                    iD4 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 15:
                    fG = com.google.android.gms.common.internal.safeparcel.a.g(parcel, iA);
                    break;
                case 16:
                    jF3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 17:
                    strH5 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.o(parcel, iB);
        return new WakeLockEvent(iD, jF, iD2, strH, iD3, arrayListN, strH2, jF2, iD4, strH3, strH4, fG, jF3, strH5);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
