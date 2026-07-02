package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class apg extends aiz implements apf {
    public apg() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static apf a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return iInterfaceQueryLocalInterface instanceof apf ? (apf) iInterfaceQueryLocalInterface : new aph(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        apk apmVar = null;
        aou aowVar = null;
        apo apqVar = null;
        aor aotVar = null;
        apu apwVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.b.a aVarJ = j();
                parcel2.writeNoException();
                aja.a(parcel2, aVarJ);
                return true;
            case 2:
                i();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zL = l();
                parcel2.writeNoException();
                aja.a(parcel2, zL);
                return true;
            case 4:
                boolean zB = b((zzjj) aja.a(parcel, zzjj.CREATOR));
                parcel2.writeNoException();
                aja.a(parcel2, zB);
                return true;
            case 5:
                n();
                parcel2.writeNoException();
                return true;
            case 6:
                o();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    aowVar = iInterfaceQueryLocalInterface instanceof aou ? (aou) iInterfaceQueryLocalInterface : new aow(strongBinder);
                }
                a(aowVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    apqVar = iInterfaceQueryLocalInterface2 instanceof apo ? (apo) iInterfaceQueryLocalInterface2 : new apq(strongBinder2);
                }
                a(apqVar);
                parcel2.writeNoException();
                return true;
            case 9:
                H();
                parcel2.writeNoException();
                return true;
            case 10:
                q();
                parcel2.writeNoException();
                return true;
            case 11:
                m();
                parcel2.writeNoException();
                return true;
            case 12:
                zzjn zzjnVarK = k();
                parcel2.writeNoException();
                aja.b(parcel2, zzjnVarK);
                return true;
            case 13:
                a((zzjn) aja.a(parcel, zzjn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                a(z.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                a(ag.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 19:
                a(asj.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    aotVar = iInterfaceQueryLocalInterface3 instanceof aor ? (aor) iInterfaceQueryLocalInterface3 : new aot(strongBinder3);
                }
                a(aotVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    apwVar = iInterfaceQueryLocalInterface4 instanceof apu ? (apu) iInterfaceQueryLocalInterface4 : new apw(strongBinder4);
                }
                a(apwVar);
                parcel2.writeNoException();
                return true;
            case 22:
                b(aja.a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zR = r();
                parcel2.writeNoException();
                aja.a(parcel2, zR);
                return true;
            case 24:
                a(gi.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                aqc aqcVarS = s();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarS);
                return true;
            case 29:
                a((zzmu) aja.a(parcel, zzmu.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                a((zzlu) aja.a(parcel, zzlu.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String strC = C();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 32:
                apo apoVarD = D();
                parcel2.writeNoException();
                aja.a(parcel2, apoVarD);
                return true;
            case 33:
                aou aouVarE = E();
                parcel2.writeNoException();
                aja.a(parcel2, aouVarE);
                return true;
            case 34:
                c(aja.a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String strP_ = p_();
                parcel2.writeNoException();
                parcel2.writeString(strP_);
                return true;
            case 36:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    apmVar = iInterfaceQueryLocalInterface5 instanceof apk ? (apk) iInterfaceQueryLocalInterface5 : new apm(strongBinder5);
                }
                a(apmVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle bundleP = p();
                parcel2.writeNoException();
                aja.b(parcel2, bundleP);
                return true;
        }
    }
}
