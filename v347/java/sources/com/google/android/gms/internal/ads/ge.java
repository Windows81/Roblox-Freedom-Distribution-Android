package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class ge extends aiy implements gb {
    ge(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(9, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(apk apkVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, apkVar);
        b(14, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(fz fzVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, fzVar);
        b(16, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(gh ghVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, ghVar);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(zzahk zzahkVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzahkVar);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        b(13, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(34, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final Bundle b() throws RemoteException {
        Parcel parcelA = a(15, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void b(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(10, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void c(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(11, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final boolean c() throws RemoteException {
        Parcel parcelA = a(5, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void d() throws RemoteException {
        b(6, q_());
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void e() throws RemoteException {
        b(7, q_());
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void f() throws RemoteException {
        b(8, q_());
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final String g() throws RemoteException {
        Parcel parcelA = a(12, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }
}
