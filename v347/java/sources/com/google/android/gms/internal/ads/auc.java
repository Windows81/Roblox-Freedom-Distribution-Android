package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class auc extends aiz implements aub {
    public auc() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static aub a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return iInterfaceQueryLocalInterface instanceof aub ? (aub) iInterfaceQueryLocalInterface : new aud(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                com.google.android.gms.b.a aVarA = a();
                parcel2.writeNoException();
                aja.a(parcel2, aVarA);
                return true;
            case 2:
                Uri uriB = b();
                parcel2.writeNoException();
                aja.b(parcel2, uriB);
                return true;
            case 3:
                double dC = c();
                parcel2.writeNoException();
                parcel2.writeDouble(dC);
                return true;
            default:
                return false;
        }
    }
}
