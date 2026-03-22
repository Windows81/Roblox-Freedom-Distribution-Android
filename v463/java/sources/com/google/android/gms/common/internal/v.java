package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.c.a;
import com.google.android.gms.common.GoogleCertificatesQuery;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface v extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements v {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.v$a$a, reason: collision with other inner class name */
        public static class C0096a extends com.google.android.gms.internal.d.a implements v {
            C0096a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
            }

            @Override // com.google.android.gms.common.internal.v
            public com.google.android.gms.c.a a() throws RemoteException {
                Parcel parcelA = a(1, d());
                com.google.android.gms.c.a aVarA = a.AbstractBinderC0080a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }

            @Override // com.google.android.gms.common.internal.v
            public boolean a(GoogleCertificatesQuery googleCertificatesQuery, com.google.android.gms.c.a aVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, googleCertificatesQuery);
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                Parcel parcelA = a(5, parcelD);
                boolean zA = com.google.android.gms.internal.d.c.a(parcelA);
                parcelA.recycle();
                return zA;
            }

            @Override // com.google.android.gms.common.internal.v
            public boolean a(String str, com.google.android.gms.c.a aVar) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeString(str);
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                Parcel parcelA = a(3, parcelD);
                boolean zA = com.google.android.gms.internal.d.c.a(parcelA);
                parcelA.recycle();
                return zA;
            }

            @Override // com.google.android.gms.common.internal.v
            public com.google.android.gms.c.a b() throws RemoteException {
                Parcel parcelA = a(2, d());
                com.google.android.gms.c.a aVarA = a.AbstractBinderC0080a.a(parcelA.readStrongBinder());
                parcelA.recycle();
                return aVarA;
            }

            @Override // com.google.android.gms.common.internal.v
            public boolean b(String str, com.google.android.gms.c.a aVar) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeString(str);
                com.google.android.gms.internal.d.c.a(parcelD, aVar);
                Parcel parcelA = a(4, parcelD);
                boolean zA = com.google.android.gms.internal.d.c.a(parcelA);
                parcelA.recycle();
                return zA;
            }
        }

        public static v a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
            return iInterfaceQueryLocalInterface instanceof v ? (v) iInterfaceQueryLocalInterface : new C0096a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.c.a aVarA;
            boolean zA;
            if (i == 1) {
                aVarA = a();
            } else {
                if (i != 2) {
                    if (i == 3) {
                        zA = a(parcel.readString(), a.AbstractBinderC0080a.a(parcel.readStrongBinder()));
                    } else if (i == 4) {
                        zA = b(parcel.readString(), a.AbstractBinderC0080a.a(parcel.readStrongBinder()));
                    } else {
                        if (i != 5) {
                            return false;
                        }
                        zA = a((GoogleCertificatesQuery) com.google.android.gms.internal.d.c.a(parcel, GoogleCertificatesQuery.CREATOR), a.AbstractBinderC0080a.a(parcel.readStrongBinder()));
                    }
                    parcel2.writeNoException();
                    com.google.android.gms.internal.d.c.a(parcel2, zA);
                    return true;
                }
                aVarA = b();
            }
            parcel2.writeNoException();
            com.google.android.gms.internal.d.c.a(parcel2, aVarA);
            return true;
        }
    }

    com.google.android.gms.c.a a() throws RemoteException;

    boolean a(GoogleCertificatesQuery googleCertificatesQuery, com.google.android.gms.c.a aVar) throws RemoteException;

    boolean a(String str, com.google.android.gms.c.a aVar) throws RemoteException;

    com.google.android.gms.c.a b() throws RemoteException;

    boolean b(String str, com.google.android.gms.c.a aVar) throws RemoteException;
}
