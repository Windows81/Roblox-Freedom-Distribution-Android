package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class axl extends gi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ awv f4584a;

    axl(awv awvVar) {
        this.f4584a = awvVar;
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a() throws RemoteException {
        this.f4584a.f4573a.add(new axm(this));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a(int i) throws RemoteException {
        this.f4584a.f4573a.add(new axs(this, i));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void a(fw fwVar) throws RemoteException {
        this.f4584a.f4573a.add(new axq(this, fwVar));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void b() throws RemoteException {
        this.f4584a.f4573a.add(new axn(this));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void c() throws RemoteException {
        this.f4584a.f4573a.add(new axo(this));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void d() throws RemoteException {
        this.f4584a.f4573a.add(new axp(this));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void e() throws RemoteException {
        this.f4584a.f4573a.add(new axr(this));
    }

    @Override // com.google.android.gms.internal.ads.gh
    public final void f() throws RemoteException {
        this.f4584a.f4573a.add(new axt(this));
    }
}
