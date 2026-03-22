package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class gj extends aiy implements gh {
    gj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a() throws RemoteException {
        b(1, q_());
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a(int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeInt(i);
        b(7, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a(fw fwVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, fwVar);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void b() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void c() throws RemoteException {
        b(3, q_());
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void d() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void e() throws RemoteException {
        b(6, q_());
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void f() throws RemoteException {
        b(8, q_());
    }
}
