package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class gd extends aiz implements gb {
    public gd() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static gb a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return iInterfaceQueryLocalInterface instanceof gb ? (gb) iInterfaceQueryLocalInterface : new ge(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        fz gaVar = null;
        gh gjVar = null;
        switch (i) {
            case 1:
                a((zzahk) aja.a(parcel, zzahk.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                a();
                parcel2.writeNoException();
                return true;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    gjVar = iInterfaceQueryLocalInterface instanceof gh ? (gh) iInterfaceQueryLocalInterface : new gj(strongBinder);
                }
                a(gjVar);
                parcel2.writeNoException();
                return true;
            case 4:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            default:
                return false;
            case 5:
                boolean zC = c();
                parcel2.writeNoException();
                aja.a(parcel2, zC);
                return true;
            case 6:
                d();
                parcel2.writeNoException();
                return true;
            case 7:
                e();
                parcel2.writeNoException();
                return true;
            case 8:
                f();
                parcel2.writeNoException();
                return true;
            case 9:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                b(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                c(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 13:
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                a(apl.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                Bundle bundleB = b();
                parcel2.writeNoException();
                aja.b(parcel2, bundleB);
                return true;
            case 16:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                    gaVar = iInterfaceQueryLocalInterface2 instanceof fz ? (fz) iInterfaceQueryLocalInterface2 : new ga(strongBinder2);
                }
                a(gaVar);
                parcel2.writeNoException();
                return true;
            case 34:
                a(aja.a(parcel));
                parcel2.writeNoException();
                return true;
        }
    }
}
