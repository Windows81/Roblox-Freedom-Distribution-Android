package b;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class ac implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Reader f1990a;

    public abstract u a();

    public abstract long b();

    public abstract c.e d();

    public final InputStream c() {
        return d().g();
    }

    public final byte[] e() throws IOException {
        long jB = b();
        if (jB > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + jB);
        }
        c.e eVarD = d();
        try {
            byte[] bArrS = eVarD.s();
            b.a.c.a(eVarD);
            if (jB != -1 && jB != bArrS.length) {
                throw new IOException("Content-Length and stream length disagree");
            }
            return bArrS;
        } catch (Throwable th) {
            b.a.c.a(eVarD);
            throw th;
        }
    }

    public final Reader f() {
        Reader reader = this.f1990a;
        if (reader != null) {
            return reader;
        }
        InputStreamReader inputStreamReader = new InputStreamReader(c(), h());
        this.f1990a = inputStreamReader;
        return inputStreamReader;
    }

    public final String g() throws IOException {
        return new String(e(), h().name());
    }

    private Charset h() {
        u uVarA = a();
        return uVarA != null ? uVarA.a(b.a.c.f1785c) : b.a.c.f1785c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b.a.c.a(d());
    }

    public static ac a(final u uVar, final long j, final c.e eVar) {
        if (eVar == null) {
            throw new NullPointerException("source == null");
        }
        return new ac() { // from class: b.ac.1
            @Override // b.ac
            public u a() {
                return uVar;
            }

            @Override // b.ac
            public long b() {
                return j;
            }

            @Override // b.ac
            public c.e d() {
                return eVar;
            }
        };
    }
}
