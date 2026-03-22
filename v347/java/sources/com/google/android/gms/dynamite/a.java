package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.google.android.gms.dynamite.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0081a extends com.google.android.gms.internal.c.b implements a {

        /* JADX INFO: renamed from: com.google.android.gms.dynamite.a$a$a, reason: collision with other inner class name */
        public static class C0082a extends com.google.android.gms.internal.c.a implements a {
            C0082a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
            }

            @Override // com.google.android.gms.dynamite.a
            public int a(com.google.android.gms.b.a aVar, String str) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, aVar);
                parcelB.writeString(str);
                Parcel parcelA = a(1, parcelB);
                int i = parcelA.readInt();
                parcelA.recycle();
                return i;
            }

            @Override // com.google.android.gms.dynamite.a
            public int a(com.google.android.gms.b.a aVar, String str, boolean z) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, aVar);
                parcelB.writeString(str);
                com.google.android.gms.internal.c.c.a(parcelB, z);
                Parcel parcelA = a(3, parcelB);
                int i = parcelA.readInt();
                parcelA.recycle();
                return i;
            }

            @Override // com.google.android.gms.dynamite.a
            public com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, String str, int i) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, aVar);
                parcelB.writeString(str);
                parcelB.writeInt(i);
                Parcel parcelA = a(2, parcelB);
                com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0082a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    int iA = a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA);
                    return true;
                case 2:
                    com.google.android.gms.b.a aVarA = a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    com.google.android.gms.internal.c.c.a(parcel2, aVarA);
                    return true;
                case 3:
                    int iA2 = a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString(), com.google.android.gms.internal.c.c.a(parcel));
                    parcel2.writeNoException();
                    parcel2.writeInt(iA2);
                    return true;
                default:
                    return false;
            }
        }
    }

    int a(com.google.android.gms.b.a aVar, String str) throws RemoteException;

    int a(com.google.android.gms.b.a aVar, String str, boolean z) throws RemoteException;

    com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, String str, int i) throws RemoteException;
}
