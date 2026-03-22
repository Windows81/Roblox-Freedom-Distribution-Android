package d;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f7776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Inflater f7777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f7778d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7775a = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CRC32 f7779e = new CRC32();

    public j(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f7777c = new Inflater(true);
        e eVarA = l.a(sVar);
        this.f7776b = eVarA;
        this.f7778d = new k(eVarA, this.f7777c);
    }

    @Override // d.s
    public long a(c cVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f7775a == 0) {
            b();
            this.f7775a = 1;
        }
        if (this.f7775a == 1) {
            long j2 = cVar.f7762b;
            long jA = this.f7778d.a(cVar, j);
            if (jA != -1) {
                a(cVar, j2, jA);
                return jA;
            }
            this.f7775a = 2;
        }
        if (this.f7775a == 2) {
            c();
            this.f7775a = 3;
            if (!this.f7776b.f()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    private void b() throws IOException {
        this.f7776b.a(10L);
        byte bC = this.f7776b.c().c(3L);
        boolean z = ((bC >> 1) & 1) == 1;
        if (z) {
            a(this.f7776b.c(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f7776b.j());
        this.f7776b.h(8L);
        if (((bC >> 2) & 1) == 1) {
            this.f7776b.a(2L);
            if (z) {
                a(this.f7776b.c(), 0L, 2L);
            }
            long jL = this.f7776b.c().l();
            this.f7776b.a(jL);
            if (z) {
                a(this.f7776b.c(), 0L, jL);
            }
            this.f7776b.h(jL);
        }
        if (((bC >> 3) & 1) == 1) {
            long jA = this.f7776b.a((byte) 0);
            if (jA == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f7776b.c(), 0L, jA + 1);
            }
            this.f7776b.h(jA + 1);
        }
        if (((bC >> 4) & 1) == 1) {
            long jA2 = this.f7776b.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f7776b.c(), 0L, jA2 + 1);
            }
            this.f7776b.h(jA2 + 1);
        }
        if (z) {
            a("FHCRC", this.f7776b.l(), (short) this.f7779e.getValue());
            this.f7779e.reset();
        }
    }

    private void c() throws IOException {
        a("CRC", this.f7776b.m(), (int) this.f7779e.getValue());
        a("ISIZE", this.f7776b.m(), this.f7777c.getTotalOut());
    }

    @Override // d.s
    public t a() {
        return this.f7776b.a();
    }

    @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7778d.close();
    }

    private void a(c cVar, long j, long j2) {
        o oVar = cVar.f7761a;
        while (j >= oVar.f7799c - oVar.f7798b) {
            j -= (long) (oVar.f7799c - oVar.f7798b);
            oVar = oVar.f;
        }
        while (j2 > 0) {
            int i = (int) (((long) oVar.f7798b) + j);
            int iMin = (int) Math.min(oVar.f7799c - i, j2);
            this.f7779e.update(oVar.f7797a, i, iMin);
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
