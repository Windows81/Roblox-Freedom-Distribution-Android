package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class apw extends aiy implements apu {
    apw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
    }

    @Override // com.google.android.gms.internal.ads.apu
    public final long a() throws RemoteException {
        Parcel parcelA = a(1, q_());
        long j = parcelA.readLong();
        parcelA.recycle();
        return j;
    }
}
