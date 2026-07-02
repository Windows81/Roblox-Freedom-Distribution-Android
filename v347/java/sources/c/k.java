package c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class k implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f2145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Inflater f2146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2147c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2148d;

    public k(s sVar, Inflater inflater) {
        this(l.a(sVar), inflater);
    }

    k(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f2145a = eVar;
        this.f2146b = inflater;
    }

    @Override // c.s
    public long a(c cVar, long j) throws IOException {
        boolean zB;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2148d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            zB = b();
            try {
                o oVarE = cVar.e(1);
                int iInflate = this.f2146b.inflate(oVarE.f2162a, oVarE.f2164c, 8192 - oVarE.f2164c);
                if (iInflate > 0) {
                    oVarE.f2164c += iInflate;
                    cVar.f2129b += (long) iInflate;
                    return iInflate;
                }
                if (this.f2146b.finished() || this.f2146b.needsDictionary()) {
                    c();
                    if (oVarE.f2163b == oVarE.f2164c) {
                        cVar.f2128a = oVarE.a();
                        p.a(oVarE);
                    }
                    return -1L;
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        } while (!zB);
        throw new EOFException("source exhausted prematurely");
    }

    public boolean b() throws IOException {
        if (!this.f2146b.needsInput()) {
            return false;
        }
        c();
        if (this.f2146b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f2145a.f()) {
            return true;
        }
        o oVar = this.f2145a.c().f2128a;
        this.f2147c = oVar.f2164c - oVar.f2163b;
        this.f2146b.setInput(oVar.f2162a, oVar.f2163b, this.f2147c);
        return false;
    }

    private void c() throws IOException {
        if (this.f2147c != 0) {
            int remaining = this.f2147c - this.f2146b.getRemaining();
            this.f2147c -= remaining;
            this.f2145a.h(remaining);
        }
    }

    @Override // c.s
    public t a() {
        return this.f2145a.a();
    }

    @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f2148d) {
            this.f2146b.end();
            this.f2148d = true;
            this.f2145a.close();
        }
    }
}
