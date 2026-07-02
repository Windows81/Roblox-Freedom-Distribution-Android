package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class bbs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bbl f4779a;

    bbs(bbr bbrVar, bbl bblVar) {
        this.f4779a = bblVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4779a.f4765c.c();
        } catch (RemoteException e) {
            jd.c("Could not destroy mediation adapter.", e);
        }
    }
}
