package com.google.android.gms.internal.d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f3997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3998b;

    protected a(IBinder iBinder, String str) {
        this.f3997a = iBinder;
        this.f3998b = str;
    }

    protected Parcel a(int i, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f3997a.transact(i, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e2) {
                parcelObtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f3997a;
    }

    protected void b(int i, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f3997a.transact(i, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    protected void c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f3997a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    protected Parcel d() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f3998b);
        return parcelObtain;
    }
}
