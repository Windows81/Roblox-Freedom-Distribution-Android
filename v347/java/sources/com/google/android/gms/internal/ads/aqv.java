package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class aqv implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aqu f4377a;

    aqv(aqu aquVar) {
        this.f4377a = aquVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4377a.f4376a != null) {
            try {
                this.f4377a.f4376a.a(1);
            } catch (RemoteException e) {
                mj.c("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
