package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class bco extends aiz implements bcn {
    public bco() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
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
                atx atxVarK = k();
                parcel2.writeNoException();
                aja.a(parcel2, atxVarK);
                return true;
            case 13:
                com.google.android.gms.b.a aVarL = l();
                parcel2.writeNoException();
                aja.a(parcel2, aVarL);
                return true;
            case 14:
                com.google.android.gms.b.a aVarM = m();
                parcel2.writeNoException();
                aja.a(parcel2, aVarM);
                return true;
            case 15:
                com.google.android.gms.b.a aVarN = n();
                parcel2.writeNoException();
                aja.a(parcel2, aVarN);
                return true;
            case 16:
                Bundle bundleO = o();
                parcel2.writeNoException();
                aja.b(parcel2, bundleO);
                return true;
            case 17:
                boolean zP = p();
                parcel2.writeNoException();
                aja.a(parcel2, zP);
                return true;
            case 18:
                boolean zQ = q();
                parcel2.writeNoException();
                aja.a(parcel2, zQ);
                return true;
            case 19:
                r();
                parcel2.writeNoException();
                return true;
            case 20:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), a.AbstractBinderC0065a.a(parcel.readStrongBinder()), a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                b(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
