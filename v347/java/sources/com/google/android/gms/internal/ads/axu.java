package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class axu implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ axv f4587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ axw f4588b;

    axu(awv awvVar, axv axvVar, axw axwVar) {
        this.f4587a = axvVar;
        this.f4588b = axwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4587a.a(this.f4588b);
        } catch (RemoteException e) {
            jd.c("Could not propagate interstitial ad event.", e);
        }
    }
}
