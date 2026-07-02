package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
final class axx extends aov {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aou f4593a;

    axx(aou aouVar) {
        this.f4593a = aouVar;
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a() throws RemoteException {
        if (ayh.a()) {
            int iIntValue = ((Integer) aoo.f().a(aro.bb)).intValue();
            int iIntValue2 = ((Integer) aoo.f().a(aro.bc)).intValue();
            if (iIntValue <= 0 || iIntValue2 < 0) {
                com.google.android.gms.ads.internal.aw.r().a();
            } else {
                jm.f5184a.postDelayed(axy.f4594a, new Random().nextInt(iIntValue2 + 1) + iIntValue);
            }
        }
        this.f4593a.a();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void a(int i) throws RemoteException {
        this.f4593a.a(i);
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void b() throws RemoteException {
        this.f4593a.b();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void c() throws RemoteException {
        this.f4593a.c();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void d() throws RemoteException {
        this.f4593a.d();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void e() throws RemoteException {
        this.f4593a.e();
    }

    @Override // com.google.android.gms.internal.ads.aou
    public final void f() throws RemoteException {
        this.f4593a.f();
    }
}
