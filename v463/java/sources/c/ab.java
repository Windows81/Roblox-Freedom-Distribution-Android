package c;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ab {
    public abstract v a();

    public abstract void a(d.d dVar) throws IOException;

    public long b() throws IOException {
        return -1L;
    }

    public static ab a(v vVar, String str) {
        Charset charsetB = c.a.c.f2493c;
        if (vVar != null && (charsetB = vVar.b()) == null) {
            charsetB = c.a.c.f2493c;
            vVar = v.a(vVar + "; charset=utf-8");
        }
        return a(vVar, str.getBytes(charsetB));
    }

    public static ab a(final v vVar, final d.f fVar) {
        return new ab() { // from class: c.ab.1
            @Override // c.ab
            public v a() {
                return vVar;
            }

            @Override // c.ab
            public long b() throws IOException {
                return fVar.e();
            }

            @Override // c.ab
            public void a(d.d dVar) throws IOException {
                dVar.b(fVar);
            }
        };
    }

    public static ab a(v vVar, byte[] bArr) {
        return a(vVar, bArr, 0, bArr.length);
    }

    public static ab a(final v vVar, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        c.a.c.a(bArr.length, i, i2);
        return new ab() { // from class: c.ab.2
            @Override // c.ab
            public v a() {
                return vVar;
            }

            @Override // c.ab
            public long b() {
                return i2;
            }

            @Override // c.ab
            public void a(d.d dVar) throws IOException {
                dVar.c(bArr, i, i2);
            }
        };
    }
}
