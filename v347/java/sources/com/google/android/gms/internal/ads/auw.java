package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class auw extends aiy implements auu {
    auw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String a() throws RemoteException {
        Parcel parcelA = a(3, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final void a(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        b(12, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.auu, com.google.android.gms.internal.ads.ati
    public final List b() throws RemoteException {
        Parcel parcelA = a(4, q_());
        ArrayList arrayListB = aja.b(parcelA);
        parcelA.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final boolean b(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        Parcel parcelA = a(13, parcelQ_);
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final com.google.android.gms.b.a c() throws RemoteException {
        Parcel parcelA = a(16, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final void c(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        b(14, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String d() throws RemoteException {
        Parcel parcelA = a(17, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String e() throws RemoteException {
        Parcel parcelA = a(5, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final aub f() throws RemoteException {
        aub audVar;
        Parcel parcelA = a(6, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            audVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            audVar = iInterfaceQueryLocalInterface instanceof aub ? (aub) iInterfaceQueryLocalInterface : new aud(strongBinder);
        }
        parcelA.recycle();
        return audVar;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String g() throws RemoteException {
        Parcel parcelA = a(7, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String h() throws RemoteException {
        Parcel parcelA = a(8, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final aqc i() throws RemoteException {
        Parcel parcelA = a(11, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final com.google.android.gms.b.a j() throws RemoteException {
        Parcel parcelA = a(2, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final Bundle n() throws RemoteException {
        Parcel parcelA = a(9, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final atx p() throws RemoteException {
        atx atzVar;
        Parcel parcelA = a(15, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            atzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            atzVar = iInterfaceQueryLocalInterface instanceof atx ? (atx) iInterfaceQueryLocalInterface : new atz(strongBinder);
        }
        parcelA.recycle();
        return atzVar;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final void q() throws RemoteException {
        b(10, q_());
    }
}
