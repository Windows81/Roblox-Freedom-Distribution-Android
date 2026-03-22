package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class al implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bs f4031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ak f4032b;

    al(ak akVar, bs bsVar) {
        this.f4032b = akVar;
        this.f4031a = bsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4032b.f4028a.b()) {
            return;
        }
        this.f4032b.f4028a.c("Connected to service after a timeout");
        this.f4032b.f4028a.a(this.f4031a);
    }
}
