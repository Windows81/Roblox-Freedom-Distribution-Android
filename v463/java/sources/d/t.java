package d;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t f7804b = new t() { // from class: d.t.1
        @Override // d.t
        public t a(long j) {
            return this;
        }

        @Override // d.t
        public t a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // d.t
        public void g() throws IOException {
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7805a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f7806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7807d;

    public t a(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f7807d = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j);
    }

    public long s_() {
        return this.f7807d;
    }

    public boolean t_() {
        return this.f7805a;
    }

    public long d() {
        if (!this.f7805a) {
            throw new IllegalStateException("No deadline");
        }
        return this.f7806c;
    }

    public t a(long j) {
        this.f7805a = true;
        this.f7806c = j;
        return this;
    }

    public t u_() {
        this.f7807d = 0L;
        return this;
    }

    public t f() {
        this.f7805a = false;
        return this;
    }

    public void g() throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f7805a && this.f7806c - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
