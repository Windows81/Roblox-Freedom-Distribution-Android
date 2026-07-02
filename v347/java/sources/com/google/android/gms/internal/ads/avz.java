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
public final class avz extends aiy implements avx {
    avz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String a() throws RemoteException {
        Parcel parcelA = a(2, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void a(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        b(15, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void a(avv avvVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, avvVar);
        b(21, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.avx, com.google.android.gms.internal.ads.ati
    public final List b() throws RemoteException {
        Parcel parcelA = a(3, q_());
        ArrayList arrayListB = aja.b(parcelA);
        parcelA.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final boolean b(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        Parcel parcelA = a(16, parcelQ_);
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String c() throws RemoteException {
        Parcel parcelA = a(4, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void c(Bundle bundle) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, bundle);
        b(17, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final aub d() throws RemoteException {
        aub audVar;
        Parcel parcelA = a(5, q_());
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

    @Override // com.google.android.gms.internal.ads.avx
    public final String e() throws RemoteException {
        Parcel parcelA = a(6, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String f() throws RemoteException {
        Parcel parcelA = a(7, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final double g() throws RemoteException {
        Parcel parcelA = a(8, q_());
        double d2 = parcelA.readDouble();
        parcelA.recycle();
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String h() throws RemoteException {
        Parcel parcelA = a(9, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String i() throws RemoteException {
        Parcel parcelA = a(10, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final aqc j() throws RemoteException {
        Parcel parcelA = a(11, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final com.google.android.gms.b.a n() throws RemoteException {
        Parcel parcelA = a(18, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final com.google.android.gms.b.a p() throws RemoteException {
        Parcel parcelA = a(19, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String q() throws RemoteException {
        Parcel parcelA = a(12, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final Bundle r() throws RemoteException {
        Parcel parcelA = a(20, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final atx s() throws RemoteException {
        atx atzVar;
        Parcel parcelA = a(14, q_());
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

    @Override // com.google.android.gms.internal.ads.avx
    public final void t() throws RemoteException {
        b(13, q_());
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void u() throws RemoteException {
        b(22, q_());
    }
}
