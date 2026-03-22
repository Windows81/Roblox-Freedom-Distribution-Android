package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ic implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f4534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ hy f4535b;

    ic(hy hyVar, long j) {
        this.f4535b = hyVar;
        this.f4534a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4535b.b(this.f4534a);
    }
}
