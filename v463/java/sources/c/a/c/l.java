package c.a.c;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CountDownLatch f2613a = new CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2614b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f2615c = -1;

    l() {
    }

    void a() {
        if (this.f2614b != -1) {
            throw new IllegalStateException();
        }
        this.f2614b = System.nanoTime();
    }

    void b() {
        if (this.f2615c != -1 || this.f2614b == -1) {
            throw new IllegalStateException();
        }
        this.f2615c = System.nanoTime();
        this.f2613a.countDown();
    }

    void c() {
        if (this.f2615c == -1) {
            long j = this.f2614b;
            if (j != -1) {
                this.f2615c = j - 1;
                this.f2613a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }
}
