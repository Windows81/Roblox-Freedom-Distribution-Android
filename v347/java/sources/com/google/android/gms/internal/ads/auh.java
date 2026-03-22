package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class auh extends aiz implements aug {
    public auh() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static aug a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return iInterfaceQueryLocalInterface instanceof aug ? (aug) iInterfaceQueryLocalInterface : new aui(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a(parcel.readString(), a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                com.google.android.gms.b.a aVarA = a(parcel.readString());
                parcel2.writeNoException();
                aja.a(parcel2, aVarA);
                return true;
            case 3:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                a();
                parcel2.writeNoException();
                return true;
            case 5:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                b(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
