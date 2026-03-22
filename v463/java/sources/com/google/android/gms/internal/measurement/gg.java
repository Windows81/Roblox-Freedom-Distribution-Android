package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4400b;

    gg(gb gbVar, AtomicReference atomicReference) {
        this.f4400b = gbVar;
        this.f4399a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4400b.h().a(this.f4399a);
    }
}
