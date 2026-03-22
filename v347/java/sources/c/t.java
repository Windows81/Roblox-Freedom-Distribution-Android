package c;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t f2168b = new t() { // from class: c.t.1
        @Override // c.t
        public t a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // c.t
        public t a(long j) {
            return this;
        }

        @Override // c.t
        public void g() throws IOException {
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2169a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f2170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f2171d;

    public t a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f2171d = timeUnit.toNanos(j);
        return this;
    }

    public long y_() {
        return this.f2171d;
    }

    public boolean z_() {
        return this.f2169a;
    }

    public long d() {
        if (this.f2169a) {
            return this.f2170c;
        }
        throw new IllegalStateException("No deadline");
    }

    public t a(long j) {
        this.f2169a = true;
        this.f2170c = j;
        return this;
    }

    public t A_() {
        this.f2171d = 0L;
        return this;
    }

    public t f() {
        this.f2169a = false;
        return this;
    }

    public void g() throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f2169a && this.f2170c - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
