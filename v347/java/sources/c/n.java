package c;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class n implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f2158a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f2159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2160c;

    n(s sVar) {
        if (sVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f2159b = sVar;
    }

    @Override // c.e
    public c c() {
        return this.f2158a;
    }

    @Override // c.s
    public long a(c cVar, long j) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2160c) {
            throw new IllegalStateException("closed");
        }
        if (this.f2158a.f2129b == 0 && this.f2159b.a(this.f2158a, 8192L) == -1) {
            return -1L;
        }
        return this.f2158a.a(cVar, Math.min(j, this.f2158a.f2129b));
    }

    @Override // c.e
    public boolean f() throws IOException {
        if (this.f2160c) {
            throw new IllegalStateException("closed");
        }
        return this.f2158a.f() && this.f2159b.a(this.f2158a, 8192L) == -1;
    }

    @Override // c.e
    public void a(long j) throws IOException {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    @Override // c.e
    public boolean b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2160c) {
            throw new IllegalStateException("closed");
        }
        while (this.f2158a.f2129b < j) {
            if (this.f2159b.a(this.f2158a, 8192L) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // c.e
    public byte i() throws IOException {
        a(1L);
        return this.f2158a.i();
    }

    @Override // c.e
    public f d(long j) throws IOException {
        a(j);
        return this.f2158a.d(j);
    }

    @Override // c.e
    public byte[] s() throws IOException {
        this.f2158a.a(this.f2159b);
        return this.f2158a.s();
    }

    @Override // c.e
    public byte[] g(long j) throws IOException {
        a(j);
        return this.f2158a.g(j);
    }

    @Override // c.e
    public long a(r rVar) throws IOException {
        if (rVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j = 0;
        while (this.f2159b.a(this.f2158a, 8192L) != -1) {
            long jH = this.f2158a.h();
            if (jH > 0) {
                j += jH;
                rVar.a_(this.f2158a, jH);
            }
        }
        if (this.f2158a.b() > 0) {
            long jB = j + this.f2158a.b();
            rVar.a_(this.f2158a, this.f2158a.b());
            return jB;
        }
        return j;
    }

    @Override // c.e
    public String q() throws IOException {
        long jA = a((byte) 10);
        if (jA == -1) {
            c cVar = new c();
            this.f2158a.a(cVar, 0L, Math.min(32L, this.f2158a.b()));
            throw new EOFException("\\n not found: size=" + this.f2158a.b() + " content=" + cVar.o().c() + "…");
        }
        return this.f2158a.f(jA);
    }

    @Override // c.e
    public short j() throws IOException {
        a(2L);
        return this.f2158a.j();
    }

    @Override // c.e
    public short l() throws IOException {
        a(2L);
        return this.f2158a.l();
    }

    @Override // c.e
    public int k() throws IOException {
        a(4L);
        return this.f2158a.k();
    }

    @Override // c.e
    public int m() throws IOException {
        a(4L);
        return this.f2158a.m();
    }

    @Override // c.e
    public long n() throws IOException {
        a(1L);
        for (int i = 0; b(i + 1); i++) {
            byte bC = this.f2158a.c(i);
            if ((bC < 48 || bC > 57) && ((bC < 97 || bC > 102) && (bC < 65 || bC > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bC)));
                }
                return this.f2158a.n();
            }
        }
        return this.f2158a.n();
    }

    @Override // c.e
    public void h(long j) throws IOException {
        if (this.f2160c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f2158a.f2129b == 0 && this.f2159b.a(this.f2158a, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.f2158a.b());
            this.f2158a.h(jMin);
            j -= jMin;
        }
    }

    @Override // c.e
    public long a(byte b2) throws IOException {
        return a(b2, 0L);
    }

    public long a(byte b2, long j) throws IOException {
        if (this.f2160c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jA = this.f2158a.a(b2, j);
            if (jA == -1) {
                long j2 = this.f2158a.f2129b;
                if (this.f2159b.a(this.f2158a, 8192L) == -1) {
                    return -1L;
                }
                j = Math.max(j, j2);
            } else {
                return jA;
            }
        }
    }

    @Override // c.e
    public InputStream g() {
        return new InputStream() { // from class: c.n.1
            @Override // java.io.InputStream
            public int read() throws IOException {
                if (n.this.f2160c) {
                    throw new IOException("closed");
                }
                if (n.this.f2158a.f2129b == 0 && n.this.f2159b.a(n.this.f2158a, 8192L) == -1) {
                    return -1;
                }
                return n.this.f2158a.i() & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (n.this.f2160c) {
                    throw new IOException("closed");
                }
                u.a(bArr.length, i, i2);
                if (n.this.f2158a.f2129b == 0 && n.this.f2159b.a(n.this.f2158a, 8192L) == -1) {
                    return -1;
                }
                return n.this.f2158a.a(bArr, i, i2);
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                if (n.this.f2160c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(n.this.f2158a.f2129b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                n.this.close();
            }

            public String toString() {
                return n.this + ".inputStream()";
            }
        };
    }

    @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f2160c) {
            this.f2160c = true;
            this.f2159b.close();
            this.f2158a.t();
        }
    }

    @Override // c.s
    public t a() {
        return this.f2159b.a();
    }

    public String toString() {
        return "buffer(" + this.f2159b + ")";
    }
}
