package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface dp extends IInterface {
    List<zzjx> a(zzdz zzdzVar, boolean z) throws RemoteException;

    List<zzed> a(String str, String str2, zzdz zzdzVar) throws RemoteException;

    List<zzed> a(String str, String str2, String str3) throws RemoteException;

    List<zzjx> a(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzjx> a(String str, String str2, boolean z, zzdz zzdzVar) throws RemoteException;

    void a(long j, String str, String str2, String str3) throws RemoteException;

    void a(zzdz zzdzVar) throws RemoteException;

    void a(zzed zzedVar) throws RemoteException;

    void a(zzed zzedVar, zzdz zzdzVar) throws RemoteException;

    void a(zzeu zzeuVar, zzdz zzdzVar) throws RemoteException;

    void a(zzeu zzeuVar, String str, String str2) throws RemoteException;

    void a(zzjx zzjxVar, zzdz zzdzVar) throws RemoteException;

    byte[] a(zzeu zzeuVar, String str) throws RemoteException;

    void b(zzdz zzdzVar) throws RemoteException;

    String c(zzdz zzdzVar) throws RemoteException;

    void d(zzdz zzdzVar) throws RemoteException;
}
