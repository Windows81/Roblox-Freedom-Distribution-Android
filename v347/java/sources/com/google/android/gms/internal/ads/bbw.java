package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class bbw extends aiy implements bbu {
    bbw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.bbu
    public final bbx a(String str) throws RemoteException {
        bbx bbzVar;
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        Parcel parcelA = a(1, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            bbzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            bbzVar = iInterfaceQueryLocalInterface instanceof bbx ? (bbx) iInterfaceQueryLocalInterface : new bbz(strongBinder);
        }
        parcelA.recycle();
        return bbzVar;
    }

    @Override // com.google.android.gms.internal.ads.bbu
    public final boolean b(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        Parcel parcelA = a(2, parcelQ_);
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bbu
    public final bds c(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        Parcel parcelA = a(3, parcelQ_);
        bds bdsVarA = bdt.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return bdsVarA;
    }
}
