package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.c.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface s extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements s {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.s$a$a, reason: collision with other inner class name */
        public static class C0092a extends com.google.android.gms.internal.d.a implements s {
            C0092a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.ICertData");
            }

            @Override // com.google.android.gms.common.internal.s
            public com.google.android.gms.c.a b() throws RemoteException {
                Parcel parcelA = a(1, d());
                com.google.android.gms.c.a aVarA = a.AbstractBinderC0080a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }

            @Override // com.google.android.gms.common.internal.s
            public int c() throws RemoteException {
                Parcel parcelA = a(2, d());
                int i = parcelA.readInt();
                parcelA.recycle();
                return i;
            }
        }

        public a() {
            super("com.google.android.gms.common.internal.ICertData");
        }

        public static s a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
            return iInterfaceQueryLocalInterface instanceof s ? (s) iInterfaceQueryLocalInterface : new C0092a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                com.google.android.gms.c.a aVarB = b();
                parcel2.writeNoException();
                com.google.android.gms.internal.d.c.a(parcel2, aVarB);
            } else {
                if (i != 2) {
                    return false;
                }
                int iC = c();
                parcel2.writeNoException();
                parcel2.writeInt(iC);
            }
            return true;
        }
    }

    com.google.android.gms.c.a b() throws RemoteException;

    int c() throws RemoteException;
}
