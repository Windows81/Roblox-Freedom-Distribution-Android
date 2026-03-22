package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gn implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4420b;

    gn(gb gbVar, AtomicReference atomicReference) {
        this.f4420b = gbVar;
        this.f4419a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4419a) {
            try {
                AtomicReference atomicReference = this.f4419a;
                cy cyVarS = this.f4420b.s();
                atomicReference.set(Long.valueOf(cyVarS.a(cyVarS.f().w(), dn.K)));
            } finally {
                this.f4419a.notify();
            }
        }
    }
}
