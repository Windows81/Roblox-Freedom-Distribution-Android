package c;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes.dex */
public final class g implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f2136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deflater f2137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2138c;

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
        this.f2136a = dVar;
        this.f2137b = deflater;
    }

    @Override // c.r
    public void a_(c cVar, long j) throws IOException {
        u.a(cVar.f2129b, 0L, j);
        while (j > 0) {
            o oVar = cVar.f2128a;
            int iMin = (int) Math.min(j, oVar.f2164c - oVar.f2163b);
            this.f2137b.setInput(oVar.f2162a, oVar.f2163b, iMin);
            a(false);
            cVar.f2129b -= (long) iMin;
            oVar.f2163b += iMin;
            if (oVar.f2163b == oVar.f2164c) {
                cVar.f2128a = oVar.a();
                p.a(oVar);
            }
            j -= (long) iMin;
        }
    }

    @IgnoreJRERequirement
    private void a(boolean z) throws IOException {
        o oVarE;
        int iDeflate;
        c cVarC = this.f2136a.c();
        while (true) {
            oVarE = cVarC.e(1);
            if (z) {
                iDeflate = this.f2137b.deflate(oVarE.f2162a, oVarE.f2164c, 8192 - oVarE.f2164c, 2);
            } else {
                iDeflate = this.f2137b.deflate(oVarE.f2162a, oVarE.f2164c, 8192 - oVarE.f2164c);
            }
            if (iDeflate > 0) {
                oVarE.f2164c += iDeflate;
                cVarC.f2129b += (long) iDeflate;
                this.f2136a.w();
            } else if (this.f2137b.needsInput()) {
                break;
            }
        }
        if (oVarE.f2163b == oVarE.f2164c) {
            cVarC.f2128a = oVarE.a();
            p.a(oVarE);
        }
    }

    @Override // c.r, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.f2136a.flush();
    }

    void b() throws IOException {
        this.f2137b.finish();
        a(false);
    }

    @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (!this.f2138c) {
            Throwable th = null;
            try {
                b();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f2137b.end();
                th = th;
            } catch (Throwable th3) {
                th = th3;
                if (th != null) {
                    th = th;
                }
            }
            try {
                this.f2136a.close();
            } catch (Throwable th4) {
                if (th == null) {
                    th = th4;
                }
            }
            this.f2138c = true;
            if (th != null) {
                u.a(th);
            }
        }
    }

    @Override // c.r
    public t a() {
        return this.f2136a.a();
    }

    public String toString() {
        return "DeflaterSink(" + this.f2136a + ")";
    }
}
