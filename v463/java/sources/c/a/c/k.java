package c.a.c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.k f2608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d.e f2610c;

    public k(d.e eVar) {
        d.k kVar = new d.k(new d.h(eVar) { // from class: c.a.c.k.1
            @Override // d.h, d.s
            public long a(d.c cVar, long j) throws IOException {
                if (k.this.f2609b == 0) {
                    return -1L;
                }
                long jA = super.a(cVar, Math.min(j, k.this.f2609b));
                if (jA == -1) {
                    return -1L;
                }
                k kVar2 = k.this;
                kVar2.f2609b = (int) (((long) kVar2.f2609b) - jA);
                return jA;
            }
        }, new Inflater() { // from class: c.a.c.k.2
            @Override // java.util.zip.Inflater
            public int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
                int iInflate = super.inflate(bArr, i, i2);
                if (iInflate != 0 || !needsDictionary()) {
                    return iInflate;
                }
                setDictionary(o.f2621a);
                return super.inflate(bArr, i, i2);
            }
        });
        this.f2608a = kVar;
        this.f2610c = d.l.a(kVar);
    }

    public List<f> a(int i) throws IOException {
        this.f2609b += i;
        int iK = this.f2610c.k();
        if (iK < 0) {
            throw new IOException("numberOfPairs < 0: " + iK);
        }
        if (iK > 1024) {
            throw new IOException("numberOfPairs > 1024: " + iK);
        }
        ArrayList arrayList = new ArrayList(iK);
        for (int i2 = 0; i2 < iK; i2++) {
            d.f fVarD = b().d();
            d.f fVarB = b();
            if (fVarD.e() == 0) {
                throw new IOException("name.size == 0");
            }
            arrayList.add(new f(fVarD, fVarB));
        }
        c();
        return arrayList;
    }

    private d.f b() throws IOException {
        return this.f2610c.d(this.f2610c.k());
    }

    private void c() throws IOException {
        if (this.f2609b > 0) {
            this.f2608a.b();
            if (this.f2609b == 0) {
                return;
            }
            throw new IOException("compressedLimit > 0: " + this.f2609b);
        }
    }

    public void a() throws IOException {
        this.f2610c.close();
    }
}
