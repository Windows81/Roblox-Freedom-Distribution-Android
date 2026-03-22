package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface t extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements t {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.t$a$a, reason: collision with other inner class name */
        public static class C0094a extends com.google.android.gms.internal.d.a implements t {
            C0094a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
            }

            @Override // com.google.android.gms.common.internal.t
            public void a(int i, Bundle bundle) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeInt(i);
                com.google.android.gms.internal.d.c.a(parcelD, bundle);
                b(2, parcelD);
            }

            @Override // com.google.android.gms.common.internal.t
            public void a(int i, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeInt(i);
                parcelD.writeStrongBinder(iBinder);
                com.google.android.gms.internal.d.c.a(parcelD, bundle);
                b(1, parcelD);
            }

            @Override // com.google.android.gms.common.internal.t
            public void a(int i, IBinder iBinder, ConnectionInfo connectionInfo) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeInt(i);
                parcelD.writeStrongBinder(iBinder);
                com.google.android.gms.internal.d.c.a(parcelD, connectionInfo);
                b(3, parcelD);
            }
        }

        public a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        public static t a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
            return iInterfaceQueryLocalInterface instanceof t ? (t) iInterfaceQueryLocalInterface : new C0094a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) com.google.android.gms.internal.d.c.a(parcel, Bundle.CREATOR));
            } else if (i == 2) {
                a(parcel.readInt(), (Bundle) com.google.android.gms.internal.d.c.a(parcel, Bundle.CREATOR));
            } else {
                if (i != 3) {
                    return false;
                }
                a(parcel.readInt(), parcel.readStrongBinder(), (ConnectionInfo) com.google.android.gms.internal.d.c.a(parcel, ConnectionInfo.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i, Bundle bundle) throws RemoteException;

    void a(int i, IBinder iBinder, Bundle bundle) throws RemoteException;

    void a(int i, IBinder iBinder, ConnectionInfo connectionInfo) throws RemoteException;
}
