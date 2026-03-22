package com.google.android.gms.internal.b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f5829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5830b;

    protected a(IBinder iBinder, String str) {
        this.f5829a = iBinder;
        this.f5830b = str;
    }

    protected final Parcel a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f5830b);
        return parcelObtain;
    }

    protected final void a(int i, Parcel parcel) throws RemoteException {
        try {
            this.f5829a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f5829a;
    }
}
