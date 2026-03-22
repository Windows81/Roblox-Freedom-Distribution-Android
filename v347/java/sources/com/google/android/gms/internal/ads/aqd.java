package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class aqd extends aiz implements aqc {
    public aqd() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static aqc a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return iInterfaceQueryLocalInterface instanceof aqc ? (aqc) iInterfaceQueryLocalInterface : new aqe(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        aqf aqhVar;
        switch (i) {
            case 1:
                a();
                parcel2.writeNoException();
                return true;
            case 2:
                b();
                parcel2.writeNoException();
                return true;
            case 3:
                a(aja.a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zC = c();
                parcel2.writeNoException();
                aja.a(parcel2, zC);
                return true;
            case 5:
                int iD = d();
                parcel2.writeNoException();
                parcel2.writeInt(iD);
                return true;
            case 6:
                float f = f();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                return true;
            case 7:
                float fG = g();
                parcel2.writeNoException();
                parcel2.writeFloat(fG);
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    aqhVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    aqhVar = iInterfaceQueryLocalInterface instanceof aqf ? (aqf) iInterfaceQueryLocalInterface : new aqh(strongBinder);
                }
                a(aqhVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float fE = e();
                parcel2.writeNoException();
                parcel2.writeFloat(fE);
                return true;
            case 10:
                boolean zI = i();
                parcel2.writeNoException();
                aja.a(parcel2, zI);
                return true;
            case 11:
                aqf aqfVarH = h();
                parcel2.writeNoException();
                aja.a(parcel2, aqfVarH);
                return true;
            case 12:
                boolean zJ = j();
                parcel2.writeNoException();
                aja.a(parcel2, zJ);
                return true;
            default:
                return false;
        }
    }
}
