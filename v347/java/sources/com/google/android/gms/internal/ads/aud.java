package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aud extends aiy implements aub {
    aud(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final com.google.android.gms.b.a a() throws RemoteException {
        Parcel parcelA = a(1, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final Uri b() throws RemoteException {
        Parcel parcelA = a(2, q_());
        Uri uri = (Uri) aja.a(parcelA, Uri.CREATOR);
        parcelA.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final double c() throws RemoteException {
        Parcel parcelA = a(3, q_());
        double d2 = parcelA.readDouble();
        parcelA.recycle();
        return d2;
    }
}
