package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class apy extends aiz implements apx {
    public apy() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a();
                parcel2.writeNoException();
                return true;
            case 2:
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                a(aja.a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                a(parcel.readString(), a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float fB = b();
                parcel2.writeNoException();
                parcel2.writeFloat(fB);
                return true;
            case 8:
                boolean zC = c();
                parcel2.writeNoException();
                aja.a(parcel2, zC);
                return true;
            default:
                return false;
        }
    }
}
