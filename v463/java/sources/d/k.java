package d;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f7780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Inflater f7781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7783d;

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
        this.f7780a = eVar;
        this.f7781b = inflater;
    }

    @Override // d.s
    public long a(c cVar, long j) throws IOException {
        boolean zB;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f7783d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            zB = b();
            try {
                o oVarE = cVar.e(1);
                int iInflate = this.f7781b.inflate(oVarE.f7797a, oVarE.f7799c, 8192 - oVarE.f7799c);
                if (iInflate > 0) {
                    oVarE.f7799c += iInflate;
                    long j2 = iInflate;
                    cVar.f7762b += j2;
                    return j2;
                }
                if (!this.f7781b.finished() && !this.f7781b.needsDictionary()) {
                }
                c();
                if (oVarE.f7798b != oVarE.f7799c) {
                    return -1L;
                }
                cVar.f7761a = oVarE.a();
                p.a(oVarE);
                return -1L;
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!zB);
        throw new EOFException("source exhausted prematurely");
    }

    public boolean b() throws IOException {
        if (!this.f7781b.needsInput()) {
            return false;
        }
        c();
        if (this.f7781b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f7780a.f()) {
            return true;
        }
        o oVar = this.f7780a.c().f7761a;
        this.f7782c = oVar.f7799c - oVar.f7798b;
        this.f7781b.setInput(oVar.f7797a, oVar.f7798b, this.f7782c);
        return false;
    }

    private void c() throws IOException {
        int i = this.f7782c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f7781b.getRemaining();
        this.f7782c -= remaining;
        this.f7780a.h(remaining);
    }

    @Override // d.s
    public t a() {
        return this.f7780a.a();
    }

    @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f7783d) {
            return;
        }
        this.f7781b.end();
        this.f7783d = true;
        this.f7780a.close();
    }
}
