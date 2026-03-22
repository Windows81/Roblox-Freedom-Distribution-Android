package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class bda implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bcy f4806a;

    bda(bcy bcyVar) {
        this.f4806a = bcyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4806a.f4804a.d();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
