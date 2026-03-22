package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class w extends com.google.android.gms.internal.b.a implements v {
    w(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.iid.IMessengerCompat");
    }

    @Override // com.google.android.gms.iid.v
    public final void a(Message message) throws RemoteException {
        Parcel parcelA = a();
        com.google.android.gms.internal.b.b.a(parcelA, message);
        a(1, parcelA);
    }
}
