package d;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c implements d, e, Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f7760c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    o f7761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f7762b;

    @Override // d.d, d.e
    public c c() {
        return this;
    }

    @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // d.d
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c w() {
        return this;
    }

    @Override // d.d, d.r, java.io.Flushable
    public void flush() {
    }

    public long b() {
        return this.f7762b;
    }

    public OutputStream d() {
        return new OutputStream() { // from class: d.c.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                c.this.i((int) ((byte) i));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                c.this.c(bArr, i, i2);
            }

            public String toString() {
                return c.this + ".outputStream()";
            }
        };
    }

    @Override // d.e
    public boolean f() {
        return this.f7762b == 0;
    }

    @Override // d.e
    public void a(long j) throws EOFException {
        if (this.f7762b < j) {
            throw new EOFException();
        }
    }

    @Override // d.e
    public boolean b(long j) {
        return this.f7762b >= j;
    }

    @Override // d.e
    public InputStream g() {
        return new InputStream() { // from class: d.c.2
            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (c.this.f7762b > 0) {
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
                return (int) Math.min(c.this.f7762b, 2147483647L);
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
        u.a(this.f7762b, j, j2);
        if (j2 == 0) {
            return this;
        }
        cVar.f7762b += j2;
        o oVar = this.f7761a;
        while (j >= oVar.f7799c - oVar.f7798b) {
            j -= (long) (oVar.f7799c - oVar.f7798b);
            oVar = oVar.f;
        }
        while (j2 > 0) {
            o oVar2 = new o(oVar);
            oVar2.f7798b = (int) (((long) oVar2.f7798b) + j);
            oVar2.f7799c = Math.min(oVar2.f7798b + ((int) j2), oVar2.f7799c);
            o oVar3 = cVar.f7761a;
            if (oVar3 == null) {
                oVar2.g = oVar2;
                oVar2.f = oVar2;
                cVar.f7761a = oVar2;
            } else {
                oVar3.g.a(oVar2);
            }
            j2 -= (long) (oVar2.f7799c - oVar2.f7798b);
            oVar = oVar.f;
            j = 0;
        }
        return this;
    }

    public long h() {
        long j = this.f7762b;
        if (j == 0) {
            return 0L;
        }
        o oVar = this.f7761a.g;
        return (oVar.f7799c >= 8192 || !oVar.f7801e) ? j : j - ((long) (oVar.f7799c - oVar.f7798b));
    }

    @Override // d.e
    public byte i() {
        if (this.f7762b == 0) {
            throw new IllegalStateException("size == 0");
        }
        o oVar = this.f7761a;
        int i = oVar.f7798b;
        int i2 = oVar.f7799c;
        int i3 = i + 1;
        byte b2 = oVar.f7797a[i];
        this.f7762b--;
        if (i3 == i2) {
            this.f7761a = oVar.a();
            p.a(oVar);
        } else {
            oVar.f7798b = i3;
        }
        return b2;
    }

    public byte c(long j) {
        u.a(this.f7762b, j, 1L);
        o oVar = this.f7761a;
        while (true) {
            long j2 = oVar.f7799c - oVar.f7798b;
            if (j >= j2) {
                j -= j2;
                oVar = oVar.f;
            } else {
                return oVar.f7797a[oVar.f7798b + ((int) j)];
            }
        }
    }

    @Override // d.e
    public short j() {
        if (this.f7762b < 2) {
            throw new IllegalStateException("size < 2: " + this.f7762b);
        }
        o oVar = this.f7761a;
        int i = oVar.f7798b;
        int i2 = oVar.f7799c;
        if (i2 - i < 2) {
            return (short) (((i() & 255) << 8) | (i() & 255));
        }
        byte[] bArr = oVar.f7797a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.f7762b -= 2;
        if (i4 == i2) {
            this.f7761a = oVar.a();
            p.a(oVar);
        } else {
            oVar.f7798b = i4;
        }
        return (short) i5;
    }

    @Override // d.e
    public int k() {
        if (this.f7762b < 4) {
            throw new IllegalStateException("size < 4: " + this.f7762b);
        }
        o oVar = this.f7761a;
        int i = oVar.f7798b;
        int i2 = oVar.f7799c;
        if (i2 - i < 4) {
            return ((i() & 255) << 24) | ((i() & 255) << 16) | ((i() & 255) << 8) | (i() & 255);
        }
        byte[] bArr = oVar.f7797a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.f7762b -= 4;
        if (i8 == i2) {
            this.f7761a = oVar.a();
            p.a(oVar);
        } else {
            oVar.f7798b = i8;
        }
        return i9;
    }

    @Override // d.e
    public short l() {
        return u.a(j());
    }

    @Override // d.e
    public int m() {
        return u.a(k());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a5 A[EDGE_INSN: B:45:0x00a5->B:38:0x00a5 BREAK  A[LOOP:0: B:5:0x000b->B:47:?], SYNTHETIC] */
    @Override // d.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long n() {
        /*
            r15 = this;
            long r0 = r15.f7762b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lac
            r0 = 0
            r4 = r2
            r1 = 0
        Lb:
            d.o r6 = r15.f7761a
            byte[] r7 = r6.f7797a
            int r8 = r6.f7798b
            int r9 = r6.f7799c
        L13:
            if (r8 >= r9) goto L91
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L3a
        L22:
            r11 = 97
            if (r10 < r11) goto L2f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2f
            int r11 = r10 + (-97)
        L2c:
            int r11 = r11 + 10
            goto L3a
        L2f:
            r11 = 65
            if (r10 < r11) goto L72
            r11 = 70
            if (r10 > r11) goto L72
            int r11 = r10 + (-65)
            goto L2c
        L3a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L4a:
            d.c r0 = new d.c
            r0.<init>()
            d.c r0 = r0.k(r4)
            d.c r0 = r0.i(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.p()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L72:
            if (r0 == 0) goto L76
            r1 = 1
            goto L91
        L76:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L91:
            if (r8 != r9) goto L9d
            d.o r7 = r6.a()
            r15.f7761a = r7
            d.p.a(r6)
            goto L9f
        L9d:
            r6.f7798b = r8
        L9f:
            if (r1 != 0) goto La5
            d.o r6 = r15.f7761a
            if (r6 != 0) goto Lb
        La5:
            long r1 = r15.f7762b
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f7762b = r1
            return r4
        Lac:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto Lb5
        Lb4:
            throw r0
        Lb5:
            goto Lb4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.c.n():long");
    }

    public f o() {
        return new f(s());
    }

    @Override // d.e
    public f d(long j) throws EOFException {
        return new f(g(j));
    }

    @Override // d.e
    public long a(r rVar) throws IOException {
        long j = this.f7762b;
        if (j > 0) {
            rVar.a_(this, j);
        }
        return j;
    }

    public String p() {
        try {
            return a(this.f7762b, u.f7808a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String e(long j) throws EOFException {
        return a(j, u.f7808a);
    }

    public String a(Charset charset) {
        try {
            return a(this.f7762b, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String a(long j, Charset charset) throws EOFException {
        u.a(this.f7762b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        o oVar = this.f7761a;
        if (((long) oVar.f7798b) + j > oVar.f7799c) {
            return new String(g(j), charset);
        }
        String str = new String(oVar.f7797a, oVar.f7798b, (int) j, charset);
        oVar.f7798b = (int) (((long) oVar.f7798b) + j);
        this.f7762b -= j;
        if (oVar.f7798b == oVar.f7799c) {
            this.f7761a = oVar.a();
            p.a(oVar);
        }
        return str;
    }

    @Override // d.e
    public String q() throws EOFException {
        long jA = a((byte) 10);
        if (jA == -1) {
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, this.f7762b));
            throw new EOFException("\\n not found: size=" + b() + " content=" + cVar.o().c() + "…");
        }
        return f(jA);
    }

    String f(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (c(j2) == 13) {
                String strE = e(j2);
                h(2L);
                return strE;
            }
        }
        String strE2 = e(j);
        h(1L);
        return strE2;
    }

    public int r() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.f7762b == 0) {
            throw new EOFException();
        }
        byte bC = c(0L);
        if ((bC & 128) == 0) {
            i = bC & 127;
            i2 = 1;
            i3 = 0;
        } else if ((bC & 224) == 192) {
            i = bC & 31;
            i2 = 2;
            i3 = 128;
        } else if ((bC & 240) == 224) {
            i = bC & 15;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((bC & 248) != 240) {
                h(1L);
                return 65533;
            }
            i = bC & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (this.f7762b < j) {
            throw new EOFException("size < " + i2 + ": " + this.f7762b + " (to read code point prefixed 0x" + Integer.toHexString(bC) + ")");
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte bC2 = c(j2);
            if ((bC2 & 192) != 128) {
                h(j2);
                return 65533;
            }
            i = (i << 6) | (bC2 & 63);
        }
        h(j);
        if (i > 1114111) {
            return 65533;
        }
        if ((i < 55296 || i > 57343) && i >= i3) {
            return i;
        }
        return 65533;
    }

    @Override // d.e
    public byte[] s() {
        try {
            return g(this.f7762b);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // d.e
    public byte[] g(long j) throws EOFException {
        u.a(this.f7762b, 0L, j);
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
        o oVar = this.f7761a;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(i2, oVar.f7799c - oVar.f7798b);
        System.arraycopy(oVar.f7797a, oVar.f7798b, bArr, i, iMin);
        oVar.f7798b += iMin;
        this.f7762b -= (long) iMin;
        if (oVar.f7798b == oVar.f7799c) {
            this.f7761a = oVar.a();
            p.a(oVar);
        }
        return iMin;
    }

    public void t() {
        try {
            h(this.f7762b);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // d.e
    public void h(long j) throws EOFException {
        while (j > 0) {
            if (this.f7761a == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, r0.f7799c - this.f7761a.f7798b);
            long j2 = iMin;
            this.f7762b -= j2;
            j -= j2;
            this.f7761a.f7798b += iMin;
            if (this.f7761a.f7798b == this.f7761a.f7799c) {
                o oVar = this.f7761a;
                this.f7761a = oVar.a();
                p.a(oVar);
            }
        }
    }

    @Override // d.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c b(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        fVar.a(this);
        return this;
    }

    @Override // d.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c b(String str) {
        return a(str, 0, str.length());
    }

    public c a(String str, int i, int i2) {
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
                byte[] bArr = oVarE.f7797a;
                int i3 = oVarE.f7799c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt;
                while (i4 < iMin) {
                    char cCharAt2 = str.charAt(i4);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i4 + i3] = (byte) cCharAt2;
                    i4++;
                }
                int i5 = (i3 + i4) - oVarE.f7799c;
                oVarE.f7799c += i5;
                this.f7762b += (long) i5;
                i = i4;
            } else {
                if (cCharAt < 2048) {
                    i((cCharAt >> 6) | 192);
                    i((cCharAt & '?') | 128);
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i((cCharAt >> '\f') | 224);
                    i(((cCharAt >> 6) & 63) | 128);
                    i((cCharAt & '?') | 128);
                } else {
                    int i6 = i + 1;
                    char cCharAt3 = i6 < i2 ? str.charAt(i6) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        i(63);
                        i = i6;
                    } else {
                        int i7 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        i((i7 >> 18) | 240);
                        i(((i7 >> 12) & 63) | 128);
                        i(((i7 >> 6) & 63) | 128);
                        i((i7 & 63) | 128);
                        i += 2;
                    }
                }
                i++;
            }
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

    @Override // d.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c c(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return c(bArr, 0, bArr.length);
    }

    @Override // d.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        u.a(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            o oVarE = e(1);
            int iMin = Math.min(i3 - i, 8192 - oVarE.f7799c);
            System.arraycopy(bArr, i, oVarE.f7797a, oVarE.f7799c, iMin);
            i += iMin;
            oVarE.f7799c += iMin;
        }
        this.f7762b += j;
        return this;
    }

    @Override // d.d
    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jA = sVar.a(this, 8192L);
            if (jA == -1) {
                return j;
            }
            j += jA;
        }
    }

    @Override // d.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c i(int i) {
        o oVarE = e(1);
        byte[] bArr = oVarE.f7797a;
        int i2 = oVarE.f7799c;
        oVarE.f7799c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f7762b++;
        return this;
    }

    @Override // d.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c h(int i) {
        o oVarE = e(2);
        byte[] bArr = oVarE.f7797a;
        int i2 = oVarE.f7799c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        oVarE.f7799c = i3 + 1;
        this.f7762b += 2;
        return this;
    }

    @Override // d.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c g(int i) {
        o oVarE = e(4);
        byte[] bArr = oVarE.f7797a;
        int i2 = oVarE.f7799c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        oVarE.f7799c = i5 + 1;
        this.f7762b += 4;
        return this;
    }

    @Override // d.d
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c l(long j) {
        if (j == 0) {
            return i(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return b("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        o oVarE = e(i);
        byte[] bArr = oVarE.f7797a;
        int i2 = oVarE.f7799c + i;
        while (j != 0) {
            i2--;
            bArr[i2] = f7760c[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        oVarE.f7799c += i;
        this.f7762b += (long) i;
        return this;
    }

    @Override // d.d
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public c k(long j) {
        if (j == 0) {
            return i(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        o oVarE = e(iNumberOfTrailingZeros);
        byte[] bArr = oVarE.f7797a;
        int i = oVarE.f7799c;
        for (int i2 = (oVarE.f7799c + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f7760c[(int) (15 & j)];
            j >>>= 4;
        }
        oVarE.f7799c += iNumberOfTrailingZeros;
        this.f7762b += (long) iNumberOfTrailingZeros;
        return this;
    }

    o e(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        o oVar = this.f7761a;
        if (oVar == null) {
            o oVarA = p.a();
            this.f7761a = oVarA;
            oVarA.g = oVarA;
            oVarA.f = oVarA;
            return oVarA;
        }
        o oVar2 = oVar.g;
        return (oVar2.f7799c + i > 8192 || !oVar2.f7801e) ? oVar2.a(p.a()) : oVar2;
    }

    @Override // d.r
    public void a_(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        u.a(cVar.f7762b, 0L, j);
        while (j > 0) {
            if (j < cVar.f7761a.f7799c - cVar.f7761a.f7798b) {
                o oVar = this.f7761a;
                o oVar2 = oVar != null ? oVar.g : null;
                if (oVar2 != null && oVar2.f7801e) {
                    if ((((long) oVar2.f7799c) + j) - ((long) (oVar2.f7800d ? 0 : oVar2.f7798b)) <= 8192) {
                        cVar.f7761a.a(oVar2, (int) j);
                        cVar.f7762b -= j;
                        this.f7762b += j;
                        return;
                    }
                }
                cVar.f7761a = cVar.f7761a.a((int) j);
            }
            o oVar3 = cVar.f7761a;
            long j2 = oVar3.f7799c - oVar3.f7798b;
            cVar.f7761a = oVar3.a();
            o oVar4 = this.f7761a;
            if (oVar4 == null) {
                this.f7761a = oVar3;
                oVar3.g = oVar3;
                oVar3.f = oVar3;
            } else {
                oVar4.g.a(oVar3).b();
            }
            cVar.f7762b -= j2;
            this.f7762b += j2;
            j -= j2;
        }
    }

    @Override // d.s
    public long a(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        long j2 = this.f7762b;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        cVar.a_(this, j);
        return j;
    }

    @Override // d.e
    public long a(byte b2) {
        return a(b2, 0L);
    }

    public long a(byte b2, long j) {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        o oVar = this.f7761a;
        if (oVar == null) {
            return -1L;
        }
        long j3 = this.f7762b;
        if (j3 - j < j) {
            while (j3 > j) {
                oVar = oVar.g;
                j3 -= (long) (oVar.f7799c - oVar.f7798b);
            }
        } else {
            while (true) {
                long j4 = ((long) (oVar.f7799c - oVar.f7798b)) + j2;
                if (j4 >= j) {
                    break;
                }
                oVar = oVar.f;
                j2 = j4;
            }
            j3 = j2;
        }
        while (j3 < this.f7762b) {
            byte[] bArr = oVar.f7797a;
            int i = oVar.f7799c;
            for (int i2 = (int) ((((long) oVar.f7798b) + j) - j3); i2 < i; i2++) {
                if (bArr[i2] == b2) {
                    return ((long) (i2 - oVar.f7798b)) + j3;
                }
            }
            j3 += (long) (oVar.f7799c - oVar.f7798b);
            oVar = oVar.f;
            j = j3;
        }
        return -1L;
    }

    @Override // d.r
    public t a() {
        return t.f7804b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j = this.f7762b;
        if (j != cVar.f7762b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        o oVar = this.f7761a;
        o oVar2 = cVar.f7761a;
        int i = oVar.f7798b;
        int i2 = oVar2.f7798b;
        while (j2 < this.f7762b) {
            long jMin = Math.min(oVar.f7799c - i, oVar2.f7799c - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (oVar.f7797a[i] != oVar2.f7797a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == oVar.f7799c) {
                oVar = oVar.f;
                i = oVar.f7798b;
            }
            if (i2 == oVar2.f7799c) {
                oVar2 = oVar2.f;
                i2 = oVar2.f7798b;
            }
            j2 += jMin;
        }
        return true;
    }

    public int hashCode() {
        o oVar = this.f7761a;
        if (oVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = oVar.f7799c;
            for (int i3 = oVar.f7798b; i3 < i2; i3++) {
                i = (i * 31) + oVar.f7797a[i3];
            }
            oVar = oVar.f;
        } while (oVar != this.f7761a);
        return i;
    }

    public String toString() {
        return v().toString();
    }

    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public c clone() {
        c cVar = new c();
        if (this.f7762b == 0) {
            return cVar;
        }
        o oVar = new o(this.f7761a);
        cVar.f7761a = oVar;
        oVar.g = oVar;
        oVar.f = oVar;
        o oVar2 = this.f7761a;
        while (true) {
            oVar2 = oVar2.f;
            if (oVar2 != this.f7761a) {
                cVar.f7761a.g.a(new o(oVar2));
            } else {
                cVar.f7762b = this.f7762b;
                return cVar;
            }
        }
    }

    public f v() {
        long j = this.f7762b;
        if (j > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f7762b);
        }
        return f((int) j);
    }

    public f f(int i) {
        if (i == 0) {
            return f.f7766b;
        }
        return new q(this, i);
    }
}
