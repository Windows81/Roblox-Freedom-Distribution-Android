package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
final class bdd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AdRequest.ErrorCode f4809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bcy f4810b;

    bdd(bcy bcyVar, AdRequest.ErrorCode errorCode) {
        this.f4810b = bcyVar;
        this.f4809a = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4810b.f4804a.a(bdl.a(this.f4809a));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
