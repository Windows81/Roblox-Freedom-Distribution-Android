package c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class j implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f2142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Inflater f2143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f2144d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2141a = 0;
    private final CRC32 e = new CRC32();

    public j(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f2143c = new Inflater(true);
        this.f2142b = l.a(sVar);
        this.f2144d = new k(this.f2142b, this.f2143c);
    }

    @Override // c.s
    public long a(c cVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f2141a == 0) {
            b();
            this.f2141a = 1;
        }
        if (this.f2141a == 1) {
            long j2 = cVar.f2129b;
            long jA = this.f2144d.a(cVar, j);
            if (jA != -1) {
                a(cVar, j2, jA);
                return jA;
            }
            this.f2141a = 2;
        }
        if (this.f2141a == 2) {
            c();
            this.f2141a = 3;
            if (!this.f2142b.f()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    private void b() throws IOException {
        this.f2142b.a(10L);
        byte bC = this.f2142b.c().c(3L);
        boolean z = ((bC >> 1) & 1) == 1;
        if (z) {
            a(this.f2142b.c(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f2142b.j());
        this.f2142b.h(8L);
        if (((bC >> 2) & 1) == 1) {
            this.f2142b.a(2L);
            if (z) {
                a(this.f2142b.c(), 0L, 2L);
            }
            short sL = this.f2142b.c().l();
            this.f2142b.a(sL);
            if (z) {
                a(this.f2142b.c(), 0L, sL);
            }
            this.f2142b.h(sL);
        }
        if (((bC >> 3) & 1) == 1) {
            long jA = this.f2142b.a((byte) 0);
            if (jA == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f2142b.c(), 0L, 1 + jA);
            }
            this.f2142b.h(1 + jA);
        }
        if (((bC >> 4) & 1) == 1) {
            long jA2 = this.f2142b.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f2142b.c(), 0L, 1 + jA2);
            }
            this.f2142b.h(1 + jA2);
        }
        if (z) {
            a("FHCRC", this.f2142b.l(), (short) this.e.getValue());
            this.e.reset();
        }
    }

    private void c() throws IOException {
        a("CRC", this.f2142b.m(), (int) this.e.getValue());
        a("ISIZE", this.f2142b.m(), this.f2143c.getTotalOut());
    }

    @Override // c.s
    public t a() {
        return this.f2142b.a();
    }

    @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2144d.close();
    }

    private void a(c cVar, long j, long j2) {
        o oVar = cVar.f2128a;
        while (j >= oVar.f2164c - oVar.f2163b) {
            j -= (long) (oVar.f2164c - oVar.f2163b);
            oVar = oVar.f;
        }
        while (j2 > 0) {
            int i = (int) (((long) oVar.f2163b) + j);
            int iMin = (int) Math.min(oVar.f2164c - i, j2);
            this.e.update(oVar.f2162a, i, iMin);
            j2 -= (long) iMin;
            oVar = oVar.f;
            j = 0;
        }
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }
}
