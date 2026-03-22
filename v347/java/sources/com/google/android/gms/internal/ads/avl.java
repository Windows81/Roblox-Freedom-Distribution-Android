package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class avl extends aiy implements avj {
    avl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.avj
    public final void a(auy auyVar, String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, auyVar);
        parcelQ_.writeString(str);
        b(1, parcelQ_);
    }
}
