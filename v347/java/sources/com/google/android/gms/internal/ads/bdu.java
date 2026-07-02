package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class bdu extends aiy implements bds {
    bdu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final zzzt a() throws RemoteException {
        Parcel parcelA = a(2, q_());
        zzzt zzztVar = (zzzt) aja.a(parcelA, zzzt.CREATOR);
        parcelA.recycle();
        return zzztVar;
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void a(com.google.android.gms.b.a aVar, String str, Bundle bundle, bdv bdvVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bundle);
        aja.a(parcelQ_, bdvVar);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void a(byte[] bArr, String str, Bundle bundle, com.google.android.gms.b.a aVar, bdo bdoVar, bca bcaVar, zzjn zzjnVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeByteArray(bArr);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bundle);
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, bdoVar);
        aja.a(parcelQ_, bcaVar);
        aja.a(parcelQ_, zzjnVar);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void a(byte[] bArr, String str, Bundle bundle, com.google.android.gms.b.a aVar, bdq bdqVar, bca bcaVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeByteArray(bArr);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bundle);
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, bdqVar);
        aja.a(parcelQ_, bcaVar);
        b(6, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final zzzt b() throws RemoteException {
        Parcel parcelA = a(3, q_());
        zzzt zzztVar = (zzzt) aja.a(parcelA, zzzt.CREATOR);
        parcelA.recycle();
        return zzztVar;
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final aqc c() throws RemoteException {
        Parcel parcelA = a(5, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void d() throws RemoteException {
        b(7, q_());
    }
}
