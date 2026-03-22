package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class avu extends aiy implements avs {
    avu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.avs
    public final void a(avx avxVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, avxVar);
        b(1, parcelQ_);
    }
}
