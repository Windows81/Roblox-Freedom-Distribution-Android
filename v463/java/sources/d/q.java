package d;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class q extends f {
    final transient byte[][] f;
    final transient int[] g;

    q(c cVar, int i) {
        super(null);
        u.a(cVar.f7762b, 0L, i);
        o oVar = cVar.f7761a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (oVar.f7799c == oVar.f7798b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += oVar.f7799c - oVar.f7798b;
            i4++;
            oVar = oVar.f;
        }
        this.f = new byte[i4][];
        this.g = new int[i4 * 2];
        o oVar2 = cVar.f7761a;
        int i5 = 0;
        while (i2 < i) {
            this.f[i5] = oVar2.f7797a;
            i2 += oVar2.f7799c - oVar2.f7798b;
            if (i2 > i) {
                i2 = i;
            }
            int[] iArr = this.g;
            iArr[i5] = i2;
            iArr[this.f.length + i5] = oVar2.f7798b;
            oVar2.f7800d = true;
            i5++;
            oVar2 = oVar2.f;
        }
    }

    @Override // d.f
    public String a() {
        return g().a();
    }

    @Override // d.f
    public String b() {
        return g().b();
    }

    @Override // d.f
    public String c() {
        return g().c();
    }

    @Override // d.f
    public f d() {
        return g().d();
    }

    @Override // d.f
    public f a(int i, int i2) {
        return g().a(i, i2);
    }

    @Override // d.f
    public byte a(int i) {
        u.a(this.g[this.f.length - 1], i, 1L);
        int iB = b(i);
        int i2 = iB == 0 ? 0 : this.g[iB - 1];
        int[] iArr = this.g;
        byte[][] bArr = this.f;
        return bArr[iB][(i - i2) + iArr[bArr.length + iB]];
    }

    private int b(int i) {
        int iBinarySearch = Arrays.binarySearch(this.g, 0, this.f.length, i + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    @Override // d.f
    public int e() {
        return this.g[this.f.length - 1];
    }

    @Override // d.f
    public byte[] f() {
        int[] iArr = this.g;
        byte[][] bArr = this.f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.g;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.f[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // d.f
    void a(c cVar) {
        int length = this.f.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.g;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            o oVar = new o(this.f[i], i3, (i3 + i4) - i2);
            if (cVar.f7761a == null) {
                oVar.g = oVar;
                oVar.f = oVar;
                cVar.f7761a = oVar;
            } else {
                cVar.f7761a.g.a(oVar);
            }
            i++;
            i2 = i4;
        }
        cVar.f7762b += (long) i2;
    }

    @Override // d.f
    public boolean a(int i, f fVar, int i2, int i3) {
        if (i < 0 || i > e() - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.g[iB - 1];
            int iMin = Math.min(i3, ((this.g[iB] - i4) + i4) - i);
            int[] iArr = this.g;
            byte[][] bArr = this.f;
            if (!fVar.a(i2, bArr[iB], (i - i4) + iArr[bArr.length + iB], iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // d.f
    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > e() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.g[iB - 1];
            int iMin = Math.min(i3, ((this.g[iB] - i4) + i4) - i);
            int[] iArr = this.g;
            byte[][] bArr2 = this.f;
            if (!u.a(bArr2[iB], (i - i4) + iArr[bArr2.length + iB], bArr, i2, iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    private f g() {
        return new f(f());
    }

    @Override // d.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.e() == e() && a(0, fVar, 0, e())) {
                return true;
            }
        }
        return false;
    }

    @Override // d.f
    public int hashCode() {
        int i = this.f7768d;
        if (i != 0) {
            return i;
        }
        int length = this.f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f[i2];
            int[] iArr = this.g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.f7768d = i4;
        return i4;
    }

    @Override // d.f
    public String toString() {
        return g().toString();
    }
}
