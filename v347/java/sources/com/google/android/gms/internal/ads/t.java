package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class t extends aiy implements r {
    t(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(int i, int i2, Intent intent) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeInt(i);
        parcelQ_.writeInt(i2);
        aja.a(parcelQ_, intent);
        b(12, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(13, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void b(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        Parcel parcelA = a(6, parcelQ_);
        if (parcelA.readInt() != 0) {
            bundle.readFromParcel(parcelA);
        }
        parcelA.recycle();
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void d() throws RemoteException {
        b(10, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final boolean e() throws RemoteException {
        Parcel parcelA = a(11, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void f() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void g() throws RemoteException {
        b(3, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void h() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void i() throws RemoteException {
        b(5, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void j() throws RemoteException {
        b(7, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void k() throws RemoteException {
        b(8, q_());
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void l() throws RemoteException {
        b(9, q_());
    }
}
