package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class apj extends aiy implements api {
    apj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.api
    public final IBinder a(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, bbu bbuVar, int i, int i2) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjnVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bbuVar);
        parcelQ_.writeInt(12451000);
        parcelQ_.writeInt(i2);
        Parcel parcelA = a(2, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        parcelA.recycle();
        return strongBinder;
    }
}
