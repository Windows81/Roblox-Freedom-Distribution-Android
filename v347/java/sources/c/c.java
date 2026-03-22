package c;

import android.support.v7.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c implements d, e, Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f2127c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    o f2128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f2129b;

    public long b() {
        return this.f2129b;
    }

    @Override // c.d, c.e
    public c c() {
        return this;
    }

    public OutputStream d() {
        return new OutputStream() { // from class: c.c.1
            @Override // java.io.OutputStream
            public void write(int i) {
                c.this.i((int) ((byte) i));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                c.this.c(bArr, i, i2);
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public String toString() {
                return c.this + ".outputStream()";
            }
        };
    }

    @Override // c.d
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c w() {
        return this;
    }

    @Override // c.e
    public boolean f() {
        return this.f2129b == 0;
    }

    @Override // c.e
    public void a(long j) throws EOFException {
        if (this.f2129b < j) {
            throw new EOFException();
        }
    }

    @Override // c.e
    public boolean b(long j) {
        return this.f2129b >= j;
    }

    @Override // c.e
    public InputStream g() {
        return new InputStream() { // from class: c.c.2
            @Override // java.io.InputStream
            public int read() {
                if (c.this.f2129b > 0) {
                    return c.this.i() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return c.this.a(bArr, i, i2);
            }

            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(c.this.f2129b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public String toString() {
                return c.this + ".inputStream()";
            }
        };
    }

    public c a(c cVar, long j, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        u.a(this.f2129b, j, j2);
        if (j2 != 0) {
            cVar.f2129b += j2;
            o oVar = this.f2128a;
            while (j >= oVar.f2164c - oVar.f2163b) {
                j -= (long) (oVar.f2164c - oVar.f2163b);
                oVar = oVar.f;
            }
            while (j2 > 0) {
                o oVar2 = new o(oVar);
                oVar2.f2163b = (int) (((long) oVar2.f2163b) + j);
                oVar2.f2164c = Math.min(oVar2.f2163b + ((int) j2), oVar2.f2164c);
                if (cVar.f2128a == null) {
                    oVar2.g = oVar2;
                    oVar2.f = oVar2;
                    cVar.f2128a = oVar2;
                } else {
                    cVar.f2128a.g.a(oVar2);
                }
                j2 -= (long) (oVar2.f2164c - oVar2.f2163b);
                oVar = oVar.f;
                j = 0;
            }
        }
        return this;
    }

    public long h() {
        long j = this.f2129b;
        if (j == 0) {
            return 0L;
        }
        o oVar = this.f2128a.g;
        if (oVar.f2164c < 8192 && oVar.e) {
            return j - ((long) (oVar.f2164c - oVar.f2163b));
        }
        return j;
    }

    @Override // c.e
    public byte i() {
        if (this.f2129b == 0) {
            throw new IllegalStateException("size == 0");
        }
        o oVar = this.f2128a;
        int i = oVar.f2163b;
        int i2 = oVar.f2164c;
        int i3 = i + 1;
        byte b2 = oVar.f2162a[i];
        this.f2129b--;
        if (i3 == i2) {
            this.f2128a = oVar.a();
            p.a(oVar);
        } else {
            oVar.f2163b = i3;
        }
        return b2;
    }

    public byte c(long j) {
        u.a(this.f2129b, j, 1L);
        o oVar = this.f2128a;
        while (true) {
            int i = oVar.f2164c - oVar.f2163b;
            if (j < i) {
                return oVar.f2162a[oVar.f2163b + ((int) j)];
            }
            j -= (long) i;
            oVar = oVar.f;
        }
    }

    @Override // c.e
    public short j() {
        if (this.f2129b < 2) {
            throw new IllegalStateException("size < 2: " + this.f2129b);
        }
        o oVar = this.f2128a;
        int i = oVar.f2163b;
        int i2 = oVar.f2164c;
        if (i2 - i < 2) {
            return (short) (((i() & 255) << 8) | (i() & 255));
        }
        byte[] bArr = oVar.f2162a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.f2129b -= 2;
        if (i4 == i2) {
            this.f2128a = oVar.a();
            p.a(oVar);
        } else {
            oVar.f2163b = i4;
        }
        return (short) i5;
    }

    @Override // c.e
    public int k() {
        if (this.f2129b < 4) {
            throw new IllegalStateException("size < 4: " + this.f2129b);
        }
        o oVar = this.f2128a;
        int i = oVar.f2163b;
        int i2 = oVar.f2164c;
        if (i2 - i < 4) {
            return ((i() & 255) << 24) | ((i() & 255) << 16) | ((i() & 255) << 8) | (i() & 255);
        }
        byte[] bArr = oVar.f2162a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.f2129b -= 4;
        if (i8 == i2) {
            this.f2128a = oVar.a();
            p.a(oVar);
            return i9;
        }
        oVar.f2163b = i8;
        return i9;
    }

    @Override // c.e
    public short l() {
        return u.a(j());
    }

    @Override // c.e
    public int m() {
        return u.a(k());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1 A[EDGE_INSN: B:43:0x00b1->B:37:0x00b1 BREAK  A[LOOP:0: B:7:0x0016->B:45:?], SYNTHETIC] */
    @Override // c.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long n() {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.n():long");
    }

    public f o() {
        return new f(s());
    }

    @Override // c.e
    public f d(long j) throws EOFException {
        return new f(g(j));
    }

    @Override // c.e
    public long a(r rVar) throws IOException {
        long j = this.f2129b;
        if (j > 0) {
            rVar.a_(this, j);
        }
        return j;
    }

    public String p() {
        try {
            return a(this.f2129b, u.f2172a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String e(long j) throws EOFException {
        return a(j, u.f2172a);
    }

    public String a(Charset charset) {
        try {
            return a(this.f2129b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String a(long j, Charset charset) throws EOFException {
        u.a(this.f2129b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        o oVar = this.f2128a;
        if (((long) oVar.f2163b) + j > oVar.f2164c) {
            return new String(g(j), charset);
        }
        String str = new String(oVar.f2162a, oVar.f2163b, (int) j, charset);
        oVar.f2163b = (int) (((long) oVar.f2163b) + j);
        this.f2129b -= j;
        if (oVar.f2163b == oVar.f2164c) {
            this.f2128a = oVar.a();
            p.a(oVar);
            return str;
        }
        return str;
    }

    @Override // c.e
    public String q() throws EOFException {
        long jA = a((byte) 10);
        if (jA == -1) {
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, this.f2129b));
            throw new EOFException("\\n not found: size=" + b() + " content=" + cVar.o().c() + "…");
        }
        return f(jA);
    }

    String f(long j) throws EOFException {
        if (j > 0 && c(j - 1) == 13) {
            String strE = e(j - 1);
            h(2L);
            return strE;
        }
        String strE2 = e(j);
        h(1L);
        return strE2;
    }

    public int r() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.f2129b == 0) {
            throw new EOFException();
        }
        byte bC = c(0L);
        if ((bC & 128) == 0) {
            i3 = 0;
            i = bC & 127;
            i2 = 1;
        } else if ((bC & 224) == 192) {
            i = bC & 31;
            i2 = 2;
            i3 = 128;
        } else if ((bC & 240) == 224) {
            i = bC & 15;
            i2 = 3;
            i3 = RecyclerView.ItemAnimator.FLAG_MOVED;
        } else if ((bC & 248) == 240) {
            i = bC & 7;
            i2 = 4;
            i3 = 65536;
        } else {
            h(1L);
            return 65533;
        }
        if (this.f2129b < i2) {
            throw new EOFException("size < " + i2 + ": " + this.f2129b + " (to read code point prefixed 0x" + Integer.toHexString(bC) + ")");
        }
        int i4 = i;
        int i5 = 1;
        while (i5 < i2) {
            byte bC2 = c(i5);
            if ((bC2 & 192) == 128) {
                i5++;
                i4 = (bC2 & 63) | (i4 << 6);
            } else {
                h(i5);
                return 65533;
            }
        }
        h(i2);
        if (i4 > 1114111) {
            return 65533;
        }
        if ((i4 < 55296 || i4 > 57343) && i4 >= i3) {
            return i4;
        }
        return 65533;
    }

    @Override // c.e
    public byte[] s() {
        try {
            return g(this.f2129b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // c.e
    public byte[] g(long j) throws EOFException {
        u.a(this.f2129b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        a(bArr);
        return bArr;
    }

    public void a(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int iA = a(bArr, i, bArr.length - i);
            if (iA == -1) {
                throw new EOFException();
            }
            i += iA;
        }
    }

    public int a(byte[] bArr, int i, int i2) {
        u.a(bArr.length, i, i2);
        o oVar = this.f2128a;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(i2, oVar.f2164c - oVar.f2163b);
        System.arraycopy(oVar.f2162a, oVar.f2163b, bArr, i, iMin);
        oVar.f2163b += iMin;
        this.f2129b -= (long) iMin;
        if (oVar.f2163b == oVar.f2164c) {
            this.f2128a = oVar.a();
            p.a(oVar);
            return iMin;
        }
        return iMin;
    }

    public void t() {
        try {
            h(this.f2129b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // c.e
    public void h(long j) throws EOFException {
        while (j > 0) {
            if (this.f2128a == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, this.f2128a.f2164c - this.f2128a.f2163b);
            this.f2129b -= (long) iMin;
            j -= (long) iMin;
            o oVar = this.f2128a;
            oVar.f2163b = iMin + oVar.f2163b;
            if (this.f2128a.f2163b == this.f2128a.f2164c) {
                o oVar2 = this.f2128a;
                this.f2128a = oVar2.a();
                p.a(oVar2);
            }
        }
    }

    @Override // c.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c b(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        fVar.a(this);
        return this;
    }

    @Override // c.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c b(String str) {
        return a(str, 0, str.length());
    }

    public c a(String str, int i, int i2) {
        int i3;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                o oVarE = e(1);
                byte[] bArr = oVarE.f2162a;
                int i4 = oVarE.f2164c - i;
                int iMin = Math.min(i2, 8192 - i4);
                i3 = i + 1;
                bArr[i4 + i] = (byte) cCharAt;
                while (i3 < iMin) {
                    char cCharAt2 = str.charAt(i3);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i3 + i4] = (byte) cCharAt2;
                    i3++;
                }
                int i5 = (i3 + i4) - oVarE.f2164c;
                oVarE.f2164c += i5;
                this.f2129b += (long) i5;
            } else if (cCharAt < 2048) {
                i((cCharAt >> 6) | 192);
                i((cCharAt & '?') | 128);
                i3 = i + 1;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                i((cCharAt >> '\f') | 224);
                i(((cCharAt >> 6) & 63) | 128);
                i((cCharAt & '?') | 128);
                i3 = i + 1;
            } else {
                char cCharAt3 = i + 1 < i2 ? str.charAt(i + 1) : (char) 0;
                if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                    i(63);
                    i++;
                } else {
                    int i6 = ((cCharAt3 & 9215) | ((cCharAt & 10239) << 10)) + 65536;
                    i((i6 >> 18) | 240);
                    i(((i6 >> 12) & 63) | 128);
                    i(((i6 >> 6) & 63) | 128);
                    i((i6 & 63) | 128);
                    i3 = i + 2;
                }
            }
            i = i3;
        }
        return this;
    }

    public c a(int i) {
        if (i < 128) {
            i(i);
        } else if (i < 2048) {
            i((i >> 6) | 192);
            i((i & 63) | 128);
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
            }
            i((i >> 12) | 224);
            i(((i >> 6) & 63) | 128);
            i((i & 63) | 128);
        } else if (i <= 1114111) {
            i((i >> 18) | 240);
            i(((i >> 12) & 63) | 128);
            i(((i >> 6) & 63) | 128);
            i((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    @Override // c.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c c(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return c(bArr, 0, bArr.length);
    }

    @Override // c.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        u.a(bArr.length, i, i2);
        int i3 = i + i2;
        while (i < i3) {
            o oVarE = e(1);
            int iMin = Math.min(i3 - i, 8192 - oVarE.f2164c);
            System.arraycopy(bArr, i, oVarE.f2162a, oVarE.f2164c, iMin);
            i += iMin;
            oVarE.f2164c = iMin + oVarE.f2164c;
        }
        this.f2129b += (long) i2;
        return this;
    }

    @Override // c.d
    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jA = sVar.a(this, 8192L);
            if (jA != -1) {
                j += jA;
            } else {
                return j;
            }
        }
    }

    @Override // c.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c i(int i) {
        o oVarE = e(1);
        byte[] bArr = oVarE.f2162a;
        int i2 = oVarE.f2164c;
        oVarE.f2164c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f2129b++;
        return this;
    }

    @Override // c.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c h(int i) {
        o oVarE = e(2);
        byte[] bArr = oVarE.f2162a;
        int i2 = oVarE.f2164c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        oVarE.f2164c = i3 + 1;
        this.f2129b += 2;
        return this;
    }

    @Override // c.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c g(int i) {
        o oVarE = e(4);
        byte[] bArr = oVarE.f2162a;
        int i2 = oVarE.f2164c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        oVarE.f2164c = i5 + 1;
        this.f2129b += 4;
        return this;
    }

    @Override // c.d
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c l(long j) {
        boolean z;
        long j2;
        int i;
        if (j == 0) {
            return i(48);
        }
        if (j >= 0) {
            z = false;
            j2 = j;
        } else {
            j2 = -j;
            if (j2 < 0) {
                return b("-9223372036854775808");
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 < 100) {
            i = j2 < 10 ? 1 : 2;
        } else {
            i = j2 < 1000 ? 3 : 4;
        }
        if (z) {
            i++;
        }
        o oVarE = e(i);
        byte[] bArr = oVarE.f2162a;
        int i2 = oVarE.f2164c + i;
        while (j2 != 0) {
            i2--;
            bArr[i2] = f2127c[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        oVarE.f2164c += i;
        this.f2129b = ((long) i) + this.f2129b;
        return this;
    }

    @Override // c.d
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public c k(long j) {
        if (j == 0) {
            return i(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        o oVarE = e(iNumberOfTrailingZeros);
        byte[] bArr = oVarE.f2162a;
        int i = oVarE.f2164c;
        for (int i2 = (oVarE.f2164c + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f2127c[(int) (15 & j)];
            j >>>= 4;
        }
        oVarE.f2164c += iNumberOfTrailingZeros;
        this.f2129b = ((long) iNumberOfTrailingZeros) + this.f2129b;
        return this;
    }

    o e(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.f2128a == null) {
            this.f2128a = p.a();
            o oVar = this.f2128a;
            o oVar2 = this.f2128a;
            o oVar3 = this.f2128a;
            oVar2.g = oVar3;
            oVar.f = oVar3;
            return oVar3;
        }
        o oVar4 = this.f2128a.g;
        if (oVar4.f2164c + i > 8192 || !oVar4.e) {
            return oVar4.a(p.a());
        }
        return oVar4;
    }

    @Override // c.r
    public void a_(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        u.a(cVar.f2129b, 0L, j);
        while (j > 0) {
            if (j < cVar.f2128a.f2164c - cVar.f2128a.f2163b) {
                o oVar = this.f2128a != null ? this.f2128a.g : null;
                if (oVar != null && oVar.e) {
                    if ((((long) oVar.f2164c) + j) - ((long) (oVar.f2165d ? 0 : oVar.f2163b)) <= 8192) {
                        cVar.f2128a.a(oVar, (int) j);
                        cVar.f2129b -= j;
                        this.f2129b += j;
                        return;
                    }
                }
                cVar.f2128a = cVar.f2128a.a((int) j);
            }
            o oVar2 = cVar.f2128a;
            long j2 = oVar2.f2164c - oVar2.f2163b;
            cVar.f2128a = oVar2.a();
            if (this.f2128a == null) {
                this.f2128a = oVar2;
                o oVar3 = this.f2128a;
                o oVar4 = this.f2128a;
                o oVar5 = this.f2128a;
                oVar4.g = oVar5;
                oVar3.f = oVar5;
            } else {
                this.f2128a.g.a(oVar2).b();
            }
            cVar.f2129b -= j2;
            this.f2129b += j2;
            j -= j2;
        }
    }

    @Override // c.s
    public long a(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2129b == 0) {
            return -1L;
        }
        if (j > this.f2129b) {
            j = this.f2129b;
        }
        cVar.a_(this, j);
        return j;
    }

    @Override // c.e
    public long a(byte b2) {
        return a(b2, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long a(byte r11, long r12) {
        /*
            r10 = this;
            r0 = 0
            r6 = -1
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 >= 0) goto L10
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "fromIndex < 0"
            r0.<init>(r1)
            throw r0
        L10:
            c.o r2 = r10.f2128a
            if (r2 != 0) goto L16
            r0 = r6
        L15:
            return r0
        L16:
            long r4 = r10.f2129b
            long r4 = r4 - r12
            int r3 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r3 >= 0) goto L2e
            long r0 = r10.f2129b
            r4 = r2
        L20:
            int r2 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r2 <= 0) goto L49
            c.o r4 = r4.g
            int r2 = r4.f2164c
            int r3 = r4.f2163b
            int r2 = r2 - r3
            long r2 = (long) r2
            long r0 = r0 - r2
            goto L20
        L2e:
            r4 = r2
        L2f:
            int r2 = r4.f2164c
            int r3 = r4.f2163b
            int r2 = r2 - r3
            long r2 = (long) r2
            long r2 = r2 + r0
            int r5 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r5 >= 0) goto L49
            c.o r0 = r4.f
            r4 = r0
            r0 = r2
            goto L2f
        L3f:
            int r2 = r4.f2164c
            int r3 = r4.f2163b
            int r2 = r2 - r3
            long r2 = (long) r2
            long r0 = r0 + r2
            c.o r4 = r4.f
            r12 = r0
        L49:
            long r2 = r10.f2129b
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto L68
            byte[] r3 = r4.f2162a
            int r2 = r4.f2163b
            long r8 = (long) r2
            long r8 = r8 + r12
            long r8 = r8 - r0
            int r2 = (int) r8
            int r5 = r4.f2164c
        L59:
            if (r2 >= r5) goto L3f
            r8 = r3[r2]
            if (r8 != r11) goto L65
            int r3 = r4.f2163b
            int r2 = r2 - r3
            long r2 = (long) r2
            long r0 = r0 + r2
            goto L15
        L65:
            int r2 = r2 + 1
            goto L59
        L68:
            r0 = r6
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a(byte, long):long");
    }

    @Override // c.d, c.r, java.io.Flushable
    public void flush() {
    }

    @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // c.r
    public t a() {
        return t.f2168b;
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f2129b != cVar.f2129b) {
            return false;
        }
        if (this.f2129b == 0) {
            return true;
        }
        o oVar = this.f2128a;
        o oVar2 = cVar.f2128a;
        int i = oVar.f2163b;
        int i2 = oVar2.f2163b;
        while (j < this.f2129b) {
            long jMin = Math.min(oVar.f2164c - i, oVar2.f2164c - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                byte b2 = oVar.f2162a[i];
                int i5 = i2 + 1;
                if (b2 != oVar2.f2162a[i2]) {
                    return false;
                }
                i3++;
                i2 = i5;
                i = i4;
            }
            if (i == oVar.f2164c) {
                oVar = oVar.f;
                i = oVar.f2163b;
            }
            if (i2 == oVar2.f2164c) {
                oVar2 = oVar2.f;
                i2 = oVar2.f2163b;
            }
            j += jMin;
        }
        return true;
    }

    public int hashCode() {
        o oVar = this.f2128a;
        if (oVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = oVar.f2163b;
            int i3 = oVar.f2164c;
            while (i2 < i3) {
                int i4 = oVar.f2162a[i2] + (i * 31);
                i2++;
                i = i4;
            }
            oVar = oVar.f;
        } while (oVar != this.f2128a);
        return i;
    }

    public String toString() {
        return v().toString();
    }

    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public c clone() {
        c cVar = new c();
        if (this.f2129b == 0) {
            return cVar;
        }
        cVar.f2128a = new o(this.f2128a);
        o oVar = cVar.f2128a;
        o oVar2 = cVar.f2128a;
        o oVar3 = cVar.f2128a;
        oVar2.g = oVar3;
        oVar.f = oVar3;
        for (o oVar4 = this.f2128a.f; oVar4 != this.f2128a; oVar4 = oVar4.f) {
            cVar.f2128a.g.a(new o(oVar4));
        }
        cVar.f2129b = this.f2129b;
        return cVar;
    }

    public f v() {
        if (this.f2129b > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f2129b);
        }
        return f((int) this.f2129b);
    }

    public f f(int i) {
        return i == 0 ? f.f2133b : new q(this, i);
    }
}
