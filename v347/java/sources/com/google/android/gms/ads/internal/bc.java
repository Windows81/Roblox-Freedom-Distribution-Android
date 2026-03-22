package com.google.android.gms.ads.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final /* synthetic */ class bc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final am f3045a;

    private bc(am amVar) {
        this.f3045a = amVar;
    }

    static Runnable a(am amVar) {
        return new bc(amVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3045a.c();
    }
}
