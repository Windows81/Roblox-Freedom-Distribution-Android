package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class bdt extends aiz implements bds {
    public bdt() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static bds a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return iInterfaceQueryLocalInterface instanceof bds ? (bds) iInterfaceQueryLocalInterface : new bdu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        bdv bdwVar;
        bdq bdrVar = null;
        bdo bdpVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                String string = parcel.readString();
                Bundle bundle = (Bundle) aja.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    bdwVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                    bdwVar = iInterfaceQueryLocalInterface instanceof bdv ? (bdv) iInterfaceQueryLocalInterface : new bdw(strongBinder);
                }
                a(aVarA, string, bundle, bdwVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzzt zzztVarA = a();
                parcel2.writeNoException();
                aja.b(parcel2, zzztVarA);
                return true;
            case 3:
                zzzt zzztVarB = b();
                parcel2.writeNoException();
                aja.b(parcel2, zzztVarB);
                return true;
            case 4:
                byte[] bArrCreateByteArray = parcel.createByteArray();
                String string2 = parcel.readString();
                Bundle bundle2 = (Bundle) aja.a(parcel, Bundle.CREATOR);
                com.google.android.gms.b.a aVarA2 = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    bdpVar = iInterfaceQueryLocalInterface2 instanceof bdo ? (bdo) iInterfaceQueryLocalInterface2 : new bdp(strongBinder2);
                }
                a(bArrCreateByteArray, string2, bundle2, aVarA2, bdpVar, bcb.a(parcel.readStrongBinder()), (zzjn) aja.a(parcel, zzjn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                aqc aqcVarC = c();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarC);
                return true;
            case 6:
                byte[] bArrCreateByteArray2 = parcel.createByteArray();
                String string3 = parcel.readString();
                Bundle bundle3 = (Bundle) aja.a(parcel, Bundle.CREATOR);
                com.google.android.gms.b.a aVarA3 = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                    bdrVar = iInterfaceQueryLocalInterface3 instanceof bdq ? (bdq) iInterfaceQueryLocalInterface3 : new bdr(strongBinder3);
                }
                a(bArrCreateByteArray2, string3, bundle3, aVarA3, bdrVar, bcb.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                d();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
