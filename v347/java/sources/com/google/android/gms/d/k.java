package com.google.android.gms.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ j f3581a;

    k(j jVar) {
        this.f3581a = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3581a.f3579b) {
            if (this.f3581a.f3580c != null) {
                this.f3581a.f3580c.a();
            }
        }
    }
}
