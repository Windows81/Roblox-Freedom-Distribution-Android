package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class avh extends aiz implements avf {
    public avh() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    public static avf a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
        return iInterfaceQueryLocalInterface instanceof avf ? (avf) iInterfaceQueryLocalInterface : new avi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        auu auwVar;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            auwVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
            auwVar = iInterfaceQueryLocalInterface instanceof auu ? (auu) iInterfaceQueryLocalInterface : new auw(strongBinder);
        }
        a(auwVar);
        parcel2.writeNoException();
        return true;
    }
}
