package org.greenrobot.eventbus;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f8266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f8267b;

    i() {
    }

    synchronized void a(h hVar) {
        if (hVar == null) {
            throw new NullPointerException("null cannot be enqueued");
        }
        if (this.f8267b != null) {
            this.f8267b.f8265c = hVar;
            this.f8267b = hVar;
        } else if (this.f8266a == null) {
            this.f8267b = hVar;
            this.f8266a = hVar;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    synchronized h a() {
        h hVar;
        hVar = this.f8266a;
        if (this.f8266a != null) {
            this.f8266a = this.f8266a.f8265c;
            if (this.f8266a == null) {
                this.f8267b = null;
            }
        }
        return hVar;
    }

    synchronized h a(int i) throws InterruptedException {
        if (this.f8266a == null) {
            wait(i);
        }
        return a();
    }
}
