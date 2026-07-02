package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class aaj extends zu {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f3700b = Logger.getLogger(aaj.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f3701c = aec.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    aal f3702a;

    static class a extends aaj {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f3703b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f3704c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3705d;
        private int e;

        a(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if ((i2 | 0 | (bArr.length - (i2 + 0))) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            this.f3703b = bArr;
            this.f3704c = 0;
            this.e = 0;
            this.f3705d = i2 + 0;
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final int a() {
            return this.f3705d - this.e;
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(byte b2) throws IOException {
            try {
                byte[] bArr = this.f3703b;
                int i = this.e;
                this.e = i + 1;
                bArr[i] = b2;
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f3705d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i) throws IOException {
            if (i >= 0) {
                b(i);
            } else {
                a(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i, int i2) throws IOException {
            b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i, long j) throws IOException {
            a(i, 0);
            a(j);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i, ack ackVar) throws IOException {
            a(1, 3);
            c(2, i);
            a(3, 2);
            a(ackVar);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        final void a(int i, ack ackVar, add addVar) throws IOException {
            a(i, 2);
            zk zkVar = (zk) ackVar;
            int iJ = zkVar.j();
            if (iJ == -1) {
                iJ = addVar.b(zkVar);
                zkVar.a(iJ);
            }
            b(iJ);
            addVar.a(ackVar, this.f3702a);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i, zv zvVar) throws IOException {
            a(i, 2);
            a(zvVar);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i, String str) throws IOException {
            a(i, 2);
            a(str);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(int i, boolean z) throws IOException {
            a(i, 0);
            a((byte) (z ? 1 : 0));
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(long j) throws IOException {
            if (aaj.f3701c && a() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.f3703b;
                    int i = this.e;
                    this.e = i + 1;
                    aec.a(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.f3703b;
                int i2 = this.e;
                this.e = i2 + 1;
                aec.a(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f3703b;
                    int i3 = this.e;
                    this.e = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f3705d), 1), e);
                }
            }
            byte[] bArr4 = this.f3703b;
            int i4 = this.e;
            this.e = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(ack ackVar) throws IOException {
            b(ackVar.l());
            ackVar.a(this);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(zv zvVar) throws IOException {
            b(zvVar.a());
            zvVar.a(this);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void a(String str) throws IOException {
            int i = this.e;
            try {
                int iG = g(str.length() * 3);
                int iG2 = g(str.length());
                if (iG2 == iG) {
                    this.e = i + iG2;
                    int iA = aee.a(str, this.f3703b, this.e, a());
                    this.e = i;
                    b((iA - i) - iG2);
                    this.e = iA;
                } else {
                    b(aee.a(str));
                    this.e = aee.a(str, this.f3703b, this.e, a());
                }
            } catch (aeh e) {
                this.e = i;
                a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new b(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zu
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            b(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void b(int i) throws IOException {
            if (aaj.f3701c && a() >= 10) {
                while ((i & (-128)) != 0) {
                    byte[] bArr = this.f3703b;
                    int i2 = this.e;
                    this.e = i2 + 1;
                    aec.a(bArr, i2, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                byte[] bArr2 = this.f3703b;
                int i3 = this.e;
                this.e = i3 + 1;
                aec.a(bArr2, i3, (byte) i);
                return;
            }
            while ((i & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f3703b;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    bArr3[i4] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f3705d), 1), e);
                }
            }
            byte[] bArr4 = this.f3703b;
            int i5 = this.e;
            this.e = i5 + 1;
            bArr4[i5] = (byte) i;
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void b(int i, int i2) throws IOException {
            a(i, 0);
            a(i2);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void b(int i, zv zvVar) throws IOException {
            a(1, 3);
            c(2, i);
            a(3, zvVar);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f3703b, this.e, i2);
                this.e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f3705d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void c(int i, int i2) throws IOException {
            a(i, 0);
            b(i2);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void c(int i, long j) throws IOException {
            a(i, 1);
            c(j);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void c(long j) throws IOException {
            try {
                byte[] bArr = this.f3703b;
                int i = this.e;
                this.e = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f3703b;
                int i2 = this.e;
                this.e = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f3703b;
                int i3 = this.e;
                this.e = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f3703b;
                int i4 = this.e;
                this.e = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f3703b;
                int i5 = this.e;
                this.e = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f3703b;
                int i6 = this.e;
                this.e = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f3703b;
                int i7 = this.e;
                this.e = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f3703b;
                int i8 = this.e;
                this.e = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f3705d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void c(byte[] bArr, int i, int i2) throws IOException {
            b(i2);
            b(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void d(int i) throws IOException {
            try {
                byte[] bArr = this.f3703b;
                int i2 = this.e;
                this.e = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f3703b;
                int i3 = this.e;
                this.e = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f3703b;
                int i4 = this.e;
                this.e = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f3703b;
                int i5 = this.e;
                this.e = i5 + 1;
                bArr4[i5] = i >> 24;
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.e), Integer.valueOf(this.f3705d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.aaj
        public final void e(int i, int i2) throws IOException {
            a(i, 5);
            d(i2);
        }
    }

    public static class b extends IOException {
        b() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        b(String str, Throwable th) {
            String strValueOf = String.valueOf("CodedOutputStream was writing to a flat byte array and ran out of space.: ");
            String strValueOf2 = String.valueOf(str);
            super(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), th);
        }

        b(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private aaj() {
    }

    public static int a(int i, abr abrVar) {
        int iE = e(i);
        int iB = abrVar.b();
        return iE + iB + g(iB);
    }

    public static int a(abr abrVar) {
        int iB = abrVar.b();
        return iB + g(iB);
    }

    static int a(ack ackVar, add addVar) {
        zk zkVar = (zk) ackVar;
        int iJ = zkVar.j();
        if (iJ == -1) {
            iJ = addVar.b(zkVar);
            zkVar.a(iJ);
        }
        return iJ + g(iJ);
    }

    public static aaj a(byte[] bArr) {
        return new a(bArr, 0, bArr.length);
    }

    public static int b(double d2) {
        return 8;
    }

    public static int b(float f) {
        return 4;
    }

    public static int b(int i, double d2) {
        return e(i) + 8;
    }

    public static int b(int i, float f) {
        return e(i) + 4;
    }

    public static int b(int i, abr abrVar) {
        return (e(1) << 1) + g(2, i) + a(3, abrVar);
    }

    public static int b(int i, ack ackVar) {
        return (e(1) << 1) + g(2, i) + e(3) + b(ackVar);
    }

    static int b(int i, ack ackVar, add addVar) {
        return e(i) + a(ackVar, addVar);
    }

    public static int b(int i, String str) {
        return e(i) + b(str);
    }

    public static int b(int i, boolean z) {
        return e(i) + 1;
    }

    public static int b(ack ackVar) {
        int iL = ackVar.l();
        return iL + g(iL);
    }

    public static int b(zv zvVar) {
        int iA = zvVar.a();
        return iA + g(iA);
    }

    public static int b(String str) {
        int length;
        try {
            length = aee.a(str);
        } catch (aeh e) {
            length = str.getBytes(abf.f3754a).length;
        }
        return length + g(length);
    }

    public static int b(boolean z) {
        return 1;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        return length + g(length);
    }

    @Deprecated
    static int c(int i, ack ackVar, add addVar) {
        int iE = e(i) << 1;
        zk zkVar = (zk) ackVar;
        int iJ = zkVar.j();
        if (iJ == -1) {
            iJ = addVar.b(zkVar);
            zkVar.a(iJ);
        }
        return iJ + iE;
    }

    public static int c(int i, zv zvVar) {
        int iE = e(i);
        int iA = zvVar.a();
        return iE + iA + g(iA);
    }

    @Deprecated
    public static int c(ack ackVar) {
        return ackVar.l();
    }

    public static int d(int i, long j) {
        return e(i) + e(j);
    }

    public static int d(int i, zv zvVar) {
        return (e(1) << 1) + g(2, i) + c(3, zvVar);
    }

    public static int d(long j) {
        return e(j);
    }

    public static int e(int i) {
        return g(i << 3);
    }

    public static int e(int i, long j) {
        return e(i) + e(j);
    }

    public static int e(long j) {
        long j2;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        int i = 2;
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j2 = j >>> 28;
        } else {
            j2 = j;
        }
        if (((-2097152) & j2) != 0) {
            i += 2;
            j2 >>>= 14;
        }
        return (j2 & (-16384)) != 0 ? i + 1 : i;
    }

    public static int f(int i) {
        if (i >= 0) {
            return g(i);
        }
        return 10;
    }

    public static int f(int i, int i2) {
        return e(i) + f(i2);
    }

    public static int f(int i, long j) {
        return e(i) + e(i(j));
    }

    public static int f(long j) {
        return e(i(j));
    }

    public static int g(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static int g(int i, int i2) {
        return e(i) + g(i2);
    }

    public static int g(int i, long j) {
        return e(i) + 8;
    }

    public static int g(long j) {
        return 8;
    }

    public static int h(int i) {
        return g(m(i));
    }

    public static int h(int i, int i2) {
        return e(i) + g(m(i2));
    }

    public static int h(int i, long j) {
        return e(i) + 8;
    }

    public static int h(long j) {
        return 8;
    }

    public static int i(int i) {
        return 4;
    }

    public static int i(int i, int i2) {
        return e(i) + 4;
    }

    private static long i(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int j(int i) {
        return 4;
    }

    public static int j(int i, int i2) {
        return e(i) + 4;
    }

    public static int k(int i) {
        return f(i);
    }

    public static int k(int i, int i2) {
        return e(i) + f(i2);
    }

    @Deprecated
    public static int l(int i) {
        return g(i);
    }

    private static int m(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public abstract int a();

    public abstract void a(byte b2) throws IOException;

    public final void a(double d2) throws IOException {
        c(Double.doubleToRawLongBits(d2));
    }

    public final void a(float f) throws IOException {
        d(Float.floatToRawIntBits(f));
    }

    public abstract void a(int i) throws IOException;

    public final void a(int i, double d2) throws IOException {
        c(i, Double.doubleToRawLongBits(d2));
    }

    public final void a(int i, float f) throws IOException {
        e(i, Float.floatToRawIntBits(f));
    }

    public abstract void a(int i, int i2) throws IOException;

    public abstract void a(int i, long j) throws IOException;

    public abstract void a(int i, ack ackVar) throws IOException;

    abstract void a(int i, ack ackVar, add addVar) throws IOException;

    public abstract void a(int i, zv zvVar) throws IOException;

    public abstract void a(int i, String str) throws IOException;

    public abstract void a(int i, boolean z) throws IOException;

    public abstract void a(long j) throws IOException;

    public abstract void a(ack ackVar) throws IOException;

    public abstract void a(zv zvVar) throws IOException;

    public abstract void a(String str) throws IOException;

    final void a(String str, aeh aehVar) throws IOException {
        f3700b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) aehVar);
        byte[] bytes = str.getBytes(abf.f3754a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (b e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new b(e2);
        }
    }

    public final void a(boolean z) throws IOException {
        a((byte) (z ? 1 : 0));
    }

    public final void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void b(int i) throws IOException;

    public abstract void b(int i, int i2) throws IOException;

    public final void b(int i, long j) throws IOException {
        a(i, i(j));
    }

    public abstract void b(int i, zv zvVar) throws IOException;

    public final void b(long j) throws IOException {
        a(i(j));
    }

    public abstract void b(byte[] bArr, int i, int i2) throws IOException;

    public final void c(int i) throws IOException {
        b(m(i));
    }

    public abstract void c(int i, int i2) throws IOException;

    public abstract void c(int i, long j) throws IOException;

    public abstract void c(long j) throws IOException;

    abstract void c(byte[] bArr, int i, int i2) throws IOException;

    public abstract void d(int i) throws IOException;

    public final void d(int i, int i2) throws IOException {
        c(i, m(i2));
    }

    public abstract void e(int i, int i2) throws IOException;
}
