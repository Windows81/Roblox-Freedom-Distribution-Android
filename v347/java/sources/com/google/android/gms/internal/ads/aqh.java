package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aqh extends aiy implements aqf {
    aqh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.aqf
    public final void a() throws RemoteException {
        b(1, q_());
    }

    @Override // com.google.android.gms.internal.ads.aqf
    public final void a(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aqf
    public final void b() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.aqf
    public final void c() throws RemoteException {
        b(3, q_());
    }

    @Override // com.google.android.gms.internal.ads.aqf
    public final void d() throws RemoteException {
        b(4, q_());
    }
}
