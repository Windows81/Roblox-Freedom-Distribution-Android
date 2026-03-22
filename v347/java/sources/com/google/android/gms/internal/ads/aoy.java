package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class aoy extends aiz implements aox {
    public aoy() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a((zzjj) aja.a(parcel, zzjj.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 3:
                boolean zC = c();
                parcel2.writeNoException();
                aja.a(parcel2, zC);
                return true;
            case 4:
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 5:
                a((zzjj) aja.a(parcel, zzjj.CREATOR), parcel.readInt());
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
