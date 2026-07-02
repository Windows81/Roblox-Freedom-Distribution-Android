package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class ds extends aiy implements dq {
    ds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final zzaej a(zzaef zzaefVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzaefVar);
        Parcel parcelA = a(1, parcelQ_);
        zzaej zzaejVar = (zzaej) aja.a(parcelA, zzaej.CREATOR);
        parcelA.recycle();
        return zzaejVar;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(zzaef zzaefVar, dt dtVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzaefVar);
        aja.a(parcelQ_, dtVar);
        b(2, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(zzaey zzaeyVar, dw dwVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzaeyVar);
        aja.a(parcelQ_, dwVar);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void b(zzaey zzaeyVar, dw dwVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzaeyVar);
        aja.a(parcelQ_, dwVar);
        b(5, parcelQ_);
    }
}
