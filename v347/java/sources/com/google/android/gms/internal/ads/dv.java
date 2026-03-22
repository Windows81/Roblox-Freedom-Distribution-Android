package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class dv extends aiy implements dt {
    dv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.dt
    public final void a(zzaej zzaejVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzaejVar);
        b(1, parcelQ_);
    }
}
