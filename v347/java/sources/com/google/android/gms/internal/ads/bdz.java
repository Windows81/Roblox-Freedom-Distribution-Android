package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class bdz implements sn<Object, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bdo f4822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bca f4823b;

    bdz(bdy bdyVar, bdo bdoVar, bca bcaVar) {
        this.f4822a = bdoVar;
        this.f4823b = bcaVar;
    }

    @Override // com.google.android.gms.internal.ads.sn
    public final void a(String str) {
        try {
            this.f4822a.a(str);
        } catch (RemoteException e) {
            mj.b("", e);
        }
    }
}
