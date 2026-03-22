package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class cc implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f5958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5959b;

    protected cc(IBinder iBinder, String str) {
        this.f5958a = iBinder;
        this.f5959b = str;
    }

    protected final Parcel a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f5959b);
        return parcelObtain;
    }

    protected final void a(int i, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f5958a.transact(i, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f5958a;
    }
}
