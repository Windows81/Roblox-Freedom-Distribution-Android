package b;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class aa {
    public abstract u a();

    public abstract void a(c.d dVar) throws IOException;

    public long b() throws IOException {
        return -1L;
    }

    public static aa a(u uVar, String str) {
        Charset charsetB = b.a.c.f1785c;
        if (uVar != null && (charsetB = uVar.b()) == null) {
            charsetB = b.a.c.f1785c;
            uVar = u.a(uVar + "; charset=utf-8");
        }
        return a(uVar, str.getBytes(charsetB));
    }

    public static aa a(final u uVar, final c.f fVar) {
        return new aa() { // from class: b.aa.1
            @Override // b.aa
            public u a() {
                return uVar;
            }

            @Override // b.aa
            public long b() throws IOException {
                return fVar.e();
            }

            @Override // b.aa
            public void a(c.d dVar) throws IOException {
                dVar.b(fVar);
            }
        };
    }

    public static aa a(u uVar, byte[] bArr) {
        return a(uVar, bArr, 0, bArr.length);
    }

    public static aa a(final u uVar, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        b.a.c.a(bArr.length, i, i2);
        return new aa() { // from class: b.aa.2
            @Override // b.aa
            public u a() {
                return uVar;
            }

            @Override // b.aa
            public long b() {
                return i2;
            }

            @Override // b.aa
            public void a(c.d dVar) throws IOException {
                dVar.c(bArr, i, i2);
            }
        };
    }
}
