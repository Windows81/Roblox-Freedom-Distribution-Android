package com.google.android.gms.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ f f3585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ l f3586b;

    m(l lVar, f fVar) {
        this.f3586b = lVar;
        this.f3585a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3586b.f3583b) {
            if (this.f3586b.f3584c != null) {
                this.f3586b.f3584c.a(this.f3585a);
            }
        }
    }
}
