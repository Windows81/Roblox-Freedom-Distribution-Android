package com.google.android.gms.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ g f3936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ m f3937b;

    n(m mVar, g gVar) {
        this.f3937b = mVar;
        this.f3936a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            g gVar = (g) this.f3937b.f3934b.a(this.f3936a);
            if (gVar == null) {
                this.f3937b.a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            gVar.a(i.f3925b, (e) this.f3937b);
            gVar.a(i.f3925b, (d) this.f3937b);
            gVar.a(i.f3925b, (b) this.f3937b);
        } catch (f e2) {
            if (e2.getCause() instanceof Exception) {
                this.f3937b.f3935c.a((Exception) e2.getCause());
            } else {
                this.f3937b.f3935c.a((Exception) e2);
            }
        } catch (Exception e3) {
            this.f3937b.f3935c.a(e3);
        }
    }
}
