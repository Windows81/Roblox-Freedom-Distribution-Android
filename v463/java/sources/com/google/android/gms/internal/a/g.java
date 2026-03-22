package com.google.android.gms.internal.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g extends a implements e {
    g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.a.e
    public final String a() throws RemoteException {
        Parcel parcelA = a(1, b_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.a.e
    public final boolean a(boolean z) throws RemoteException {
        Parcel parcelB_ = b_();
        c.a(parcelB_, true);
        Parcel parcelA = a(2, parcelB_);
        boolean zA = c.a(parcelA);
        parcelA.recycle();
        return zA;
    }
}
