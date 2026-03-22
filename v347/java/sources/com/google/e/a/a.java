package com.google.e.a;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f6152a;

    private a(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private a(ByteBuffer byteBuffer) {
        this.f6152a = byteBuffer;
        this.f6152a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static a a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static a a(byte[] bArr, int i, int i2) {
        return new a(bArr, i, i2);
    }

    public void a(int i, long j) throws IOException {
        a(i, 0);
        a(j);
    }

    public void a(int i, String str) throws IOException {
        a(i, 2);
        a(str);
    }

    public void a(long j) throws IOException {
        b(j);
    }

    public void a(String str) throws IOException {
        try {
            int iC = c(str.length());
            if (iC == c(str.length() * 3)) {
                int iPosition = this.f6152a.position();
                if (this.f6152a.remaining() < iC) {
                    throw new C0090a(iC + iPosition, this.f6152a.limit());
                }
                this.f6152a.position(iPosition + iC);
                a(str, this.f6152a);
                int iPosition2 = this.f6152a.position();
                this.f6152a.position(iPosition);
                b((iPosition2 - iPosition) - iC);
                this.f6152a.position(iPosition2);
                return;
            }
            b(a((CharSequence) str));
            a(str, this.f6152a);
        } catch (BufferOverflowException e) {
            C0090a c0090a = new C0090a(this.f6152a.position(), this.f6152a.limit());
            c0090a.initCause(e);
            throw c0090a;
        }
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int iA = length;
        while (true) {
            if (i2 < length) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt < 2048) {
                    i2++;
                    iA = ((127 - cCharAt) >>> 31) + iA;
                } else {
                    iA += a(charSequence, i2);
                    break;
                }
            } else {
                break;
            }
        }
        if (iA < length) {
            throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(((long) iA) + 4294967296L).toString());
        }
        return iA;
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        }
        b(charSequence, byteBuffer);
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < 128) {
                byteBuffer.put((byte) cCharAt);
            } else if (cCharAt < 2048) {
                byteBuffer.put((byte) ((cCharAt >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            } else if (cCharAt < 55296 || 57343 < cCharAt) {
                byteBuffer.put((byte) ((cCharAt >>> '\f') | 480));
                byteBuffer.put((byte) (((cCharAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            } else {
                if (i + 1 != charSequence.length()) {
                    i++;
                    char cCharAt2 = charSequence.charAt(i);
                    if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                        int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                        byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint & 63) | 128));
                    }
                }
                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i - 1).toString());
            }
            i++;
        }
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char cCharAt = charSequence.charAt(i4);
            if (cCharAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) cCharAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char cCharAt2 = charSequence.charAt(i4);
            if (cCharAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) cCharAt2;
            } else if (cCharAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((cCharAt2 & '?') | 128);
            } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && i6 <= i5 - 3) {
                int i8 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i3 = i9 + 1;
                bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if (i6 <= i5 - 4) {
                    if (i4 + 1 != charSequence.length()) {
                        i4++;
                        char cCharAt3 = charSequence.charAt(i4);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            int i10 = i6 + 1;
                            bArr[i6] = (byte) ((codePoint >>> 18) | 240);
                            int i11 = i10 + 1;
                            bArr[i10] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i12 = i11 + 1;
                            bArr[i11] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i12 + 1;
                            bArr[i12] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i4 - 1).toString());
                }
                throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(cCharAt2).append(" at index ").append(i6).toString());
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    public int a() {
        return this.f6152a.remaining();
    }

    /* JADX INFO: renamed from: com.google.e.a.a$a, reason: collision with other inner class name */
    public static class C0090a extends IOException {
        C0090a(int i, int i2) {
            super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(i2).append(").").toString());
        }
    }

    public void a(byte b2) throws IOException {
        if (!this.f6152a.hasRemaining()) {
            throw new C0090a(this.f6152a.position(), this.f6152a.limit());
        }
        this.f6152a.put(b2);
    }

    public void a(int i) throws IOException {
        a((byte) i);
    }

    public void a(int i, int i2) throws IOException {
        b(b.a(i, i2));
    }

    public void b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            a((i & 127) | 128);
            i >>>= 7;
        }
        a(i);
    }

    public static int c(int i) {
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

    public void b(long j) throws IOException {
        while (((-128) & j) != 0) {
            a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        a((int) j);
    }
}
