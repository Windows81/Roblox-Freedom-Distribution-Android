package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bcc extends aiy implements bca {
    bcc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a() throws RemoteException {
        b(1, q_());
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeInt(i);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(auy auyVar, String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, auyVar);
        parcelQ_.writeString(str);
        b(10, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(bcd bcdVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bcdVar);
        b(7, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        b(12, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(String str, String str2) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        parcelQ_.writeString(str2);
        b(9, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void b() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void c() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void d() throws RemoteException {
        b(5, q_());
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void e() throws RemoteException {
        b(6, q_());
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void f() throws RemoteException {
        b(8, q_());
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void g() throws RemoteException {
        b(11, q_());
    }
}
