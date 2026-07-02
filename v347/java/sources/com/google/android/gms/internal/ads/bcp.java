package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class bcp extends aiy implements bcn {
    bcp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String a() throws RemoteException {
        Parcel parcelA = a(2, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(20, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void a(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, aVar2);
        aja.a(parcelQ_, aVar3);
        b(21, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final List b() throws RemoteException {
        Parcel parcelA = a(3, q_());
        ArrayList arrayListB = aja.b(parcelA);
        parcelA.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void b(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(22, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String c() throws RemoteException {
        Parcel parcelA = a(4, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final aub d() throws RemoteException {
        Parcel parcelA = a(5, q_());
        aub aubVarA = auc.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aubVarA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String e() throws RemoteException {
        Parcel parcelA = a(6, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String f() throws RemoteException {
        Parcel parcelA = a(7, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final double g() throws RemoteException {
        Parcel parcelA = a(8, q_());
        double d2 = parcelA.readDouble();
        parcelA.recycle();
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String h() throws RemoteException {
        Parcel parcelA = a(9, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String i() throws RemoteException {
        Parcel parcelA = a(10, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final aqc j() throws RemoteException {
        Parcel parcelA = a(11, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final atx k() throws RemoteException {
        Parcel parcelA = a(12, q_());
        atx atxVarA = aty.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return atxVarA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final com.google.android.gms.b.a l() throws RemoteException {
        Parcel parcelA = a(13, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final com.google.android.gms.b.a m() throws RemoteException {
        Parcel parcelA = a(14, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final com.google.android.gms.b.a n() throws RemoteException {
        Parcel parcelA = a(15, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final Bundle o() throws RemoteException {
        Parcel parcelA = a(16, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final boolean p() throws RemoteException {
        Parcel parcelA = a(17, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final boolean q() throws RemoteException {
        Parcel parcelA = a(18, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void r() throws RemoteException {
        b(19, q_());
    }
}
