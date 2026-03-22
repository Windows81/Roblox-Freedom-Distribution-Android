package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4389b;

    gc(gb gbVar, AtomicReference atomicReference) {
        this.f4389b = gbVar;
        this.f4388a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4388a) {
            try {
                this.f4388a.set(Boolean.valueOf(this.f4389b.s().z()));
            } finally {
                this.f4388a.notify();
            }
        }
    }
}
