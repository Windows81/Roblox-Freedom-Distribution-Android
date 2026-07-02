package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class hf extends aiz implements he {
    public hf() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static he a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return iInterfaceQueryLocalInterface instanceof he ? (he) iInterfaceQueryLocalInterface : new hg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 2:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                b(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 4:
                c(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 5:
                d(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 6:
                e(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 7:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), (zzaig) aja.a(parcel, zzaig.CREATOR));
                break;
            case 8:
                f(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 9:
                b(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                g(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 11:
                h(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                break;
            case 12:
                a((Bundle) aja.a(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
