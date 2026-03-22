package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f3882a;

    private aet(ByteBuffer byteBuffer) {
        this.f3882a = byteBuffer;
        this.f3882a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private aet(byte[] bArr, int i, int i2) {
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
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    private static int a(CharSequence charSequence) {
        int i;
        int i2 = 0;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                i = i4;
                break;
            }
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i4 += (127 - cCharAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char cCharAt2 = charSequence.charAt(i3);
                    if (cCharAt2 < 2048) {
                        i2 += (127 - cCharAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i = i4 + i2;
            }
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(((long) i) + 4294967296L).toString());
    }

    public static int a(String str) {
        int iA = a((CharSequence) str);
        return iA + d(iA);
    }

    public static aet a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static aet a(byte[] bArr, int i, int i2) {
        return new aet(bArr, 0, i2);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int i3 = 0;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (i3 < length) {
                char cCharAt = charSequence.charAt(i3);
                if (cCharAt < 128) {
                    byteBuffer.put((byte) cCharAt);
                } else if (cCharAt < 2048) {
                    byteBuffer.put((byte) ((cCharAt >>> 6) | 960));
                    byteBuffer.put((byte) ((cCharAt & '?') | 128));
                } else {
                    if (cCharAt >= 55296 && 57343 >= cCharAt) {
                        if (i3 + 1 != charSequence.length()) {
                            i3++;
                            char cCharAt2 = charSequence.charAt(i3);
                            if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                                int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                                byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint & 63) | 128));
                            }
                        }
                        throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3 - 1).toString());
                    }
                    byteBuffer.put((byte) ((cCharAt >>> '\f') | 480));
                    byteBuffer.put((byte) (((cCharAt >>> 6) & 63) | 128));
                    byteBuffer.put((byte) ((cCharAt & '?') | 128));
                }
                i3++;
            }
            return;
        }
        try {
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            int length2 = charSequence.length();
            int i4 = iArrayOffset + iRemaining;
            while (i3 < length2 && i3 + iArrayOffset < i4) {
                char cCharAt3 = charSequence.charAt(i3);
                if (cCharAt3 >= 128) {
                    break;
                }
                bArrArray[iArrayOffset + i3] = (byte) cCharAt3;
                i3++;
            }
            if (i3 == length2) {
                i = iArrayOffset + length2;
            } else {
                int i5 = iArrayOffset + i3;
                while (i3 < length2) {
                    char cCharAt4 = charSequence.charAt(i3);
                    if (cCharAt4 < 128 && i5 < i4) {
                        i2 = i5 + 1;
                        bArrArray[i5] = (byte) cCharAt4;
                    } else if (cCharAt4 < 2048 && i5 <= i4 - 2) {
                        int i6 = i5 + 1;
                        bArrArray[i5] = (byte) ((cCharAt4 >>> 6) | 960);
                        i2 = i6 + 1;
                        bArrArray[i6] = (byte) ((cCharAt4 & '?') | 128);
                    } else {
                        if ((cCharAt4 >= 55296 && 57343 >= cCharAt4) || i5 > i4 - 3) {
                            if (i5 > i4 - 4) {
                                throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(cCharAt4).append(" at index ").append(i5).toString());
                            }
                            if (i3 + 1 != charSequence.length()) {
                                i3++;
                                char cCharAt5 = charSequence.charAt(i3);
                                if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                                    int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                                    int i7 = i5 + 1;
                                    bArrArray[i5] = (byte) ((codePoint2 >>> 18) | 240);
                                    int i8 = i7 + 1;
                                    bArrArray[i7] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                    int i9 = i8 + 1;
                                    bArrArray[i8] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                    i2 = i9 + 1;
                                    bArrArray[i9] = (byte) ((codePoint2 & 63) | 128);
                                }
                            }
                            throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3 - 1).toString());
                        }
                        int i10 = i5 + 1;
                        bArrArray[i5] = (byte) ((cCharAt4 >>> '\f') | 480);
                        int i11 = i10 + 1;
                        bArrArray[i10] = (byte) (((cCharAt4 >>> 6) & 63) | 128);
                        i2 = i11 + 1;
                        bArrArray[i11] = (byte) ((cCharAt4 & '?') | 128);
                    }
                    i3++;
                    i5 = i2;
                }
                i = i5;
            }
            byteBuffer.position(i - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int b(int i) {
        return d(i << 3);
    }

    public static int b(int i, int i2) {
        return b(i) + a(i2);
    }

    public static int b(int i, afb afbVar) {
        int iB = b(i);
        int iD = afbVar.d();
        return iB + iD + d(iD);
    }

    public static int b(int i, String str) {
        return b(i) + a(str);
    }

    public static int b(int i, byte[] bArr) {
        return b(i) + b(bArr);
    }

    public static int b(byte[] bArr) {
        return d(bArr.length) + bArr.length;
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
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static int d(int i, long j) {
        return b(i) + a(j);
    }

    private final void e(int i) throws IOException {
        byte b2 = (byte) i;
        if (!this.f3882a.hasRemaining()) {
            throw new aeu(this.f3882a.position(), this.f3882a.limit());
        }
        this.f3882a.put(b2);
    }

    public final void a() {
        if (this.f3882a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f3882a.remaining())));
        }
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

    public final void a(int i, afb afbVar) throws IOException {
        c(i, 2);
        if (afbVar.Z < 0) {
            afbVar.d();
        }
        c(afbVar.Z);
        afbVar.a(this);
    }

    public final void a(int i, String str) throws IOException {
        c(i, 2);
        try {
            int iD = d(str.length());
            if (iD != d(str.length() * 3)) {
                c(a((CharSequence) str));
                a(str, this.f3882a);
                return;
            }
            int iPosition = this.f3882a.position();
            if (this.f3882a.remaining() < iD) {
                throw new aeu(iD + iPosition, this.f3882a.limit());
            }
            this.f3882a.position(iPosition + iD);
            a(str, this.f3882a);
            int iPosition2 = this.f3882a.position();
            this.f3882a.position(iPosition);
            c((iPosition2 - iPosition) - iD);
            this.f3882a.position(iPosition2);
        } catch (BufferOverflowException e) {
            aeu aeuVar = new aeu(this.f3882a.position(), this.f3882a.limit());
            aeuVar.initCause(e);
            throw aeuVar;
        }
    }

    public final void a(int i, boolean z) throws IOException {
        c(i, 0);
        byte b2 = (byte) (z ? 1 : 0);
        if (!this.f3882a.hasRemaining()) {
            throw new aeu(this.f3882a.position(), this.f3882a.limit());
        }
        this.f3882a.put(b2);
    }

    public final void a(int i, byte[] bArr) throws IOException {
        c(i, 2);
        c(bArr.length);
        c(bArr);
    }

    public final void b(int i, long j) throws IOException {
        c(i, 0);
        b(j);
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

    public final void c(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.f3882a.remaining() < length) {
            throw new aeu(this.f3882a.position(), this.f3882a.limit());
        }
        this.f3882a.put(bArr, 0, length);
    }
}
