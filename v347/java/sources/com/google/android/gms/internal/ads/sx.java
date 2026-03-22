package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class sx extends aiy implements sv {
    sx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final com.google.android.gms.b.a a(String str, com.google.android.gms.b.a aVar, String str2, String str3, String str4) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str2);
        parcelQ_.writeString(str3);
        parcelQ_.writeString(str4);
        Parcel parcelA = a(3, parcelQ_);
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final String a() throws RemoteException {
        Parcel parcelA = a(6, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, aVar2);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final boolean a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        Parcel parcelA = a(2, parcelQ_);
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void b(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void c(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(7, parcelQ_);
    }
}
