package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class auz extends aiz implements auy {
    public auz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static auy a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return iInterfaceQueryLocalInterface instanceof auy ? (auy) iInterfaceQueryLocalInterface : new ava(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String strA = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 2:
                aub aubVarB = b(parcel.readString());
                parcel2.writeNoException();
                aja.a(parcel2, aubVarB);
                return true;
            case 3:
                List<String> listA = a();
                parcel2.writeNoException();
                parcel2.writeStringList(listA);
                return true;
            case 4:
                String strL = l();
                parcel2.writeNoException();
                parcel2.writeString(strL);
                return true;
            case 5:
                c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                d();
                parcel2.writeNoException();
                return true;
            case 7:
                aqc aqcVarC = c();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarC);
                return true;
            case 8:
                f();
                parcel2.writeNoException();
                return true;
            case 9:
                com.google.android.gms.b.a aVarE = e();
                parcel2.writeNoException();
                aja.a(parcel2, aVarE);
                return true;
            case 10:
                boolean zA = a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                aja.a(parcel2, zA);
                return true;
            case 11:
                com.google.android.gms.b.a aVarB = b();
                parcel2.writeNoException();
                aja.a(parcel2, aVarB);
                return true;
            default:
                return false;
        }
    }
}
