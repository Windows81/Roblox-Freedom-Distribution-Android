package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f3875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3878d;
    private int e;
    private int f;
    private int g;
    private int i;
    private int h = Integer.MAX_VALUE;
    private int j = 64;
    private int k = 67108864;

    private aer(byte[] bArr, int i, int i2) {
        this.f3875a = bArr;
        this.f3876b = i;
        int i3 = i + i2;
        this.f3878d = i3;
        this.f3877c = i3;
        this.f = i;
    }

    public static aer a(byte[] bArr, int i, int i2) {
        return new aer(bArr, 0, i2);
    }

    private final void f(int i) throws IOException {
        if (i < 0) {
            throw afa.b();
        }
        if (this.f + i > this.h) {
            f(this.h - this.f);
            throw afa.a();
        }
        if (i > this.f3878d - this.f) {
            throw afa.a();
        }
        this.f += i;
    }

    private final void k() {
        this.f3878d += this.e;
        int i = this.f3878d;
        if (i <= this.h) {
            this.e = 0;
        } else {
            this.e = i - this.h;
            this.f3878d -= this.e;
        }
    }

    private final byte l() throws IOException {
        if (this.f == this.f3878d) {
            throw afa.a();
        }
        byte[] bArr = this.f3875a;
        int i = this.f;
        this.f = i + 1;
        return bArr[i];
    }

    public final int a() throws IOException {
        if (this.f == this.f3878d) {
            this.g = 0;
            return 0;
        }
        this.g = g();
        if (this.g == 0) {
            throw new afa("Protocol message contained an invalid tag (zero).");
        }
        return this.g;
    }

    public final void a(int i) throws afa {
        if (this.g != i) {
            throw new afa("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final void a(afb afbVar) throws IOException {
        int iG = g();
        if (this.i >= this.j) {
            throw new afa("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iC = c(iG);
        this.i++;
        afbVar.a(this);
        a(0);
        this.i--;
        d(iC);
    }

    public final byte[] a(int i, int i2) {
        if (i2 == 0) {
            return afe.e;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f3875a, this.f3876b + i, bArr, 0, i2);
        return bArr;
    }

    public final long b() throws IOException {
        return h();
    }

    final void b(int i, int i2) {
        if (i > this.f - this.f3876b) {
            throw new IllegalArgumentException(new StringBuilder(50).append("Position ").append(i).append(" is beyond current ").append(this.f - this.f3876b).toString());
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(24).append("Bad position ").append(i).toString());
        }
        this.f = this.f3876b + i;
        this.g = i2;
    }

    public final boolean b(int i) throws IOException {
        int iA;
        switch (i & 7) {
            case 0:
                g();
                return true;
            case 1:
                l();
                l();
                l();
                l();
                l();
                l();
                l();
                l();
                return true;
            case 2:
                f(g());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                l();
                l();
                l();
                l();
                return true;
            default:
                throw new afa("Protocol message tag had invalid wire type.");
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

    public final int c() throws IOException {
        return g();
    }

    public final int c(int i) throws afa {
        if (i < 0) {
            throw afa.b();
        }
        int i2 = this.f + i;
        int i3 = this.h;
        if (i2 > i3) {
            throw afa.a();
        }
        this.h = i2;
        k();
        return i3;
    }

    public final void d(int i) {
        this.h = i;
        k();
    }

    public final boolean d() throws IOException {
        return g() != 0;
    }

    public final String e() throws IOException {
        int iG = g();
        if (iG < 0) {
            throw afa.b();
        }
        if (iG > this.f3878d - this.f) {
            throw afa.a();
        }
        String str = new String(this.f3875a, this.f, iG, aez.f3891a);
        this.f = iG + this.f;
        return str;
    }

    public final void e(int i) {
        b(i, this.g);
    }

    public final byte[] f() throws IOException {
        int iG = g();
        if (iG < 0) {
            throw afa.b();
        }
        if (iG == 0) {
            return afe.e;
        }
        if (iG > this.f3878d - this.f) {
            throw afa.a();
        }
        byte[] bArr = new byte[iG];
        System.arraycopy(this.f3875a, this.f, bArr, 0, iG);
        this.f = iG + this.f;
        return bArr;
    }

    public final int g() throws IOException {
        byte bL = l();
        if (bL >= 0) {
            return bL;
        }
        int i = bL & 127;
        byte bL2 = l();
        if (bL2 >= 0) {
            return i | (bL2 << 7);
        }
        int i2 = i | ((bL2 & 127) << 7);
        byte bL3 = l();
        if (bL3 >= 0) {
            return i2 | (bL3 << 14);
        }
        int i3 = i2 | ((bL3 & 127) << 14);
        byte bL4 = l();
        if (bL4 >= 0) {
            return i3 | (bL4 << 21);
        }
        int i4 = i3 | ((bL4 & 127) << 21);
        byte bL5 = l();
        int i5 = i4 | (bL5 << 28);
        if (bL5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (l() >= 0) {
                return i5;
            }
        }
        throw afa.c();
    }

    public final long h() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bL = l();
            j |= ((long) (bL & 127)) << i;
            if ((bL & 128) == 0) {
                return j;
            }
        }
        throw afa.c();
    }

    public final int i() {
        if (this.h == Integer.MAX_VALUE) {
            return -1;
        }
        return this.h - this.f;
    }

    public final int j() {
        return this.f - this.f3876b;
    }
}
