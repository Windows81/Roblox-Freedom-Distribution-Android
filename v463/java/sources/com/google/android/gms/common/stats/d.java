package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements Parcelable.Creator<WakeLockEvent> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WakeLockEvent createFromParcel(Parcel parcel) {
        int iB = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long jF = 0;
        long jF2 = 0;
        long jF3 = 0;
        String strK = null;
        ArrayList<String> arrayListP = null;
        String strK2 = null;
        String strK3 = null;
        String strK4 = null;
        String strK5 = null;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        int iD4 = 0;
        float fH = 0.0f;
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
                    strK = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 5:
                    iD3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 6:
                    arrayListP = com.google.android.gms.common.internal.safeparcel.a.p(parcel, iA);
                    break;
                case 8:
                    jF2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 10:
                    strK3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 11:
                    iD2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 12:
                    strK2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 13:
                    strK4 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
                case 14:
                    iD4 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, iA);
                    break;
                case 15:
                    fH = com.google.android.gms.common.internal.safeparcel.a.h(parcel, iA);
                    break;
                case 16:
                    jF3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, iA);
                    break;
                case 17:
                    strK5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, iA);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.q(parcel, iB);
        return new WakeLockEvent(iD, jF, iD2, strK, iD3, arrayListP, strK2, jF2, iD4, strK3, strK4, fH, jF3, strK5);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
