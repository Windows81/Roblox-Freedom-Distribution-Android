package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gm implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4418b;

    gm(gb gbVar, AtomicReference atomicReference) {
        this.f4418b = gbVar;
        this.f4417a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4417a) {
            try {
                this.f4417a.set(this.f4418b.s().A());
            } finally {
                this.f4417a.notify();
            }
        }
    }
}
