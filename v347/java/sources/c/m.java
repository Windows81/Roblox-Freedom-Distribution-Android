package c;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class m implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f2155a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f2156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2157c;

    m(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f2156b = rVar;
    }

    @Override // c.d, c.e
    public c c() {
        return this.f2155a;
    }

    @Override // c.r
    public void a_(c cVar, long j) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.a_(cVar, j);
        w();
    }

    @Override // c.d
    public d b(f fVar) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.b(fVar);
        return w();
    }

    @Override // c.d
    public d b(String str) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.b(str);
        return w();
    }

    @Override // c.d
    public d c(byte[] bArr) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.c(bArr);
        return w();
    }

    @Override // c.d
    public d c(byte[] bArr, int i, int i2) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.c(bArr, i, i2);
        return w();
    }

    @Override // c.d
    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jA = sVar.a(this.f2155a, 8192L);
            if (jA != -1) {
                j += jA;
                w();
            } else {
                return j;
            }
        }
    }

    @Override // c.d
    public d i(int i) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.i(i);
        return w();
    }

    @Override // c.d
    public d h(int i) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.h(i);
        return w();
    }

    @Override // c.d
    public d g(int i) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.g(i);
        return w();
    }

    @Override // c.d
    public d l(long j) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.l(j);
        return w();
    }

    @Override // c.d
    public d k(long j) throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        this.f2155a.k(j);
        return w();
    }

    @Override // c.d
    public d w() throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        long jH = this.f2155a.h();
        if (jH > 0) {
            this.f2156b.a_(this.f2155a, jH);
        }
        return this;
    }

    @Override // c.d, c.r, java.io.Flushable
    public void flush() throws IOException {
        if (this.f2157c) {
            throw new IllegalStateException("closed");
        }
        if (this.f2155a.f2129b > 0) {
            this.f2156b.a_(this.f2155a, this.f2155a.f2129b);
        }
        this.f2156b.flush();
    }

    @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (!this.f2157c) {
            Throwable th = null;
            try {
                if (this.f2155a.f2129b > 0) {
                    this.f2156b.a_(this.f2155a, this.f2155a.f2129b);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f2156b.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.f2157c = true;
            if (th != null) {
                u.a(th);
            }
        }
    }

    @Override // c.r
    public t a() {
        return this.f2156b.a();
    }

    public String toString() {
        return "buffer(" + this.f2156b + ")";
    }
}
