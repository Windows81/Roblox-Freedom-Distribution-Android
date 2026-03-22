package com.google.android.gms.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ g f3945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ q f3946b;

    r(q qVar, g gVar) {
        this.f3946b = qVar;
        this.f3945a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3946b.f3943b) {
            if (this.f3946b.f3944c != null) {
                this.f3946b.f3944c.a(this.f3945a);
            }
        }
    }
}
