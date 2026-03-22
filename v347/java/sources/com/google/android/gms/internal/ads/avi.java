package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class avi extends aiy implements avf {
    avi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.avf
    public final void a(auu auuVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, auuVar);
        b(1, parcelQ_);
    }
}
