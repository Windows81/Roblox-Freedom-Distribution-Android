package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aow extends aiy implements aou {
    aow(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a() throws RemoteException {
        b(1, q_());
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a(int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeInt(i);
        b(2, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void b() throws RemoteException {
        b(3, q_());
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void c() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void d() throws RemoteException {
        b(5, q_());
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void e() throws RemoteException {
        b(6, q_());
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void f() throws RemoteException {
        b(7, q_());
    }
}
