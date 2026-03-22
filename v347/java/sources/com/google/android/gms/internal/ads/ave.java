package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ave extends aiy implements avc {
    ave(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.avc
    public final void a(auq auqVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, auqVar);
        b(1, parcelQ_);
    }
}
