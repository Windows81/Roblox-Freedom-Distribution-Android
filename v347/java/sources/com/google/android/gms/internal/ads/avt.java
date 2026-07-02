package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class avt extends aiz implements avs {
    public avt() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    public static avs a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        return iInterfaceQueryLocalInterface instanceof avs ? (avs) iInterfaceQueryLocalInterface : new avu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        avx avzVar;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            avzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
            avzVar = iInterfaceQueryLocalInterface instanceof avx ? (avx) iInterfaceQueryLocalInterface : new avz(strongBinder);
        }
        a(avzVar);
        parcel2.writeNoException();
        return true;
    }
}
