package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface b extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements b {

        /* JADX INFO: renamed from: com.google.android.gms.dynamite.b$a$a, reason: collision with other inner class name */
        public static class C0083a extends com.google.android.gms.internal.c.a implements b {
            C0083a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
            }

            @Override // com.google.android.gms.dynamite.b
            public com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, String str, int i, com.google.android.gms.b.a aVar2) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, aVar);
                parcelB.writeString(str);
                parcelB.writeInt(i);
                com.google.android.gms.internal.c.c.a(parcelB, aVar2);
                Parcel parcelA = a(2, parcelB);
                com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }

            @Override // com.google.android.gms.dynamite.b
            public com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, String str, byte[] bArr) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, aVar);
                parcelB.writeString(str);
                parcelB.writeByteArray(bArr);
                Parcel parcelA = a(1, parcelB);
                com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
            return iInterfaceQueryLocalInterface instanceof b ? (b) iInterfaceQueryLocalInterface : new C0083a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    com.google.android.gms.b.a aVarA = a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    com.google.android.gms.internal.c.c.a(parcel2, aVarA);
                    return true;
                case 2:
                    com.google.android.gms.b.a aVarA2 = a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    com.google.android.gms.internal.c.c.a(parcel2, aVarA2);
                    return true;
                default:
                    return false;
            }
        }
    }

    com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, String str, int i, com.google.android.gms.b.a aVar2) throws RemoteException;

    com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, String str, byte[] bArr) throws RemoteException;
}
