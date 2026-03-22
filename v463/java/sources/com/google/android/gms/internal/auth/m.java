package com.google.android.gms.internal.auth;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface m extends IInterface {
    void a(Status status) throws RemoteException;

    void a(Status status, Credential credential) throws RemoteException;

    void a(Status status, String str) throws RemoteException;
}
