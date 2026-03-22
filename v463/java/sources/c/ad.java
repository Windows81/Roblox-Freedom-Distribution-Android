package c;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ad implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Reader f2736a;

    public abstract v a();

    public abstract long b();

    public abstract d.e d();

    public final InputStream c() {
        return d().g();
    }

    public final byte[] e() throws IOException {
        long jB = b();
        if (jB > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + jB);
        }
        d.e eVarD = d();
        try {
            byte[] bArrS = eVarD.s();
            c.a.c.a(eVarD);
            if (jB == -1 || jB == bArrS.length) {
                return bArrS;
            }
            throw new IOException("Content-Length and stream length disagree");
        } catch (Throwable th) {
            c.a.c.a(eVarD);
            throw th;
        }
    }

    public final Reader f() {
        Reader reader = this.f2736a;
        if (reader != null) {
            return reader;
        }
        InputStreamReader inputStreamReader = new InputStreamReader(c(), h());
        this.f2736a = inputStreamReader;
        return inputStreamReader;
    }

    public final String g() throws IOException {
        return new String(e(), h().name());
    }

    private Charset h() {
        v vVarA = a();
        return vVarA != null ? vVarA.a(c.a.c.f2493c) : c.a.c.f2493c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c.a.c.a(d());
    }

    public static ad a(final v vVar, final long j, final d.e eVar) {
        if (eVar == null) {
            throw new NullPointerException("source == null");
        }
        return new ad() { // from class: c.ad.1
            @Override // c.ad
            public v a() {
                return vVar;
            }

            @Override // c.ad
            public long b() {
                return j;
            }

            @Override // c.ad
            public d.e d() {
                return eVar;
            }
        };
    }
}
