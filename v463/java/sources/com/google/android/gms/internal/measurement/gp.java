package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4424b;

    gp(gb gbVar, AtomicReference atomicReference) {
        this.f4424b = gbVar;
        this.f4423a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4423a) {
            try {
                AtomicReference atomicReference = this.f4423a;
                cy cyVarS = this.f4424b.s();
                atomicReference.set(Double.valueOf(cyVarS.c(cyVarS.f().w(), dn.M)));
            } finally {
                this.f4423a.notify();
            }
        }
    }
}
