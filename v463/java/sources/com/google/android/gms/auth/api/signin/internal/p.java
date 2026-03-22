package com.google.android.gms.auth.api.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface p extends IInterface {
    void a(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException;

    void a(Status status) throws RemoteException;

    void b(Status status) throws RemoteException;
}
