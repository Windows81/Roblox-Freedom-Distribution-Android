package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface bds extends IInterface {
    zzzt a() throws RemoteException;

    void a(com.google.android.gms.b.a aVar, String str, Bundle bundle, bdv bdvVar) throws RemoteException;

    void a(byte[] bArr, String str, Bundle bundle, com.google.android.gms.b.a aVar, bdo bdoVar, bca bcaVar, zzjn zzjnVar) throws RemoteException;

    void a(byte[] bArr, String str, Bundle bundle, com.google.android.gms.b.a aVar, bdq bdqVar, bca bcaVar) throws RemoteException;

    zzzt b() throws RemoteException;

    aqc c() throws RemoteException;

    void d() throws RemoteException;
}
