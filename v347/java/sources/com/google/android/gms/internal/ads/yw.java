package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class yw {
    private static long a(byte[] bArr, int i) {
        return ((long) ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24))) & 4294967295L;
    }

    private static long a(byte[] bArr, int i, int i2) {
        return (a(bArr, i) >> i2) & 67108863;
    }

    private static void a(byte[] bArr, long j, int i) {
        int i2 = 0;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & j);
            i2++;
            j >>= 8;
        }
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long jA = 67108863 & a(bArr, 0, 0);
        long jA2 = 67108611 & a(bArr, 3, 2);
        long jA3 = 67092735 & a(bArr, 6, 4);
        long jA4 = 66076671 & a(bArr, 9, 6);
        long jA5 = 1048575 & a(bArr, 12, 8);
        long j6 = jA2 * 5;
        long j7 = jA3 * 5;
        long j8 = jA4 * 5;
        long j9 = jA5 * 5;
        byte[] bArr3 = new byte[17];
        for (int i = 0; i < bArr2.length; i += 16) {
            int iMin = Math.min(16, bArr2.length - i);
            System.arraycopy(bArr2, i, bArr3, 0, iMin);
            bArr3[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr3, iMin + 1, 17, (byte) 0);
            }
            long jA6 = j + a(bArr3, 0, 0);
            long jA7 = j2 + a(bArr3, 3, 2);
            long jA8 = j3 + a(bArr3, 6, 4);
            long jA9 = j4 + a(bArr3, 9, 6);
            long jA10 = j5 + (a(bArr3, 12, 8) | ((long) (bArr3[16] << 24)));
            long j10 = (jA6 * jA) + (jA7 * j9) + (jA8 * j8) + (jA9 * j7) + (jA10 * j6);
            long j11 = (jA6 * jA2) + (jA7 * jA) + (jA8 * j9) + (jA9 * j8) + (jA10 * j7);
            long j12 = (jA6 * jA3) + (jA7 * jA2) + (jA8 * jA) + (jA9 * j9) + (jA10 * j8);
            long j13 = (jA6 * jA4) + (jA7 * jA3) + (jA8 * jA2) + (jA9 * jA) + (jA10 * j9);
            long j14 = jA8 * jA3;
            long j15 = jA9 * jA2;
            long j16 = jA10 * jA;
            long j17 = j16 + j15 + j14 + (jA7 * jA4) + (jA6 * jA5);
            long j18 = j10 & 67108863;
            long j19 = (j10 >> 26) + j11;
            long j20 = j19 & 67108863;
            long j21 = j12 + (j19 >> 26);
            j3 = 67108863 & j21;
            long j22 = j13 + (j21 >> 26);
            long j23 = j22 >> 26;
            j4 = j22 & 67108863;
            long j24 = j17 + j23;
            long j25 = j24 >> 26;
            j5 = j24 & 67108863;
            long j26 = j18 + (j25 * 5);
            j = 67108863 & j26;
            j2 = j20 + (j26 >> 26);
        }
        long j27 = (j2 >> 26) + j3;
        long j28 = j27 >> 26;
        long j29 = j27 & 67108863;
        long j30 = j4 + j28;
        long j31 = j30 >> 26;
        long j32 = j30 & 67108863;
        long j33 = j5 + j31;
        long j34 = j33 >> 26;
        long j35 = j33 & 67108863;
        long j36 = (j34 * 5) + j;
        long j37 = j36 >> 26;
        long j38 = j36 & 67108863;
        long j39 = (j2 & 67108863) + j37;
        long j40 = 5 + j38;
        long j41 = (j40 >> 26) + j39;
        long j42 = (j41 >> 26) + j29;
        long j43 = (j42 >> 26) + j32;
        long j44 = ((j43 >> 26) + j35) - 67108864;
        long j45 = j44 >> 63;
        long j46 = j38 & j45;
        long j47 = j39 & j45;
        long j48 = j29 & j45;
        long j49 = j32 & j45;
        long j50 = j35 & j45;
        long j51 = j45 ^ (-1);
        long j52 = j47 | (j41 & 67108863 & j51);
        long j53 = j48 | (j42 & 67108863 & j51);
        long j54 = j49 | (j43 & 67108863 & j51);
        long j55 = (j46 | (j40 & 67108863 & j51) | (j52 << 26)) & 4294967295L;
        long j56 = ((j52 >> 6) | (j53 << 20)) & 4294967295L;
        long j57 = ((j53 >> 12) | (j54 << 14)) & 4294967295L;
        long j58 = (((j50 | (j44 & j51)) << 8) | (j54 >> 18)) & 4294967295L;
        long jA11 = a(bArr, 16) + j55;
        long j59 = 4294967295L & jA11;
        long jA12 = (jA11 >> 32) + j56 + a(bArr, 20);
        long j60 = 4294967295L & jA12;
        long jA13 = j57 + a(bArr, 24) + (jA12 >> 32);
        long j61 = 4294967295L & jA13;
        long jA14 = ((jA13 >> 32) + j58 + a(bArr, 28)) & 4294967295L;
        byte[] bArr4 = new byte[16];
        a(bArr4, j59, 0);
        a(bArr4, j60, 4);
        a(bArr4, j61, 8);
        a(bArr4, jA14, 12);
        return bArr4;
    }
}
