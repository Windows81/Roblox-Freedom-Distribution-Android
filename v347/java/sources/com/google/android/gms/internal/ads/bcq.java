package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bcq extends aqd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4784a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile aqf f4785b;

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a(aqf aqfVar) throws RemoteException {
        synchronized (this.f4784a) {
            this.f4785b = aqfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void b() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean c() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final int d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float f() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float g() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final aqf h() throws RemoteException {
        aqf aqfVar;
        synchronized (this.f4784a) {
            aqfVar = this.f4785b;
        }
        return aqfVar;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean i() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean j() throws RemoteException {
        throw new RemoteException();
    }
}
