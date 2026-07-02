package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
final class bdj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AdRequest.ErrorCode f4815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bcy f4816b;

    bdj(bcy bcyVar, AdRequest.ErrorCode errorCode) {
        this.f4816b = bcyVar;
        this.f4815a = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4816b.f4804a.a(bdl.a(this.f4815a));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
