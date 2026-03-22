package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class awn extends aiy implements awm {
    awn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.awm
    public final ParcelFileDescriptor a(zzsg zzsgVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzsgVar);
        Parcel parcelA = a(1, parcelQ_);
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) aja.a(parcelA, ParcelFileDescriptor.CREATOR);
        parcelA.recycle();
        return parcelFileDescriptor;
    }
}
