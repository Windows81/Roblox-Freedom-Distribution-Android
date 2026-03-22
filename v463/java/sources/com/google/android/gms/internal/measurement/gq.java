package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4426b;

    gq(gb gbVar, boolean z) {
        this.f4426b = gbVar;
        this.f4425a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4426b.c(this.f4425a);
    }
}
