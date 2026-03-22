package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class bdc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bcy f4808a;

    bdc(bcy bcyVar) {
        this.f4808a = bcyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4808a.f4804a.b();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
