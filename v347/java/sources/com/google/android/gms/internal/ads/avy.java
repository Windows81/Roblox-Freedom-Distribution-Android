package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class avy extends aiz implements avx {
    public avy() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        avv avwVar;
        switch (i) {
            case 2:
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 3:
                List listB = b();
                parcel2.writeNoException();
                parcel2.writeList(listB);
                return true;
            case 4:
                String strC = c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 5:
                aub aubVarD = d();
                parcel2.writeNoException();
                aja.a(parcel2, aubVarD);
                return true;
            case 6:
                String strE = e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 7:
                String strF = f();
                parcel2.writeNoException();
                parcel2.writeString(strF);
                return true;
            case 8:
                double dG = g();
                parcel2.writeNoException();
                parcel2.writeDouble(dG);
                return true;
            case 9:
                String strH = h();
                parcel2.writeNoException();
                parcel2.writeString(strH);
                return true;
            case 10:
                String strI = i();
                parcel2.writeNoException();
                parcel2.writeString(strI);
                return true;
            case 11:
                aqc aqcVarJ = j();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarJ);
                return true;
            case 12:
                String strQ = q();
                parcel2.writeNoException();
                parcel2.writeString(strQ);
                return true;
            case 13:
                t();
                parcel2.writeNoException();
                return true;
            case 14:
                atx atxVarS = s();
                parcel2.writeNoException();
                aja.a(parcel2, atxVarS);
                return true;
            case 15:
                a((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean zB = b((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                aja.a(parcel2, zB);
                return true;
            case 17:
                c((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                com.google.android.gms.b.a aVarN = n();
                parcel2.writeNoException();
                aja.a(parcel2, aVarN);
                return true;
            case 19:
                com.google.android.gms.b.a aVarP = p();
                parcel2.writeNoException();
                aja.a(parcel2, aVarP);
                return true;
            case 20:
                Bundle bundleR = r();
                parcel2.writeNoException();
                aja.b(parcel2, bundleR);
                return true;
            case 21:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    avwVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    avwVar = iInterfaceQueryLocalInterface instanceof avv ? (avv) iInterfaceQueryLocalInterface : new avw(strongBinder);
                }
                a(avwVar);
                parcel2.writeNoException();
                return true;
            case 22:
                u();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
