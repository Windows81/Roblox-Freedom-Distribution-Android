package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ash extends aiy implements asf {
    ash(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final String a() throws RemoteException {
        Parcel parcelA = a(1, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final String b() throws RemoteException {
        Parcel parcelA = a(2, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final void c() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final void d() throws RemoteException {
        b(5, q_());
    }
}
