package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class bbv extends aiz implements bbu {
    public bbv() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static bbu a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return iInterfaceQueryLocalInterface instanceof bbu ? (bbu) iInterfaceQueryLocalInterface : new bbw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                bbx bbxVarA = a(parcel.readString());
                parcel2.writeNoException();
                aja.a(parcel2, bbxVarA);
                return true;
            case 2:
                boolean zB = b(parcel.readString());
                parcel2.writeNoException();
                aja.a(parcel2, zB);
                return true;
            case 3:
                bds bdsVarC = c(parcel.readString());
                parcel2.writeNoException();
                aja.a(parcel2, bdsVarC);
                return true;
            default:
                return false;
        }
    }
}
