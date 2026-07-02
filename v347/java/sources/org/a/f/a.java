package org.a.f;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f8214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f8215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f8216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f8217d;
    private static final byte[] e;
    private static final byte[] f;
    private static final byte[] g;

    static {
        f8214a = !a.class.desiredAssertionStatus();
        f8215b = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        f8216c = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
        f8217d = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        e = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
        f = new byte[]{45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
        g = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    }

    private static final byte[] b(int i) {
        if ((i & 16) == 16) {
            return f8217d;
        }
        if ((i & 32) == 32) {
            return f;
        }
        return f8215b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] c(int i) {
        if ((i & 16) == 16) {
            return e;
        }
        if ((i & 32) == 32) {
            return g;
        }
        return f8216c;
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] b(byte[] bArr, byte[] bArr2, int i, int i2) {
        a(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] bArrB = b(i4);
        int i5 = (i2 > 2 ? (bArr[i + 2] << 24) >>> 24 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0) | (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0);
        switch (i2) {
            case 1:
                bArr2[i3] = bArrB[i5 >>> 18];
                bArr2[i3 + 1] = bArrB[(i5 >>> 12) & 63];
                bArr2[i3 + 2] = 61;
                bArr2[i3 + 3] = 61;
                return bArr2;
            case 2:
                bArr2[i3] = bArrB[i5 >>> 18];
                bArr2[i3 + 1] = bArrB[(i5 >>> 12) & 63];
                bArr2[i3 + 2] = bArrB[(i5 >>> 6) & 63];
                bArr2[i3 + 3] = 61;
                return bArr2;
            case 3:
                bArr2[i3] = bArrB[i5 >>> 18];
                bArr2[i3 + 1] = bArrB[(i5 >>> 12) & 63];
                bArr2[i3 + 2] = bArrB[(i5 >>> 6) & 63];
                bArr2[i3 + 3] = bArrB[i5 & 63];
                return bArr2;
            default:
                return bArr2;
        }
    }

    public static String a(byte[] bArr) throws Throwable {
        String strA = null;
        try {
            strA = a(bArr, 0, bArr.length, 0);
        } catch (IOException e2) {
            if (!f8214a) {
                throw new AssertionError(e2.getMessage());
            }
        }
        if (f8214a || strA != null) {
            return strA;
        }
        throw new AssertionError();
    }

    public static String a(byte[] bArr, int i, int i2, int i3) throws Throwable {
        byte[] bArrB = b(bArr, i, i2, i3);
        try {
            return new String(bArrB, "US-ASCII");
        } catch (UnsupportedEncodingException e2) {
            return new String(bArrB);
        }
    }

    public static byte[] b(byte[] bArr, int i, int i2, int i3) throws Throwable {
        C0145a c0145a;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (bArr == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i);
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + i2);
        }
        if (i + i2 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)));
        }
        if ((i3 & 2) == 0) {
            boolean z = (i3 & 8) != 0;
            int i4 = (i2 % 3 > 0 ? 4 : 0) + ((i2 / 3) * 4);
            if (z) {
                i4 += i4 / 76;
            }
            byte[] bArr2 = new byte[i4];
            int i5 = i2 - 2;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i8 < i5) {
                a(bArr, i8 + i, 3, bArr2, i7, i3);
                int i9 = i6 + 4;
                if (z && i9 >= 76) {
                    bArr2[i7 + 4] = 10;
                    i7++;
                    i9 = 0;
                }
                i7 += 4;
                i6 = i9;
                i8 += 3;
            }
            if (i8 < i2) {
                a(bArr, i8 + i, i2 - i8, bArr2, i7, i3);
                i7 += 4;
            }
            if (i7 > bArr2.length - 1) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i7];
            System.arraycopy(bArr2, 0, bArr3, 0, i7);
            return bArr3;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                c0145a = new C0145a(byteArrayOutputStream, i3 | 1);
                try {
                    gZIPOutputStream = new GZIPOutputStream(c0145a);
                } catch (IOException e2) {
                    e = e2;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e3) {
                e = e3;
                c0145a = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
            } catch (Throwable th2) {
                th = th2;
                c0145a = null;
            }
        } catch (IOException e4) {
            e = e4;
            c0145a = null;
            byteArrayOutputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            c0145a = null;
            byteArrayOutputStream = null;
        }
        try {
            gZIPOutputStream.write(bArr, i, i2);
            gZIPOutputStream.close();
            try {
                gZIPOutputStream.close();
            } catch (Exception e5) {
            }
            try {
                c0145a.close();
            } catch (Exception e6) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception e7) {
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e8) {
            e = e8;
            gZIPOutputStream2 = gZIPOutputStream;
            byteArrayOutputStream2 = byteArrayOutputStream;
            try {
                throw e;
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream = byteArrayOutputStream2;
                try {
                    gZIPOutputStream2.close();
                } catch (Exception e9) {
                }
                try {
                    c0145a.close();
                } catch (Exception e10) {
                }
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (Exception e11) {
                    throw th;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            gZIPOutputStream2 = gZIPOutputStream;
            gZIPOutputStream2.close();
            c0145a.close();
            byteArrayOutputStream.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        }
        if (bArr2 == null) {
            throw new NullPointerException("Destination array was null.");
        }
        if (i < 0 || i + 3 >= bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
        if (i2 < 0 || i2 + 2 >= bArr2.length) {
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i2)));
        }
        byte[] bArrC = c(i3);
        if (bArr[i + 2] == 61) {
            bArr2[i2] = (byte) ((((bArrC[bArr[i]] & 255) << 18) | ((bArrC[bArr[i + 1]] & 255) << 12)) >>> 16);
            return 1;
        }
        if (bArr[i + 3] == 61) {
            int i4 = ((bArrC[bArr[i]] & 255) << 18) | ((bArrC[bArr[i + 1]] & 255) << 12) | ((bArrC[bArr[i + 2]] & 255) << 6);
            bArr2[i2] = (byte) (i4 >>> 16);
            bArr2[i2 + 1] = (byte) (i4 >>> 8);
            return 2;
        }
        int i5 = ((bArrC[bArr[i]] & 255) << 18) | ((bArrC[bArr[i + 1]] & 255) << 12) | ((bArrC[bArr[i + 2]] & 255) << 6) | (bArrC[bArr[i + 3]] & 255);
        bArr2[i2] = (byte) (i5 >> 16);
        bArr2[i2 + 1] = (byte) (i5 >> 8);
        bArr2[i2 + 2] = (byte) i5;
        return 3;
    }

    /* JADX INFO: renamed from: org.a.f.a$a, reason: collision with other inner class name */
    public static class C0145a extends FilterOutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private byte[] f8220c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8221d;
        private int e;
        private boolean f;
        private byte[] g;
        private boolean h;
        private int i;
        private byte[] j;

        public C0145a(OutputStream outputStream, int i) {
            super(outputStream);
            this.f = (i & 8) != 0;
            this.f8218a = (i & 1) != 0;
            this.f8221d = this.f8218a ? 3 : 4;
            this.f8220c = new byte[this.f8221d];
            this.f8219b = 0;
            this.e = 0;
            this.h = false;
            this.g = new byte[4];
            this.i = i;
            this.j = a.c(i);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            if (this.h) {
                this.out.write(i);
                return;
            }
            if (this.f8218a) {
                byte[] bArr = this.f8220c;
                int i2 = this.f8219b;
                this.f8219b = i2 + 1;
                bArr[i2] = (byte) i;
                if (this.f8219b >= this.f8221d) {
                    this.out.write(a.b(this.g, this.f8220c, this.f8221d, this.i));
                    this.e += 4;
                    if (this.f && this.e >= 76) {
                        this.out.write(10);
                        this.e = 0;
                    }
                    this.f8219b = 0;
                    return;
                }
                return;
            }
            if (this.j[i & 127] > -5) {
                byte[] bArr2 = this.f8220c;
                int i3 = this.f8219b;
                this.f8219b = i3 + 1;
                bArr2[i3] = (byte) i;
                if (this.f8219b >= this.f8221d) {
                    this.out.write(this.g, 0, a.b(this.f8220c, 0, this.g, 0, this.i));
                    this.f8219b = 0;
                    return;
                }
                return;
            }
            if (this.j[i & 127] != -5) {
                throw new IOException("Invalid character in Base64 data.");
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.h) {
                this.out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }

        public void a() throws IOException {
            if (this.f8219b > 0) {
                if (this.f8218a) {
                    this.out.write(a.b(this.g, this.f8220c, this.f8219b, this.i));
                    this.f8219b = 0;
                    return;
                }
                throw new IOException("Base64 input not properly padded.");
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a();
            super.close();
            this.f8220c = null;
            this.out = null;
        }
    }
}
