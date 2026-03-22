package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f4118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4122e;
    private int f;
    private int g;
    private int i;
    private int h = Integer.MAX_VALUE;
    private int j = 64;
    private int k = 67108864;

    private c(byte[] bArr, int i, int i2) {
        this.f4118a = bArr;
        this.f4119b = i;
        int i3 = i2 + i;
        this.f4121d = i3;
        this.f4120c = i3;
        this.f = i;
    }

    public static c a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static c a(byte[] bArr, int i, int i2) {
        return new c(bArr, 0, i2);
    }

    private final void f(int i) throws IOException {
        if (i < 0) {
            throw l.b();
        }
        int i2 = this.f;
        int i3 = i2 + i;
        int i4 = this.h;
        if (i3 > i4) {
            f(i4 - i2);
            throw l.a();
        }
        if (i > this.f4121d - i2) {
            throw l.a();
        }
        this.f = i2 + i;
    }

    private final void j() {
        int i = this.f4121d + this.f4122e;
        this.f4121d = i;
        int i2 = this.h;
        if (i <= i2) {
            this.f4122e = 0;
            return;
        }
        int i3 = i - i2;
        this.f4122e = i3;
        this.f4121d = i - i3;
    }

    private final byte k() throws IOException {
        int i = this.f;
        if (i == this.f4121d) {
            throw l.a();
        }
        byte[] bArr = this.f4118a;
        this.f = i + 1;
        return bArr[i];
    }

    public final int a() throws IOException {
        if (this.f == this.f4121d) {
            this.g = 0;
            return 0;
        }
        int iD = d();
        this.g = iD;
        if (iD != 0) {
            return iD;
        }
        throw new l("Protocol message contained an invalid tag (zero).");
    }

    public final void a(int i) throws l {
        if (this.g != i) {
            throw new l("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final void a(m mVar) throws IOException {
        int iD = d();
        if (this.i >= this.j) {
            throw l.d();
        }
        int iC = c(iD);
        this.i++;
        mVar.a(this);
        a(0);
        this.i--;
        d(iC);
    }

    public final void a(m mVar, int i) throws IOException {
        int i2 = this.i;
        if (i2 >= this.j) {
            throw l.d();
        }
        this.i = i2 + 1;
        mVar.a(this);
        a((i << 3) | 4);
        this.i--;
    }

    public final byte[] a(int i, int i2) {
        if (i2 == 0) {
            return p.f4676d;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f4118a, this.f4119b + i, bArr, 0, i2);
        return bArr;
    }

    final void b(int i, int i2) {
        int i3 = this.f;
        int i4 = this.f4119b;
        if (i > i3 - i4) {
            int i5 = this.f - this.f4119b;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i5);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i >= 0) {
            this.f = i4 + i;
            this.g = i2;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final boolean b() throws IOException {
        return d() != 0;
    }

    public final boolean b(int i) throws IOException {
        int iA;
        int i2 = i & 7;
        if (i2 == 0) {
            d();
            return true;
        }
        if (i2 == 1) {
            g();
            return true;
        }
        if (i2 == 2) {
            f(d());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw new l("Protocol message tag had invalid wire type.");
            }
            f();
            return true;
        }
        do {
            iA = a();
            if (iA == 0) {
                break;
            }
        } while (b(iA));
        a(((i >>> 3) << 3) | 4);
        return true;
    }

    public final int c(int i) throws l {
        if (i < 0) {
            throw l.b();
        }
        int i2 = i + this.f;
        int i3 = this.h;
        if (i2 > i3) {
            throw l.a();
        }
        this.h = i2;
        j();
        return i3;
    }

    public final String c() throws IOException {
        int iD = d();
        if (iD < 0) {
            throw l.b();
        }
        if (iD > this.f4121d - this.f) {
            throw l.a();
        }
        String str = new String(this.f4118a, this.f, iD, k.f4652a);
        this.f += iD;
        return str;
    }

    public final int d() throws IOException {
        int i;
        byte bK = k();
        if (bK >= 0) {
            return bK;
        }
        int i2 = bK & 127;
        byte bK2 = k();
        if (bK2 >= 0) {
            i = bK2 << 7;
        } else {
            i2 |= (bK2 & 127) << 7;
            byte bK3 = k();
            if (bK3 >= 0) {
                i = bK3 << 14;
            } else {
                i2 |= (bK3 & 127) << 14;
                byte bK4 = k();
                if (bK4 < 0) {
                    int i3 = i2 | ((bK4 & 127) << 21);
                    byte bK5 = k();
                    int i4 = i3 | (bK5 << 28);
                    if (bK5 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (k() >= 0) {
                            return i4;
                        }
                    }
                    throw l.c();
                }
                i = bK4 << 21;
            }
        }
        return i2 | i;
    }

    public final void d(int i) {
        this.h = i;
        j();
    }

    public final long e() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bK = k();
            j |= ((long) (bK & 127)) << i;
            if ((bK & 128) == 0) {
                return j;
            }
        }
        throw l.c();
    }

    public final void e(int i) {
        b(i, this.g);
    }

    public final int f() throws IOException {
        return (k() & 255) | ((k() & 255) << 8) | ((k() & 255) << 16) | ((k() & 255) << 24);
    }

    public final long g() throws IOException {
        byte bK = k();
        return ((((long) k()) & 255) << 8) | (((long) bK) & 255) | ((((long) k()) & 255) << 16) | ((((long) k()) & 255) << 24) | ((((long) k()) & 255) << 32) | ((((long) k()) & 255) << 40) | ((((long) k()) & 255) << 48) | ((((long) k()) & 255) << 56);
    }

    public final int h() {
        int i = this.h;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - this.f;
    }

    public final int i() {
        return this.f - this.f4119b;
    }
}
