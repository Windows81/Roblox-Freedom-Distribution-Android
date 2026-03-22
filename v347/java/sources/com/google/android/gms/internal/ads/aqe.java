package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aqe extends aiy implements aqc {
    aqe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a() throws RemoteException {
        b(1, q_());
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a(aqf aqfVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aqfVar);
        b(8, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void b() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean c() throws RemoteException {
        Parcel parcelA = a(4, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final int d() throws RemoteException {
        Parcel parcelA = a(5, q_());
        int i = parcelA.readInt();
        parcelA.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float e() throws RemoteException {
        Parcel parcelA = a(9, q_());
        float f = parcelA.readFloat();
        parcelA.recycle();
        return f;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float f() throws RemoteException {
        Parcel parcelA = a(6, q_());
        float f = parcelA.readFloat();
        parcelA.recycle();
        return f;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float g() throws RemoteException {
        Parcel parcelA = a(7, q_());
        float f = parcelA.readFloat();
        parcelA.recycle();
        return f;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final aqf h() throws RemoteException {
        aqf aqhVar;
        Parcel parcelA = a(11, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aqhVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            aqhVar = iInterfaceQueryLocalInterface instanceof aqf ? (aqf) iInterfaceQueryLocalInterface : new aqh(strongBinder);
        }
        parcelA.recycle();
        return aqhVar;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean i() throws RemoteException {
        Parcel parcelA = a(10, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean j() throws RemoteException {
        Parcel parcelA = a(12, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }
}
