package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class aww extends aov {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ awv f4574a;

    aww(awv awvVar) {
        this.f4574a = awvVar;
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a() throws RemoteException {
        this.f4574a.f4573a.add(new awx(this));
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a(int i) throws RemoteException {
        this.f4574a.f4573a.add(new awy(this, i));
        jd.a("Pooled interstitial failed to load.");
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void b() throws RemoteException {
        this.f4574a.f4573a.add(new awz(this));
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void c() throws RemoteException {
        this.f4574a.f4573a.add(new axa(this));
        jd.a("Pooled interstitial loaded.");
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void d() throws RemoteException {
        this.f4574a.f4573a.add(new axb(this));
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void e() throws RemoteException {
        this.f4574a.f4573a.add(new axe(this));
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void f() throws RemoteException {
        this.f4574a.f4573a.add(new axd(this));
    }
}
