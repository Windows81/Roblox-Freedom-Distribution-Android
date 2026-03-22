package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jp extends jj implements jn {
    jp(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.jn
    public final Bundle a(Bundle bundle) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, bundle);
        Parcel parcelA2 = a(1, parcelA);
        Bundle bundle2 = (Bundle) jl.a(parcelA2, Bundle.CREATOR);
        parcelA2.recycle();
        return bundle2;
    }
}
