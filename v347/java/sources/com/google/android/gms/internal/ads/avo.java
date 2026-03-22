package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class avo extends aiy implements avm {
    avo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.avm
    public final void a(auy auyVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, auyVar);
        b(1, parcelQ_);
    }
}
