package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bdr extends aiy implements bdq {
    bdr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.bdq
    public final void a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        b(3, parcelQ_);
    }
}
