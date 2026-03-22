package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ge implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f4396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ gb f4397c;

    ge(gb gbVar, AtomicReference atomicReference, boolean z) {
        this.f4397c = gbVar;
        this.f4395a = atomicReference;
        this.f4396b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4397c.h().a(this.f4395a, this.f4396b);
    }
}
