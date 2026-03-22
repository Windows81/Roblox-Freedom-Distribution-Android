package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.c.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface b extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements b {

        /* JADX INFO: renamed from: com.google.android.gms.dynamite.b$a$a, reason: collision with other inner class name */
        public static class C0101a extends com.google.android.gms.internal.d.a implements b {
            C0101a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
            }

            @Override // com.google.android.gms.dynamite.b
            public com.google.android.gms.c.a a(com.google.android.gms.c.a aVar, String str, int i, com.google.android.gms.c.a aVar2) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                parcelD.writeString(str);
                parcelD.writeInt(i);
                com.google.android.gms.internal.d.c.a(parcelD, aVar2);
                Parcel parcelA = a(2, parcelD);
                com.google.android.gms.c.a aVarA = a.AbstractBinderC0080a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }

            @Override // com.google.android.gms.dynamite.b
            public com.google.android.gms.c.a a(com.google.android.gms.c.a aVar, String str, byte[] bArr) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                parcelD.writeString(str);
                parcelD.writeByteArray(bArr);
                Parcel parcelA = a(1, parcelD);
                com.google.android.gms.c.a aVarA = a.AbstractBinderC0080a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
            return iInterfaceQueryLocalInterface instanceof b ? (b) iInterfaceQueryLocalInterface : new C0101a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.c.a aVarA;
            if (i == 1) {
                aVarA = a(a.AbstractBinderC0080a.a(parcel.readStrongBinder()), parcel.readString(), parcel.createByteArray());
            } else {
                if (i != 2) {
                    return false;
                }
                aVarA = a(a.AbstractBinderC0080a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), a.AbstractBinderC0080a.a(parcel.readStrongBinder()));
            }
            parcel2.writeNoException();
            com.google.android.gms.internal.d.c.a(parcel2, aVarA);
            return true;
        }
    }

    com.google.android.gms.c.a a(com.google.android.gms.c.a aVar, String str, int i, com.google.android.gms.c.a aVar2) throws RemoteException;

    com.google.android.gms.c.a a(com.google.android.gms.c.a aVar, String str, byte[] bArr) throws RemoteException;
}
