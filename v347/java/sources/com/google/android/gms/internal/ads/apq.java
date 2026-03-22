package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class apq extends aiy implements apo {
    apq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.internal.ads.apo
    public final void a(String str, String str2) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        parcelQ_.writeString(str2);
        b(1, parcelQ_);
    }
}
