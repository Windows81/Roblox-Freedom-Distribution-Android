package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aje extends aiy implements ajc {
    aje(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void a() throws RemoteException {
        b(3, q_());
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void a(int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeInt(i);
        b(6, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void a(com.google.android.gms.b.a aVar, String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str);
        b(2, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void a(com.google.android.gms.b.a aVar, String str, String str2) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str);
        parcelQ_.writeString(null);
        b(8, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void a(byte[] bArr) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeByteArray(bArr);
        b(5, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void a(int[] iArr) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeIntArray(null);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.ajc
    public final void b(int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeInt(i);
        b(7, parcelQ_);
    }
}
