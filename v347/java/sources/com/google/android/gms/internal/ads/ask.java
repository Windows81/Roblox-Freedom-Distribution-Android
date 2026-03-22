package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ask extends aiy implements asi {
    ask(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.asi
    public final void a(asf asfVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, asfVar);
        b(1, parcelQ_);
    }
}
