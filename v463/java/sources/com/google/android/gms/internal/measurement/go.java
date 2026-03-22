package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class go implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4422b;

    go(gb gbVar, AtomicReference atomicReference) {
        this.f4422b = gbVar;
        this.f4421a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4421a) {
            try {
                AtomicReference atomicReference = this.f4421a;
                cy cyVarS = this.f4422b.s();
                atomicReference.set(Integer.valueOf(cyVarS.b(cyVarS.f().w(), dn.L)));
            } finally {
                this.f4421a.notify();
            }
        }
    }
}
