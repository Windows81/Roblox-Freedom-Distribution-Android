package c;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class q extends f {
    final transient byte[][] f;
    final transient int[] g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    q(c cVar, int i) {
        super(null);
        int i2 = 0;
        u.a(cVar.f2129b, 0L, i);
        o oVar = cVar.f2128a;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            if (oVar.f2164c == oVar.f2163b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += oVar.f2164c - oVar.f2163b;
            i3++;
            oVar = oVar.f;
        }
        this.f = new byte[i3][];
        this.g = new int[i3 * 2];
        o oVar2 = cVar.f2128a;
        int i5 = 0;
        while (i2 < i) {
            this.f[i5] = oVar2.f2162a;
            int i6 = (oVar2.f2164c - oVar2.f2163b) + i2;
            if (i6 > i) {
                i6 = i;
            }
            this.g[i5] = i6;
            this.g[this.f.length + i5] = oVar2.f2163b;
            oVar2.f2165d = true;
            i5++;
            oVar2 = oVar2.f;
            i2 = i6;
        }
    }

    @Override // c.f
    public String a() {
        return g().a();
    }

    @Override // c.f
    public String b() {
        return g().b();
    }

    @Override // c.f
    public String c() {
        return g().c();
    }

    @Override // c.f
    public f d() {
        return g().d();
    }

    @Override // c.f
    public f a(int i, int i2) {
        return g().a(i, i2);
    }

    @Override // c.f
    public byte a(int i) {
        u.a(this.g[this.f.length - 1], i, 1L);
        int iB = b(i);
        return this.f[iB][(i - (iB == 0 ? 0 : this.g[iB - 1])) + this.g[this.f.length + iB]];
    }

    private int b(int i) {
        int iBinarySearch = Arrays.binarySearch(this.g, 0, this.f.length, i + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    @Override // c.f
    public int e() {
        return this.g[this.f.length - 1];
    }

    @Override // c.f
    public byte[] f() {
        int i = 0;
        byte[] bArr = new byte[this.g[this.f.length - 1]];
        int length = this.f.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.g[length + i];
            int i4 = this.g[i];
            System.arraycopy(this.f[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // c.f
    void a(c cVar) {
        int i = 0;
        int length = this.f.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.g[length + i];
            int i4 = this.g[i];
            o oVar = new o(this.f[i], i3, (i3 + i4) - i2);
            if (cVar.f2128a == null) {
                oVar.g = oVar;
                oVar.f = oVar;
                cVar.f2128a = oVar;
            } else {
                cVar.f2128a.g.a(oVar);
            }
            i++;
            i2 = i4;
        }
        cVar.f2129b = ((long) i2) + cVar.f2129b;
    }

    @Override // c.f
    public boolean a(int i, f fVar, int i2, int i3) {
        if (i < 0 || i > e() - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.g[iB - 1];
            int iMin = Math.min(i3, ((this.g[iB] - i4) + i4) - i);
            if (!fVar.a(i2, this.f[iB], (i - i4) + this.g[this.f.length + iB], iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // c.f
    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > e() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iB = b(i);
        while (i3 > 0) {
            int i4 = iB == 0 ? 0 : this.g[iB - 1];
            int iMin = Math.min(i3, ((this.g[iB] - i4) + i4) - i);
            if (!u.a(this.f[iB], (i - i4) + this.g[this.f.length + iB], bArr, i2, iMin)) {
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

    @Override // c.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof f) && ((f) obj).e() == e() && a(0, (f) obj, 0, e());
    }

    @Override // c.f
    public int hashCode() {
        int i = this.f2135d;
        if (i == 0) {
            i = 1;
            int length = this.f.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                byte[] bArr = this.f[i2];
                int i4 = this.g[length + i2];
                int i5 = this.g[i2];
                int i6 = (i5 - i3) + i4;
                int i7 = i;
                for (int i8 = i4; i8 < i6; i8++) {
                    i7 = (i7 * 31) + bArr[i8];
                }
                i2++;
                i3 = i5;
                i = i7;
            }
            this.f2135d = i;
        }
        return i;
    }

    @Override // c.f
    public String toString() {
        return g().toString();
    }
}
