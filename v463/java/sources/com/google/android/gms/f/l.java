package com.google.android.gms.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ g f3931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ k f3932b;

    l(k kVar, g gVar) {
        this.f3932b = kVar;
        this.f3931a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3931a.c()) {
            this.f3932b.f3930c.f();
            return;
        }
        try {
            this.f3932b.f3930c.a(this.f3932b.f3929b.a(this.f3931a));
        } catch (f e2) {
            if (e2.getCause() instanceof Exception) {
                this.f3932b.f3930c.a((Exception) e2.getCause());
            } else {
                this.f3932b.f3930c.a((Exception) e2);
            }
        } catch (Exception e3) {
            this.f3932b.f3930c.a(e3);
        }
    }
}
