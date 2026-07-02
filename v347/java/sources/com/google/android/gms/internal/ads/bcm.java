package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class bcm extends aiy implements bck {
    bcm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String a() throws RemoteException {
        Parcel parcelA = a(2, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(9, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void a(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, aVar2);
        aja.a(parcelQ_, aVar3);
        b(22, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final List b() throws RemoteException {
        Parcel parcelA = a(3, q_());
        ArrayList arrayListB = aja.b(parcelA);
        parcelA.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void b(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(10, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String c() throws RemoteException {
        Parcel parcelA = a(4, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void c(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(14, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final aub d() throws RemoteException {
        Parcel parcelA = a(5, q_());
        aub aubVarA = auc.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aubVarA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String e() throws RemoteException {
        Parcel parcelA = a(6, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String f() throws RemoteException {
        Parcel parcelA = a(7, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void g() throws RemoteException {
        b(8, q_());
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final boolean h() throws RemoteException {
        Parcel parcelA = a(11, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final boolean i() throws RemoteException {
        Parcel parcelA = a(12, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final Bundle j() throws RemoteException {
        Parcel parcelA = a(13, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final com.google.android.gms.b.a k() throws RemoteException {
        Parcel parcelA = a(15, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final aqc l() throws RemoteException {
        Parcel parcelA = a(16, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final atx m() throws RemoteException {
        Parcel parcelA = a(19, q_());
        atx atxVarA = aty.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return atxVarA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final com.google.android.gms.b.a n() throws RemoteException {
        Parcel parcelA = a(20, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final com.google.android.gms.b.a o() throws RemoteException {
        Parcel parcelA = a(21, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }
}
