package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class auv extends aiz implements auu {
    public auv() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
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
                String strE = e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 6:
                aub aubVarF = f();
                parcel2.writeNoException();
                aja.a(parcel2, aubVarF);
                return true;
            case 7:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 8:
                String strH = h();
                parcel2.writeNoException();
                parcel2.writeString(strH);
                return true;
            case 9:
                Bundle bundleN = n();
                parcel2.writeNoException();
                aja.b(parcel2, bundleN);
                return true;
            case 10:
                q();
                parcel2.writeNoException();
                return true;
            case 11:
                aqc aqcVarI = i();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarI);
                return true;
            case 12:
                a((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zB = b((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                aja.a(parcel2, zB);
                return true;
            case 14:
                c((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                atx atxVarP = p();
                parcel2.writeNoException();
                aja.a(parcel2, atxVarP);
                return true;
            case 16:
                com.google.android.gms.b.a aVarC = c();
                parcel2.writeNoException();
                aja.a(parcel2, aVarC);
                return true;
            case 17:
                String strD = d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            default:
                return false;
        }
    }
}
