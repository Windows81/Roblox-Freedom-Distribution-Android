package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aei extends aef {
    aei() {
    }

    private static int a(byte[] bArr, int i, long j, int i2) {
        switch (i2) {
            case 0:
                return aee.b(i);
            case 1:
                return aee.b(i, aec.a(bArr, j));
            case 2:
                return aee.b(i, aec.a(bArr, j), aec.a(bArr, 1 + j));
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b4, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.aef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aei.a(int, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.ads.aef
    final int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        long j;
        long j2 = i;
        long j3 = j2 + ((long) i2);
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charSequence.charAt(length - 1)).append(" at index ").append(i + i2).toString());
        }
        int i3 = 0;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt >= 128) {
                break;
            }
            aec.a(bArr, j2, (byte) cCharAt);
            i3++;
            j2 = 1 + j2;
        }
        if (i3 == length) {
            return (int) j2;
        }
        long j4 = j2;
        while (i3 < length) {
            char cCharAt2 = charSequence.charAt(i3);
            if (cCharAt2 < 128 && j4 < j3) {
                j = 1 + j4;
                aec.a(bArr, j4, (byte) cCharAt2);
            } else if (cCharAt2 < 2048 && j4 <= j3 - 2) {
                long j5 = j4 + 1;
                aec.a(bArr, j4, (byte) ((cCharAt2 >>> 6) | 960));
                j = 1 + j5;
                aec.a(bArr, j5, (byte) ((cCharAt2 & '?') | 128));
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j4 > j3 - 3) {
                    if (j4 > j3 - 4) {
                        if (55296 > cCharAt2 || cCharAt2 > 57343 || (i3 + 1 != length && Character.isSurrogatePair(cCharAt2, charSequence.charAt(i3 + 1)))) {
                            throw new ArrayIndexOutOfBoundsException(new StringBuilder(46).append("Failed writing ").append(cCharAt2).append(" at index ").append(j4).toString());
                        }
                        throw new aeh(i3, length);
                    }
                    if (i3 + 1 != length) {
                        i3++;
                        char cCharAt3 = charSequence.charAt(i3);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            long j6 = 1 + j4;
                            aec.a(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                            long j7 = 1 + j6;
                            aec.a(bArr, j6, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j8 = j7 + 1;
                            aec.a(bArr, j7, (byte) (((codePoint >>> 6) & 63) | 128));
                            j = 1 + j8;
                            aec.a(bArr, j8, (byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new aeh(i3 - 1, length);
                }
                long j9 = 1 + j4;
                aec.a(bArr, j4, (byte) ((cCharAt2 >>> '\f') | 480));
                long j10 = 1 + j9;
                aec.a(bArr, j9, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                j = 1 + j10;
                aec.a(bArr, j10, (byte) ((cCharAt2 & '?') | 128));
            }
            i3++;
            j4 = j;
        }
        return (int) j4;
    }
}
