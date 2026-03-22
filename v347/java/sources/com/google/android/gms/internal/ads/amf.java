package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amf extends aiy implements ame {
    amf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.ame
    public final zzhi a(zzhl zzhlVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzhlVar);
        Parcel parcelA = a(1, parcelQ_);
        zzhi zzhiVar = (zzhi) aja.a(parcelA, zzhi.CREATOR);
        parcelA.recycle();
        return zzhiVar;
    }
}
