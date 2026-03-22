package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class te extends aiy implements td {
    te(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.td
    public final zzatv a(zzatt zzattVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzattVar);
        Parcel parcelA = a(1, parcelQ_);
        zzatv zzatvVar = (zzatv) aja.a(parcelA, zzatv.CREATOR);
        parcelA.recycle();
        return zzatvVar;
    }
}
