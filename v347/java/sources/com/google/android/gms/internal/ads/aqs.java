package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class aqs extends aoy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aqq f4374a;

    private aqs(aqq aqqVar) {
        this.f4374a = aqqVar;
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final String a() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final void a(zzjj zzjjVar) throws RemoteException {
        a(zzjjVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final void a(zzjj zzjjVar, int i) throws RemoteException {
        mj.c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        ly.f5287a.post(new aqt(this));
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final String b() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final boolean c() throws RemoteException {
        return false;
    }
}
