package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bcf extends aiy implements bcd {
    bcf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
    }

    @Override // com.google.android.gms.internal.ads.bcd
    public final int a() throws RemoteException {
        Parcel parcelA = a(1, q_());
        int i = parcelA.readInt();
        parcelA.recycle();
        return i;
    }
}
