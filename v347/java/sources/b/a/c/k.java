package b.a.c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.k f1884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.e f1886c;

    public k(c.e eVar) {
        this.f1884a = new c.k(new c.h(eVar) { // from class: b.a.c.k.1
            @Override // c.h, c.s
            public long a(c.c cVar, long j) throws IOException {
                if (k.this.f1885b == 0) {
                    return -1L;
                }
                long jA = super.a(cVar, Math.min(j, k.this.f1885b));
                if (jA == -1) {
                    return -1L;
                }
                k.this.f1885b = (int) (((long) k.this.f1885b) - jA);
                return jA;
            }
        }, new Inflater() { // from class: b.a.c.k.2
            @Override // java.util.zip.Inflater
            public int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
                int iInflate = super.inflate(bArr, i, i2);
                if (iInflate == 0 && needsDictionary()) {
                    setDictionary(o.f1897a);
                    return super.inflate(bArr, i, i2);
                }
                return iInflate;
            }
        });
        this.f1886c = c.l.a(this.f1884a);
    }

    public List<f> a(int i) throws IOException {
        this.f1885b += i;
        int iK = this.f1886c.k();
        if (iK < 0) {
            throw new IOException("numberOfPairs < 0: " + iK);
        }
        if (iK > 1024) {
            throw new IOException("numberOfPairs > 1024: " + iK);
        }
        ArrayList arrayList = new ArrayList(iK);
        for (int i2 = 0; i2 < iK; i2++) {
            c.f fVarD = b().d();
            c.f fVarB = b();
            if (fVarD.e() == 0) {
                throw new IOException("name.size == 0");
            }
            arrayList.add(new f(fVarD, fVarB));
        }
        c();
        return arrayList;
    }

    private c.f b() throws IOException {
        return this.f1886c.d(this.f1886c.k());
    }

    private void c() throws IOException {
        if (this.f1885b > 0) {
            this.f1884a.b();
            if (this.f1885b != 0) {
                throw new IOException("compressedLimit > 0: " + this.f1885b);
            }
        }
    }

    public void a() throws IOException {
        this.f1886c.close();
    }
}
