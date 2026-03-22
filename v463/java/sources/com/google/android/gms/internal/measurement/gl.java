package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gl implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f4415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f4416e;
    private final /* synthetic */ gb f;

    gl(gb gbVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f = gbVar;
        this.f4412a = atomicReference;
        this.f4413b = str;
        this.f4414c = str2;
        this.f4415d = str3;
        this.f4416e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.q.s().a(this.f4412a, this.f4413b, this.f4414c, this.f4415d, this.f4416e);
    }
}
