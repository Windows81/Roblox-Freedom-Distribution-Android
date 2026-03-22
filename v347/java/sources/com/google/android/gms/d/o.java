package com.google.android.gms.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ f f3590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ n f3591b;

    o(n nVar, f fVar) {
        this.f3591b = nVar;
        this.f3590a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3591b.f3588b) {
            if (this.f3591b.f3589c != null) {
                this.f3591b.f3589c.a(this.f3590a.e());
            }
        }
    }
}
