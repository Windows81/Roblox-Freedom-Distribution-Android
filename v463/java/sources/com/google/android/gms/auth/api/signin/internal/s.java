package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.internal.auth.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class s extends com.google.android.gms.internal.auth.v implements r {
    s(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.r
    public final void a(p pVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel parcelA = a();
        x.a(parcelA, pVar);
        x.a(parcelA, googleSignInOptions);
        a(103, parcelA);
    }
}
