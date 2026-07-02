package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* JADX INFO: loaded from: classes.dex */
public abstract class apb extends aiz implements apa {
    public apb() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        apu apwVar = null;
        aou aowVar = null;
        switch (i) {
            case 1:
                aox aoxVarA = a();
                parcel2.writeNoException();
                aja.a(parcel2, aoxVarA);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    aowVar = iInterfaceQueryLocalInterface instanceof aou ? (aou) iInterfaceQueryLocalInterface : new aow(strongBinder);
                }
                a(aowVar);
                parcel2.writeNoException();
                return true;
            case 3:
                a(avd.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                a(avh.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                a(parcel.readString(), avn.a(parcel.readStrongBinder()), avk.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                a((zzpl) aja.a(parcel, zzpl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    apwVar = iInterfaceQueryLocalInterface2 instanceof apu ? (apu) iInterfaceQueryLocalInterface2 : new apw(strongBinder2);
                }
                a(apwVar);
                parcel2.writeNoException();
                return true;
            case 8:
                a(avq.a(parcel.readStrongBinder()), (zzjn) aja.a(parcel, zzjn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                a((PublisherAdViewOptions) aja.a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                a(avt.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
