package b.a.c;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CountDownLatch f1889a = new CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f1890b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1891c = -1;

    l() {
    }

    void a() {
        if (this.f1890b != -1) {
            throw new IllegalStateException();
        }
        this.f1890b = System.nanoTime();
    }

    void b() {
        if (this.f1891c != -1 || this.f1890b == -1) {
            throw new IllegalStateException();
        }
        this.f1891c = System.nanoTime();
        this.f1889a.countDown();
    }

    void c() {
        if (this.f1891c != -1 || this.f1890b == -1) {
            throw new IllegalStateException();
        }
        this.f1891c = this.f1890b - 1;
        this.f1889a.countDown();
    }
}
