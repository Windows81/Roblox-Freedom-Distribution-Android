package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class fy extends aiy implements fw {
    fy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.fw
    public final String a() throws RemoteException {
        Parcel parcelA = a(1, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.fw
    public final int b() throws RemoteException {
        Parcel parcelA = a(2, q_());
        int i = parcelA.readInt();
        parcelA.recycle();
        return i;
    }
}
