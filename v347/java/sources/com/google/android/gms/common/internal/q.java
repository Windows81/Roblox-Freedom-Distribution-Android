package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface q extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements q {
        public a() {
            super("com.google.android.gms.common.internal.ICertData");
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    com.google.android.gms.b.a aVarB = b();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.c.c.a(parcel2, aVarB);
                    return true;
                case 2:
                    int iC = c();
                    parcel2.writeNoException();
                    parcel2.writeInt(iC);
                    return true;
                default:
                    return false;
            }
        }
    }

    com.google.android.gms.b.a b() throws RemoteException;

    int c() throws RemoteException;
}
