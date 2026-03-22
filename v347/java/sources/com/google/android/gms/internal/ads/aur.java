package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class aur extends aiz implements auq {
    public aur() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                com.google.android.gms.b.a aVarJ = j();
                parcel2.writeNoException();
                aja.a(parcel2, aVarJ);
                return true;
            case 3:
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 4:
                List listB = b();
                parcel2.writeNoException();
                parcel2.writeList(listB);
                return true;
            case 5:
                String strC = c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 6:
                aub aubVarD = d();
                parcel2.writeNoException();
                aja.a(parcel2, aubVarD);
                return true;
            case 7:
                String strE = e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 8:
                double dF = f();
                parcel2.writeNoException();
                parcel2.writeDouble(dF);
                return true;
            case 9:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 10:
                String strH = h();
                parcel2.writeNoException();
                parcel2.writeString(strH);
                return true;
            case 11:
                Bundle bundleN = n();
                parcel2.writeNoException();
                aja.b(parcel2, bundleN);
                return true;
            case 12:
                s();
                parcel2.writeNoException();
                return true;
            case 13:
                aqc aqcVarI = i();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarI);
                return true;
            case 14:
                a((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zB = b((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                aja.a(parcel2, zB);
                return true;
            case 16:
                c((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                atx atxVarR = r();
                parcel2.writeNoException();
                aja.a(parcel2, atxVarR);
                return true;
            case 18:
                com.google.android.gms.b.a aVarP = p();
                parcel2.writeNoException();
                aja.a(parcel2, aVarP);
                return true;
            case 19:
                String strQ = q();
                parcel2.writeNoException();
                parcel2.writeString(strQ);
                return true;
            default:
                return false;
        }
    }
}
