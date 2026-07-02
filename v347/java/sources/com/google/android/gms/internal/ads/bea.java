package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class bea implements sn<so, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bdq f4828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bca f4829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bdy f4830c;

    bea(bdy bdyVar, bdq bdqVar, bca bcaVar) {
        this.f4830c = bdyVar;
        this.f4828a = bdqVar;
        this.f4829b = bcaVar;
    }

    @Override // com.google.android.gms.internal.ads.sn
    public final void a(String str) {
        try {
            this.f4828a.a(str);
        } catch (RemoteException e) {
            mj.b("", e);
        }
    }
}
