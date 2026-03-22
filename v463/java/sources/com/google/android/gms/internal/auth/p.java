package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class p extends v implements o {
    p(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    @Override // com.google.android.gms.internal.auth.o
    public final void a(m mVar, CredentialRequest credentialRequest) throws RemoteException {
        Parcel parcelA = a();
        x.a(parcelA, mVar);
        x.a(parcelA, credentialRequest);
        a(1, parcelA);
    }

    @Override // com.google.android.gms.internal.auth.o
    public final void a(m mVar, zzay zzayVar) throws RemoteException {
        Parcel parcelA = a();
        x.a(parcelA, mVar);
        x.a(parcelA, zzayVar);
        a(3, parcelA);
    }

    @Override // com.google.android.gms.internal.auth.o
    public final void a(m mVar, zzbe zzbeVar) throws RemoteException {
        Parcel parcelA = a();
        x.a(parcelA, mVar);
        x.a(parcelA, zzbeVar);
        a(2, parcelA);
    }
}
