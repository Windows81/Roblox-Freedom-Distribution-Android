package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ava extends aiy implements auy {
    ava(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final String a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        Parcel parcelA = a(1, parcelQ_);
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final List<String> a() throws RemoteException {
        Parcel parcelA = a(3, q_());
        ArrayList<String> arrayListCreateStringArrayList = parcelA.createStringArrayList();
        parcelA.recycle();
        return arrayListCreateStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final boolean a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        Parcel parcelA = a(10, parcelQ_);
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final com.google.android.gms.b.a b() throws RemoteException {
        Parcel parcelA = a(11, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final aub b(String str) throws RemoteException {
        aub audVar;
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        Parcel parcelA = a(2, parcelQ_);
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

    @Override // com.google.android.gms.internal.ads.auy
    public final aqc c() throws RemoteException {
        Parcel parcelA = a(7, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final void c(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final void d() throws RemoteException {
        b(6, q_());
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final com.google.android.gms.b.a e() throws RemoteException {
        Parcel parcelA = a(9, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final void f() throws RemoteException {
        b(8, q_());
    }

    @Override // com.google.android.gms.internal.ads.auy, com.google.android.gms.internal.ads.ath
    public final String l() throws RemoteException {
        Parcel parcelA = a(4, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }
}
