package d;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class n implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f7793a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f7794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f7795c;

    n(s sVar) {
        if (sVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f7794b = sVar;
    }

    @Override // d.e
    public c c() {
        return this.f7793a;
    }

    @Override // d.s
    public long a(c cVar, long j) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f7795c) {
            throw new IllegalStateException("closed");
        }
        if (this.f7793a.f7762b == 0 && this.f7794b.a(this.f7793a, 8192L) == -1) {
            return -1L;
        }
        return this.f7793a.a(cVar, Math.min(j, this.f7793a.f7762b));
    }

    @Override // d.e
    public boolean f() throws IOException {
        if (this.f7795c) {
            throw new IllegalStateException("closed");
        }
        return this.f7793a.f() && this.f7794b.a(this.f7793a, 8192L) == -1;
    }

    @Override // d.e
    public void a(long j) throws IOException {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    @Override // d.e
    public boolean b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f7795c) {
            throw new IllegalStateException("closed");
        }
        while (this.f7793a.f7762b < j) {
            if (this.f7794b.a(this.f7793a, 8192L) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // d.e
    public byte i() throws IOException {
        a(1L);
        return this.f7793a.i();
    }

    @Override // d.e
    public f d(long j) throws IOException {
        a(j);
        return this.f7793a.d(j);
    }

    @Override // d.e
    public byte[] s() throws IOException {
        this.f7793a.a(this.f7794b);
        return this.f7793a.s();
    }

    @Override // d.e
    public byte[] g(long j) throws IOException {
        a(j);
        return this.f7793a.g(j);
    }

    @Override // d.e
    public long a(r rVar) throws IOException {
        if (rVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j = 0;
        while (this.f7794b.a(this.f7793a, 8192L) != -1) {
            long jH = this.f7793a.h();
            if (jH > 0) {
                j += jH;
                rVar.a_(this.f7793a, jH);
            }
        }
        if (this.f7793a.b() <= 0) {
            return j;
        }
        long jB = j + this.f7793a.b();
        c cVar = this.f7793a;
        rVar.a_(cVar, cVar.b());
        return jB;
    }

    @Override // d.e
    public String q() throws IOException {
        long jA = a((byte) 10);
        if (jA == -1) {
            c cVar = new c();
            c cVar2 = this.f7793a;
            cVar2.a(cVar, 0L, Math.min(32L, cVar2.b()));
            throw new EOFException("\\n not found: size=" + this.f7793a.b() + " content=" + cVar.o().c() + "…");
        }
        return this.f7793a.f(jA);
    }

    @Override // d.e
    public short j() throws IOException {
        a(2L);
        return this.f7793a.j();
    }

    @Override // d.e
    public short l() throws IOException {
        a(2L);
        return this.f7793a.l();
    }

    @Override // d.e
    public int k() throws IOException {
        a(4L);
        return this.f7793a.k();
    }

    @Override // d.e
    public int m() throws IOException {
        a(4L);
        return this.f7793a.m();
    }

    @Override // d.e
    public long n() throws IOException {
        byte bC;
        a(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!b(i2)) {
                break;
            }
            bC = this.f7793a.c(i);
            if ((bC < 48 || bC > 57) && ((bC < 97 || bC > 102) && (bC < 65 || bC > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bC)));
        }
        return this.f7793a.n();
    }

    @Override // d.e
    public void h(long j) throws IOException {
        if (this.f7795c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f7793a.f7762b == 0 && this.f7794b.a(this.f7793a, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.f7793a.b());
            this.f7793a.h(jMin);
            j -= jMin;
        }
    }

    @Override // d.e
    public long a(byte b2) throws IOException {
        return a(b2, 0L);
    }

    public long a(byte b2, long j) throws IOException {
        if (this.f7795c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jA = this.f7793a.a(b2, j);
            if (jA != -1) {
                return jA;
            }
            long j2 = this.f7793a.f7762b;
            if (this.f7794b.a(this.f7793a, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // d.e
    public InputStream g() {
        return new InputStream() { // from class: d.n.1
            @Override // java.io.InputStream
            public int read() throws IOException {
                if (n.this.f7795c) {
                    throw new IOException("closed");
                }
                if (n.this.f7793a.f7762b == 0 && n.this.f7794b.a(n.this.f7793a, 8192L) == -1) {
                    return -1;
                }
                return n.this.f7793a.i() & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (n.this.f7795c) {
                    throw new IOException("closed");
                }
                u.a(bArr.length, i, i2);
                if (n.this.f7793a.f7762b == 0 && n.this.f7794b.a(n.this.f7793a, 8192L) == -1) {
                    return -1;
                }
                return n.this.f7793a.a(bArr, i, i2);
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                if (n.this.f7795c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(n.this.f7793a.f7762b, 2147483647L);
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

    @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f7795c) {
            return;
        }
        this.f7795c = true;
        this.f7794b.close();
        this.f7793a.t();
    }

    @Override // d.s
    public t a() {
        return this.f7794b.a();
    }

    public String toString() {
        return "buffer(" + this.f7794b + ")";
    }
}
