package com.google.android.gms.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ o f3941a;

    p(o oVar) {
        this.f3941a = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3941a.f3939b) {
            if (this.f3941a.f3940c != null) {
                this.f3941a.f3940c.a();
            }
        }
    }
}
