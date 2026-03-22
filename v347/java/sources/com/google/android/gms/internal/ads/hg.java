package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class hg extends aiy implements he {
    hg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        b(12, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(com.google.android.gms.b.a aVar, int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeInt(i);
        b(2, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(com.google.android.gms.b.a aVar, zzaig zzaigVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzaigVar);
        b(7, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void b(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void b(com.google.android.gms.b.a aVar, int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeInt(i);
        b(9, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void c(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void d(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void e(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(6, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void f(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(8, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void g(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(10, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void h(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(11, parcelQ_);
    }
}
