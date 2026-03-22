package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gk implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f4410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ gb f4411e;

    gk(gb gbVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f4411e = gbVar;
        this.f4407a = atomicReference;
        this.f4408b = str;
        this.f4409c = str2;
        this.f4410d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4411e.q.s().a(this.f4407a, this.f4408b, this.f4409c, this.f4410d);
    }
}
