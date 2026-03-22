package d;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class m implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f7790a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f7791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f7792c;

    m(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f7791b = rVar;
    }

    @Override // d.d, d.e
    public c c() {
        return this.f7790a;
    }

    @Override // d.r
    public void a_(c cVar, long j) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.a_(cVar, j);
        w();
    }

    @Override // d.d
    public d b(f fVar) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.b(fVar);
        return w();
    }

    @Override // d.d
    public d b(String str) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.b(str);
        return w();
    }

    @Override // d.d
    public d c(byte[] bArr) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.c(bArr);
        return w();
    }

    @Override // d.d
    public d c(byte[] bArr, int i, int i2) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.c(bArr, i, i2);
        return w();
    }

    @Override // d.d
    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jA = sVar.a(this.f7790a, 8192L);
            if (jA == -1) {
                return j;
            }
            j += jA;
            w();
        }
    }

    @Override // d.d
    public d i(int i) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.i(i);
        return w();
    }

    @Override // d.d
    public d h(int i) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.h(i);
        return w();
    }

    @Override // d.d
    public d g(int i) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.g(i);
        return w();
    }

    @Override // d.d
    public d l(long j) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.l(j);
        return w();
    }

    @Override // d.d
    public d k(long j) throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        this.f7790a.k(j);
        return w();
    }

    @Override // d.d
    public d w() throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        long jH = this.f7790a.h();
        if (jH > 0) {
            this.f7791b.a_(this.f7790a, jH);
        }
        return this;
    }

    @Override // d.d, d.r, java.io.Flushable
    public void flush() throws IOException {
        if (this.f7792c) {
            throw new IllegalStateException("closed");
        }
        if (this.f7790a.f7762b > 0) {
            r rVar = this.f7791b;
            c cVar = this.f7790a;
            rVar.a_(cVar, cVar.f7762b);
        }
        this.f7791b.flush();
    }

    @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f7792c) {
            return;
        }
        Throwable th = null;
        try {
            if (this.f7790a.f7762b > 0) {
                this.f7791b.a_(this.f7790a, this.f7790a.f7762b);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f7791b.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f7792c = true;
        if (th != null) {
            u.a(th);
        }
    }

    @Override // d.r
    public t a() {
        return this.f7791b.a();
    }

    public String toString() {
        return "buffer(" + this.f7791b + ")";
    }
}
