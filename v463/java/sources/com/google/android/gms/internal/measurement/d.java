package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f4177a;

    private d(ByteBuffer byteBuffer) {
        this.f4177a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    private d(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int a(int i) {
        if (i >= 0) {
            return d(i);
        }
        return 10;
    }

    public static int a(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        long j = ((long) i3) + 4294967296L;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int a(String str) {
        int iA = a((CharSequence) str);
        return d(iA) + iA;
    }

    public static d a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static d a(byte[] bArr, int i, int i2) {
        return new d(bArr, 0, i2);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char cCharAt;
        int i3;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i4 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (i4 < length) {
                char cCharAt2 = charSequence.charAt(i4);
                int i5 = cCharAt2;
                if (cCharAt2 >= 128) {
                    if (cCharAt2 < 2048) {
                        i3 = (cCharAt2 >>> 6) | 960;
                    } else {
                        if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                            int i6 = i4 + 1;
                            if (i6 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i6);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint & 63) | 128));
                                    i4 = i6;
                                } else {
                                    i4 = i6;
                                }
                            }
                            StringBuilder sb = new StringBuilder(39);
                            sb.append("Unpaired surrogate at index ");
                            sb.append(i4 - 1);
                            throw new IllegalArgumentException(sb.toString());
                        }
                        byteBuffer.put((byte) ((cCharAt2 >>> '\f') | 480));
                        i3 = ((cCharAt2 >>> 6) & 63) | 128;
                    }
                    byteBuffer.put((byte) i3);
                    i5 = (cCharAt2 & '?') | 128;
                    byteBuffer.put((byte) i5);
                } else {
                    byteBuffer.put((byte) i5);
                }
                i4++;
            }
            return;
        }
        try {
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            int length2 = charSequence.length();
            int i7 = iRemaining + iArrayOffset;
            while (i4 < length2) {
                int i8 = i4 + iArrayOffset;
                if (i8 >= i7 || (cCharAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                bArrArray[i8] = (byte) cCharAt;
                i4++;
            }
            if (i4 == length2) {
                i = iArrayOffset + length2;
            } else {
                i = iArrayOffset + i4;
                while (i4 < length2) {
                    char cCharAt4 = charSequence.charAt(i4);
                    if (cCharAt4 >= 128 || i >= i7) {
                        if (cCharAt4 < 2048 && i <= i7 - 2) {
                            int i9 = i + 1;
                            bArrArray[i] = (byte) ((cCharAt4 >>> 6) | 960);
                            i = i9 + 1;
                            bArrArray[i9] = (byte) ((cCharAt4 & '?') | 128);
                        } else {
                            if ((cCharAt4 >= 55296 && 57343 >= cCharAt4) || i > i7 - 3) {
                                if (i > i7 - 4) {
                                    StringBuilder sb2 = new StringBuilder(37);
                                    sb2.append("Failed writing ");
                                    sb2.append(cCharAt4);
                                    sb2.append(" at index ");
                                    sb2.append(i);
                                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                }
                                int i10 = i4 + 1;
                                if (i10 != charSequence.length()) {
                                    char cCharAt5 = charSequence.charAt(i10);
                                    if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                                        int i11 = i + 1;
                                        bArrArray[i] = (byte) ((codePoint2 >>> 18) | 240);
                                        int i12 = i11 + 1;
                                        bArrArray[i11] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                        int i13 = i12 + 1;
                                        bArrArray[i12] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                        i = i13 + 1;
                                        bArrArray[i13] = (byte) ((codePoint2 & 63) | 128);
                                        i4 = i10;
                                    } else {
                                        i4 = i10;
                                    }
                                }
                                StringBuilder sb3 = new StringBuilder(39);
                                sb3.append("Unpaired surrogate at index ");
                                sb3.append(i4 - 1);
                                throw new IllegalArgumentException(sb3.toString());
                            }
                            int i14 = i + 1;
                            bArrArray[i] = (byte) ((cCharAt4 >>> '\f') | 480);
                            int i15 = i14 + 1;
                            bArrArray[i14] = (byte) (((cCharAt4 >>> 6) & 63) | 128);
                            i2 = i15 + 1;
                            bArrArray[i15] = (byte) ((cCharAt4 & '?') | 128);
                        }
                        i4++;
                    } else {
                        i2 = i + 1;
                        bArrArray[i] = (byte) cCharAt4;
                    }
                    i = i2;
                    i4++;
                }
            }
            byteBuffer.position(i - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }

    public static int b(int i) {
        return d(i << 3);
    }

    public static int b(int i, int i2) {
        return b(i) + a(i2);
    }

    public static int b(int i, m mVar) {
        int iB = b(i);
        int iD = mVar.d();
        return iB + d(iD) + iD;
    }

    public static int b(int i, String str) {
        return b(i) + a(str);
    }

    private final void b(long j) throws IOException {
        while (((-128) & j) != 0) {
            e((((int) j) & 127) | 128);
            j >>>= 7;
        }
        e((int) j);
    }

    public static int c(int i, long j) {
        return b(i) + a(j);
    }

    public static int d(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    private final void e(int i) throws IOException {
        byte b2 = (byte) i;
        if (!this.f4177a.hasRemaining()) {
            throw new e(this.f4177a.position(), this.f4177a.limit());
        }
        this.f4177a.put(b2);
    }

    public final void a() {
        if (this.f4177a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f4177a.remaining())));
        }
    }

    public final void a(int i, double d2) throws IOException {
        c(i, 1);
        long jDoubleToLongBits = Double.doubleToLongBits(d2);
        if (this.f4177a.remaining() < 8) {
            throw new e(this.f4177a.position(), this.f4177a.limit());
        }
        this.f4177a.putLong(jDoubleToLongBits);
    }

    public final void a(int i, float f) throws IOException {
        c(i, 5);
        int iFloatToIntBits = Float.floatToIntBits(f);
        if (this.f4177a.remaining() < 4) {
            throw new e(this.f4177a.position(), this.f4177a.limit());
        }
        this.f4177a.putInt(iFloatToIntBits);
    }

    public final void a(int i, int i2) throws IOException {
        c(i, 0);
        if (i2 >= 0) {
            c(i2);
        } else {
            b(i2);
        }
    }

    public final void a(int i, long j) throws IOException {
        c(i, 0);
        b(j);
    }

    public final void a(int i, m mVar) throws IOException {
        c(i, 2);
        a(mVar);
    }

    public final void a(int i, String str) throws IOException {
        c(i, 2);
        try {
            int iD = d(str.length());
            if (iD != d(str.length() * 3)) {
                c(a((CharSequence) str));
                a(str, this.f4177a);
                return;
            }
            int iPosition = this.f4177a.position();
            if (this.f4177a.remaining() < iD) {
                throw new e(iPosition + iD, this.f4177a.limit());
            }
            this.f4177a.position(iPosition + iD);
            a(str, this.f4177a);
            int iPosition2 = this.f4177a.position();
            this.f4177a.position(iPosition);
            c((iPosition2 - iPosition) - iD);
            this.f4177a.position(iPosition2);
        } catch (BufferOverflowException e2) {
            e eVar = new e(this.f4177a.position(), this.f4177a.limit());
            eVar.initCause(e2);
            throw eVar;
        }
    }

    public final void a(int i, boolean z) throws IOException {
        c(i, 0);
        byte b2 = z ? (byte) 1 : (byte) 0;
        if (!this.f4177a.hasRemaining()) {
            throw new e(this.f4177a.position(), this.f4177a.limit());
        }
        this.f4177a.put(b2);
    }

    public final void a(m mVar) throws IOException {
        c(mVar.c());
        mVar.a(this);
    }

    public final void b(int i, long j) throws IOException {
        c(i, 0);
        b(j);
    }

    public final void b(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.f4177a.remaining() < length) {
            throw new e(this.f4177a.position(), this.f4177a.limit());
        }
        this.f4177a.put(bArr, 0, length);
    }

    public final void c(int i) throws IOException {
        while ((i & (-128)) != 0) {
            e((i & 127) | 128);
            i >>>= 7;
        }
        e(i);
    }

    public final void c(int i, int i2) throws IOException {
        c((i << 3) | i2);
    }
}
