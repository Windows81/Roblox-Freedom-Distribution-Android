package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aoz extends aiy implements aox {
    aoz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final String a() throws RemoteException {
        Parcel parcelA = a(2, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final void a(zzjj zzjjVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzjjVar);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final void a(zzjj zzjjVar, int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeInt(i);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final String b() throws RemoteException {
        Parcel parcelA = a(4, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final boolean c() throws RemoteException {
        Parcel parcelA = a(3, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }
}
