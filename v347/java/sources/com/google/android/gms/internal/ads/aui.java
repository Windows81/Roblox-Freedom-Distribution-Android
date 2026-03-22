package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aui extends aiy implements aug {
    aui(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final com.google.android.gms.b.a a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        Parcel parcelA = a(2, parcelQ_);
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a(com.google.android.gms.b.a aVar, int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeInt(i);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a(String str, com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        aja.a(parcelQ_, aVar);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void b(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(6, parcelQ_);
    }
}
