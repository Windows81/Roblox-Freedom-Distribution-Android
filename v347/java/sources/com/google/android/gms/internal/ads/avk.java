package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class avk extends aiz implements avj {
    public avk() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    public static avj a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        return iInterfaceQueryLocalInterface instanceof avj ? (avj) iInterfaceQueryLocalInterface : new avl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        auy avaVar;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            avaVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            avaVar = iInterfaceQueryLocalInterface instanceof auy ? (auy) iInterfaceQueryLocalInterface : new ava(strongBinder);
        }
        a(avaVar, parcel.readString());
        parcel2.writeNoException();
        return true;
    }
}
