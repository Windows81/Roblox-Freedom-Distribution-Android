package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class bdk implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bcy f4817a;

    bdk(bcy bcyVar) {
        this.f4817a = bcyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4817a.f4804a.c();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
