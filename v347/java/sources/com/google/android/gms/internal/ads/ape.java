package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ape extends aiy implements apd {
    ape(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // com.google.android.gms.internal.ads.apd
    public final IBinder a(com.google.android.gms.b.a aVar, String str, bbu bbuVar, int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bbuVar);
        parcelQ_.writeInt(12451000);
        Parcel parcelA = a(1, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        parcelA.recycle();
        return strongBinder;
    }
}
