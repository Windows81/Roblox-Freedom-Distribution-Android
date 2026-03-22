package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class s extends aiz implements r {
    public s() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static r a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return iInterfaceQueryLocalInterface instanceof r ? (r) iInterfaceQueryLocalInterface : new t(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a((Bundle) aja.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                f();
                parcel2.writeNoException();
                return true;
            case 3:
                g();
                parcel2.writeNoException();
                return true;
            case 4:
                h();
                parcel2.writeNoException();
                return true;
            case 5:
                i();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) aja.a(parcel, Bundle.CREATOR);
                b(bundle);
                parcel2.writeNoException();
                aja.b(parcel2, bundle);
                return true;
            case 7:
                j();
                parcel2.writeNoException();
                return true;
            case 8:
                k();
                parcel2.writeNoException();
                return true;
            case 9:
                l();
                parcel2.writeNoException();
                return true;
            case 10:
                d();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zE = e();
                parcel2.writeNoException();
                aja.a(parcel2, zE);
                return true;
            case 12:
                a(parcel.readInt(), parcel.readInt(), (Intent) aja.a(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
