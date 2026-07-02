package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class dr extends aiz implements dq {
    public dr() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        dw dxVar = null;
        dt dvVar = null;
        dw dxVar2 = null;
        switch (i) {
            case 1:
                zzaej zzaejVarA = a((zzaef) aja.a(parcel, zzaef.CREATOR));
                parcel2.writeNoException();
                aja.b(parcel2, zzaejVarA);
                return true;
            case 2:
                zzaef zzaefVar = (zzaef) aja.a(parcel, zzaef.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    dvVar = iInterfaceQueryLocalInterface instanceof dt ? (dt) iInterfaceQueryLocalInterface : new dv(strongBinder);
                }
                a(zzaefVar, dvVar);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzaey zzaeyVar = (zzaey) aja.a(parcel, zzaey.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    dxVar2 = iInterfaceQueryLocalInterface2 instanceof dw ? (dw) iInterfaceQueryLocalInterface2 : new dx(strongBinder2);
                }
                a(zzaeyVar, dxVar2);
                parcel2.writeNoException();
                return true;
            case 5:
                zzaey zzaeyVar2 = (zzaey) aja.a(parcel, zzaey.CREATOR);
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    dxVar = iInterfaceQueryLocalInterface3 instanceof dw ? (dw) iInterfaceQueryLocalInterface3 : new dx(strongBinder3);
                }
                b(zzaeyVar2, dxVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
