package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.c.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.google.android.gms.dynamite.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0099a extends com.google.android.gms.internal.d.b implements a {

        /* JADX INFO: renamed from: com.google.android.gms.dynamite.a$a$a, reason: collision with other inner class name */
        public static class C0100a extends com.google.android.gms.internal.d.a implements a {
            C0100a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
            }

            @Override // com.google.android.gms.dynamite.a
            public int a(com.google.android.gms.c.a aVar, String str) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                parcelD.writeString(str);
                Parcel parcelA = a(1, parcelD);
                int i = parcelA.readInt();
                parcelA.recycle();
                return i;
            }

            @Override // com.google.android.gms.dynamite.a
            public int a(com.google.android.gms.c.a aVar, String str, boolean z) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                parcelD.writeString(str);
                com.google.android.gms.internal.d.c.a(parcelD, z);
                Parcel parcelA = a(3, parcelD);
                int i = parcelA.readInt();
                parcelA.recycle();
                return i;
            }

            @Override // com.google.android.gms.dynamite.a
            public com.google.android.gms.c.a a(com.google.android.gms.c.a aVar, String str, int i) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                parcelD.writeString(str);
                parcelD.writeInt(i);
                Parcel parcelA = a(2, parcelD);
                com.google.android.gms.c.a aVarA = a.AbstractBinderC0080a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0100a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int iA;
            if (i == 1) {
                iA = a(a.AbstractBinderC0080a.a(parcel.readStrongBinder()), parcel.readString());
            } else {
                if (i == 2) {
                    com.google.android.gms.c.a aVarA = a(a.AbstractBinderC0080a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    com.google.android.gms.internal.d.c.a(parcel2, aVarA);
                    return true;
                }
                if (i != 3) {
                    return false;
                }
                iA = a(a.AbstractBinderC0080a.a(parcel.readStrongBinder()), parcel.readString(), com.google.android.gms.internal.d.c.a(parcel));
            }
            parcel2.writeNoException();
            parcel2.writeInt(iA);
            return true;
        }
    }

    int a(com.google.android.gms.c.a aVar, String str) throws RemoteException;

    int a(com.google.android.gms.c.a aVar, String str, boolean z) throws RemoteException;

    com.google.android.gms.c.a a(com.google.android.gms.c.a aVar, String str, int i) throws RemoteException;
}
