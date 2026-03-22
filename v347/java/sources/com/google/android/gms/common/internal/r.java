package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface r extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements r {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.r$a$a, reason: collision with other inner class name */
        public static class C0076a extends com.google.android.gms.internal.c.a implements r {
            C0076a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
            }

            @Override // com.google.android.gms.common.internal.r
            public void a(int i, Bundle bundle) throws RemoteException {
                Parcel parcelB = b();
                parcelB.writeInt(i);
                com.google.android.gms.internal.c.c.a(parcelB, bundle);
                b(2, parcelB);
            }

            @Override // com.google.android.gms.common.internal.r
            public void a(int i, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcelB = b();
                parcelB.writeInt(i);
                parcelB.writeStrongBinder(iBinder);
                com.google.android.gms.internal.c.c.a(parcelB, bundle);
                b(1, parcelB);
            }

            @Override // com.google.android.gms.common.internal.r
            public void a(int i, IBinder iBinder, ConnectionInfo connectionInfo) throws RemoteException {
                Parcel parcelB = b();
                parcelB.writeInt(i);
                parcelB.writeStrongBinder(iBinder);
                com.google.android.gms.internal.c.c.a(parcelB, connectionInfo);
                b(3, parcelB);
            }
        }

        public a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        public static r a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
            return iInterfaceQueryLocalInterface instanceof r ? (r) iInterfaceQueryLocalInterface : new C0076a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) com.google.android.gms.internal.c.c.a(parcel, Bundle.CREATOR));
                    break;
                case 2:
                    a(parcel.readInt(), (Bundle) com.google.android.gms.internal.c.c.a(parcel, Bundle.CREATOR));
                    break;
                case 3:
                    a(parcel.readInt(), parcel.readStrongBinder(), (ConnectionInfo) com.google.android.gms.internal.c.c.a(parcel, ConnectionInfo.CREATOR));
                    break;
                default:
                    return false;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i, Bundle bundle) throws RemoteException;

    void a(int i, IBinder iBinder, Bundle bundle) throws RemoteException;

    void a(int i, IBinder iBinder, ConnectionInfo connectionInfo) throws RemoteException;
}
