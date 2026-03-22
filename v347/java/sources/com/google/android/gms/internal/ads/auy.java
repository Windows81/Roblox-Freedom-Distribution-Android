package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface auy extends IInterface {
    String a(String str) throws RemoteException;

    List<String> a() throws RemoteException;

    boolean a(com.google.android.gms.b.a aVar) throws RemoteException;

    com.google.android.gms.b.a b() throws RemoteException;

    aub b(String str) throws RemoteException;

    aqc c() throws RemoteException;

    void c(String str) throws RemoteException;

    void d() throws RemoteException;

    com.google.android.gms.b.a e() throws RemoteException;

    void f() throws RemoteException;

    String l() throws RemoteException;
}
