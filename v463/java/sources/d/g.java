package d;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f7770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deflater f7771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7772c;

    public g(r rVar, Deflater deflater) {
        this(l.a(rVar), deflater);
    }

    g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f7770a = dVar;
        this.f7771b = deflater;
    }

    @Override // d.r
    public void a_(c cVar, long j) throws IOException {
        u.a(cVar.f7762b, 0L, j);
        while (j > 0) {
            o oVar = cVar.f7761a;
            int iMin = (int) Math.min(j, oVar.f7799c - oVar.f7798b);
            this.f7771b.setInput(oVar.f7797a, oVar.f7798b, iMin);
            a(false);
            long j2 = iMin;
            cVar.f7762b -= j2;
            oVar.f7798b += iMin;
            if (oVar.f7798b == oVar.f7799c) {
                cVar.f7761a = oVar.a();
                p.a(oVar);
            }
            j -= j2;
        }
    }

    private void a(boolean z) throws IOException {
        o oVarE;
        int iDeflate;
        c cVarC = this.f7770a.c();
        while (true) {
            oVarE = cVarC.e(1);
            if (z) {
                iDeflate = this.f7771b.deflate(oVarE.f7797a, oVarE.f7799c, 8192 - oVarE.f7799c, 2);
            } else {
                iDeflate = this.f7771b.deflate(oVarE.f7797a, oVarE.f7799c, 8192 - oVarE.f7799c);
            }
            if (iDeflate > 0) {
                oVarE.f7799c += iDeflate;
                cVarC.f7762b += (long) iDeflate;
                this.f7770a.w();
            } else if (this.f7771b.needsInput()) {
                break;
            }
        }
        if (oVarE.f7798b == oVarE.f7799c) {
            cVarC.f7761a = oVarE.a();
            p.a(oVarE);
        }
    }

    @Override // d.r, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.f7770a.flush();
    }

    void b() throws IOException {
        this.f7771b.finish();
        a(false);
    }

    @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f7772c) {
            return;
        }
        Throwable th = null;
        try {
            b();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f7771b.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f7770a.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f7772c = true;
        if (th != null) {
            u.a(th);
        }
    }

    @Override // d.r
    public t a() {
        return this.f7770a.a();
    }

    public String toString() {
        return "DeflaterSink(" + this.f7770a + ")";
    }
}
