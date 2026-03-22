package com.google.android.gms.internal.b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f extends a implements e {
    f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    @Override // com.google.android.gms.internal.b.e
    public final void a(g gVar) throws RemoteException {
        Parcel parcelA = a();
        c.a(parcelA, gVar);
        a(1, parcelA);
    }
}
