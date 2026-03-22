package org.greenrobot.eventbus;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f7984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f7985b;

    i() {
    }

    synchronized void a(h hVar) {
        try {
            if (hVar == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            if (this.f7985b != null) {
                this.f7985b.f7983c = hVar;
                this.f7985b = hVar;
            } else if (this.f7984a == null) {
                this.f7985b = hVar;
                this.f7984a = hVar;
            } else {
                throw new IllegalStateException("Head present, but no tail");
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized h a() {
        h hVar;
        hVar = this.f7984a;
        if (this.f7984a != null) {
            h hVar2 = this.f7984a.f7983c;
            this.f7984a = hVar2;
            if (hVar2 == null) {
                this.f7985b = null;
            }
        }
        return hVar;
    }

    synchronized h a(int i) throws InterruptedException {
        if (this.f7984a == null) {
            wait(i);
        }
        return a();
    }
}
