package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class aag extends aae {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f3694d;
    private final boolean e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    private aag(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.k = Integer.MAX_VALUE;
        this.f3694d = bArr;
        this.f = i + i2;
        this.h = i;
        this.i = this.h;
        this.e = z;
    }

    private final byte A() throws IOException {
        if (this.h == this.f) {
            throw abj.a();
        }
        byte[] bArr = this.f3694d;
        int i = this.h;
        this.h = i + 1;
        return bArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        if (r3[r2] < 0) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072 A[PHI: r2
  0x0072: PHI (r2v7 int) = (r2v6 int), (r2v9 int), (r2v11 int) binds: [B:21:0x004c, B:25:0x0058, B:29:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int v() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.h
            int r1 = r5.f
            if (r1 == r0) goto L6c
            byte[] r3 = r5.f3694d
            int r2 = r0 + 1
            r0 = r3[r0]
            if (r0 < 0) goto L11
            r5.h = r2
        L10:
            return r0
        L11:
            int r1 = r5.f
            int r1 = r1 - r2
            r4 = 9
            if (r1 < r4) goto L6c
            int r1 = r2 + 1
            r2 = r3[r2]
            int r2 = r2 << 7
            r0 = r0 ^ r2
            if (r0 >= 0) goto L26
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
        L23:
            r5.h = r1
            goto L10
        L26:
            int r2 = r1 + 1
            r1 = r3[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L33
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            r1 = r2
            goto L23
        L33:
            int r1 = r2 + 1
            r2 = r3[r2]
            int r2 = r2 << 21
            r0 = r0 ^ r2
            if (r0 >= 0) goto L41
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L23
        L41:
            int r2 = r1 + 1
            r1 = r3[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L72
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L23
            int r2 = r1 + 1
            r1 = r3[r1]
            if (r1 >= 0) goto L72
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L23
            int r2 = r1 + 1
            r1 = r3[r1]
            if (r1 >= 0) goto L72
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L23
        L6c:
            long r0 = r5.s()
            int r0 = (int) r0
            goto L10
        L72:
            r1 = r2
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aag.v():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b2, code lost:
    
        if (r4[r3] < 0) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long w() throws java.io.IOException {
        /*
            r10 = this;
            r8 = 0
            int r0 = r10.h
            int r1 = r10.f
            if (r1 == r0) goto Lb4
            byte[] r4 = r10.f3694d
            int r1 = r0 + 1
            r0 = r4[r0]
            if (r0 < 0) goto L14
            r10.h = r1
            long r0 = (long) r0
        L13:
            return r0
        L14:
            int r2 = r10.f
            int r2 = r2 - r1
            r3 = 9
            if (r2 < r3) goto Lb4
            int r2 = r1 + 1
            r1 = r4[r1]
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L2a
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            long r0 = (long) r0
        L27:
            r10.h = r2
            goto L13
        L2a:
            int r3 = r2 + 1
            r1 = r4[r2]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L38
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            long r0 = (long) r0
            r2 = r3
            goto L27
        L38:
            int r2 = r3 + 1
            r1 = r4[r3]
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L47
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            long r0 = (long) r0
            goto L27
        L47:
            long r0 = (long) r0
            int r3 = r2 + 1
            r2 = r4[r2]
            long r6 = (long) r2
            r2 = 28
            long r6 = r6 << r2
            long r0 = r0 ^ r6
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 < 0) goto L5b
            r4 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r0 = r0 ^ r4
            r2 = r3
            goto L27
        L5b:
            int r2 = r3 + 1
            r3 = r4[r3]
            long r6 = (long) r3
            r3 = 35
            long r6 = r6 << r3
            long r0 = r0 ^ r6
            int r3 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r3 >= 0) goto L6f
            r4 = -34093383808(0xfffffff80fe03f80, double:NaN)
            long r0 = r0 ^ r4
            goto L27
        L6f:
            int r3 = r2 + 1
            r2 = r4[r2]
            long r6 = (long) r2
            r2 = 42
            long r6 = r6 << r2
            long r0 = r0 ^ r6
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 < 0) goto L84
            r4 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            long r0 = r0 ^ r4
            r2 = r3
            goto L27
        L84:
            int r2 = r3 + 1
            r3 = r4[r3]
            long r6 = (long) r3
            r3 = 49
            long r6 = r6 << r3
            long r0 = r0 ^ r6
            int r3 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r3 >= 0) goto L98
            r4 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            long r0 = r0 ^ r4
            goto L27
        L98:
            int r3 = r2 + 1
            r2 = r4[r2]
            long r6 = (long) r2
            r2 = 56
            long r6 = r6 << r2
            long r0 = r0 ^ r6
            r6 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r0 = r0 ^ r6
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 >= 0) goto Lba
            int r2 = r3 + 1
            r3 = r4[r3]
            long r4 = (long) r3
            int r3 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r3 >= 0) goto L27
        Lb4:
            long r0 = r10.s()
            goto L13
        Lba:
            r2 = r3
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aag.w():long");
    }

    private final int x() throws IOException {
        int i = this.h;
        if (this.f - i < 4) {
            throw abj.a();
        }
        byte[] bArr = this.f3694d;
        this.h = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long y() throws IOException {
        int i = this.h;
        if (this.f - i < 8) {
            throw abj.a();
        }
        byte[] bArr = this.f3694d;
        this.h = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private final void z() {
        this.f += this.g;
        int i = this.f - this.i;
        if (i <= this.k) {
            this.g = 0;
        } else {
            this.g = i - this.k;
            this.f -= this.g;
        }
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int a() throws IOException {
        if (t()) {
            this.j = 0;
            return 0;
        }
        this.j = v();
        if ((this.j >>> 3) == 0) {
            throw abj.d();
        }
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final void a(int i) throws abj {
        if (this.j != i) {
            throw abj.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final double b() throws IOException {
        return Double.longBitsToDouble(y());
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final boolean b(int i) throws IOException {
        int iA;
        int i2 = 0;
        switch (i & 7) {
            case 0:
                if (this.f - this.h < 10) {
                    while (i2 < 10) {
                        if (A() >= 0) {
                            return true;
                        }
                        i2++;
                    }
                    throw abj.c();
                }
                while (i2 < 10) {
                    byte[] bArr = this.f3694d;
                    int i3 = this.h;
                    this.h = i3 + 1;
                    if (bArr[i3] >= 0) {
                        return true;
                    }
                    i2++;
                }
                throw abj.c();
            case 1:
                e(8);
                return true;
            case 2:
                e(v());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                e(4);
                return true;
            default:
                throw abj.f();
        }
        do {
            iA = a();
            if (iA != 0) {
            }
            a(((i >>> 3) << 3) | 4);
            return true;
        } while (b(iA));
        a(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final float c() throws IOException {
        return Float.intBitsToFloat(x());
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int c(int i) throws abj {
        if (i < 0) {
            throw abj.b();
        }
        int iU = u() + i;
        int i2 = this.k;
        if (iU > i2) {
            throw abj.a();
        }
        this.k = iU;
        z();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final long d() throws IOException {
        return w();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final void d(int i) {
        this.k = i;
        z();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final long e() throws IOException {
        return w();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final void e(int i) throws IOException {
        if (i >= 0 && i <= this.f - this.h) {
            this.h += i;
        } else {
            if (i >= 0) {
                throw abj.a();
            }
            throw abj.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int f() throws IOException {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final long g() throws IOException {
        return y();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int h() throws IOException {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final boolean i() throws IOException {
        return w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final String j() throws IOException {
        int iV = v();
        if (iV > 0 && iV <= this.f - this.h) {
            String str = new String(this.f3694d, this.h, iV, abf.f3754a);
            this.h = iV + this.h;
            return str;
        }
        if (iV == 0) {
            return "";
        }
        if (iV < 0) {
            throw abj.b();
        }
        throw abj.a();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final String k() throws IOException {
        int iV = v();
        if (iV <= 0 || iV > this.f - this.h) {
            if (iV == 0) {
                return "";
            }
            if (iV <= 0) {
                throw abj.b();
            }
            throw abj.a();
        }
        if (!aee.a(this.f3694d, this.h, this.h + iV)) {
            throw abj.h();
        }
        int i = this.h;
        this.h += iV;
        return new String(this.f3694d, i, iV, abf.f3754a);
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final zv l() throws IOException {
        byte[] bArrCopyOfRange;
        int iV = v();
        if (iV > 0 && iV <= this.f - this.h) {
            zv zvVarA = zv.a(this.f3694d, this.h, iV);
            this.h = iV + this.h;
            return zvVarA;
        }
        if (iV == 0) {
            return zv.f5750a;
        }
        if (iV > 0 && iV <= this.f - this.h) {
            int i = this.h;
            this.h = iV + this.h;
            bArrCopyOfRange = Arrays.copyOfRange(this.f3694d, i, this.h);
        } else {
            if (iV > 0) {
                throw abj.a();
            }
            if (iV != 0) {
                throw abj.b();
            }
            bArrCopyOfRange = abf.f3755b;
        }
        return zv.b(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int m() throws IOException {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int n() throws IOException {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int o() throws IOException {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final long p() throws IOException {
        return y();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int q() throws IOException {
        return f(v());
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final long r() throws IOException {
        return a(w());
    }

    @Override // com.google.android.gms.internal.ads.aae
    final long s() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bA = A();
            j |= ((long) (bA & 127)) << i;
            if ((bA & 128) == 0) {
                return j;
            }
        }
        throw abj.c();
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final boolean t() throws IOException {
        return this.h == this.f;
    }

    @Override // com.google.android.gms.internal.ads.aae
    public final int u() {
        return this.h - this.i;
    }
}
