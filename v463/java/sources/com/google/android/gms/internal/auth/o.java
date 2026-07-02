package com.google.android.gms.internal.auth;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* JADX INFO: loaded from: classes.dex */
public interface o extends IInterface {
    void a(m mVar, CredentialRequest credentialRequest) throws RemoteException;

    void a(m mVar, zzay zzayVar) throws RemoteException;

    void a(m mVar, zzbe zzbeVar) throws RemoteException;
}
