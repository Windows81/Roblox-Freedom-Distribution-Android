package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class avr extends aiy implements avp {
    avr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.avp
    public final void a(apf apfVar, com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, apfVar);
        aja.a(parcelQ_, aVar);
        b(1, parcelQ_);
    }
}
