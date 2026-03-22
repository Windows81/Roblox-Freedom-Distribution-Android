package com.google.android.gms.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ f f3595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ p f3596b;

    q(p pVar, f fVar) {
        this.f3596b = pVar;
        this.f3595a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3596b.f3593b) {
            if (this.f3596b.f3594c != null) {
                this.f3596b.f3594c.a(this.f3595a.d());
            }
        }
    }
}
