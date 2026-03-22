package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class apz extends aiy implements apx {
    apz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a() throws RemoteException {
        b(1, q_());
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(float f) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeFloat(f);
        b(2, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(com.google.android.gms.b.a aVar, String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(String str, com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        aja.a(parcelQ_, aVar);
        b(6, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final float b() throws RemoteException {
        Parcel parcelA = a(7, q_());
        float f = parcelA.readFloat();
        parcelA.recycle();
        return f;
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final boolean c() throws RemoteException {
        Parcel parcelA = a(8, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }
}
