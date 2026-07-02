package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zr {
    static int a(int i, byte[] bArr, int i2, int i3, abi<?> abiVar, zs zsVar) {
        abe abeVar = (abe) abiVar;
        int iA = a(bArr, i2, zsVar);
        abeVar.c(zsVar.f5744a);
        while (iA < i3) {
            int iA2 = a(bArr, iA, zsVar);
            if (i != zsVar.f5744a) {
                break;
            }
            iA = a(bArr, iA2, zsVar);
            abeVar.c(zsVar.f5744a);
        }
        return iA;
    }

    static int a(int i, byte[] bArr, int i2, int i3, adx adxVar, zs zsVar) throws IOException {
        int i4;
        if ((i >>> 3) == 0) {
            throw abj.d();
        }
        switch (i & 7) {
            case 0:
                int iB = b(bArr, i2, zsVar);
                adxVar.a(i, Long.valueOf(zsVar.f5745b));
                return iB;
            case 1:
                adxVar.a(i, Long.valueOf(b(bArr, i2)));
                return i2 + 8;
            case 2:
                int iA = a(bArr, i2, zsVar);
                int i5 = zsVar.f5744a;
                if (i5 == 0) {
                    adxVar.a(i, zv.f5750a);
                } else {
                    adxVar.a(i, zv.a(bArr, iA, i5));
                }
                return iA + i5;
            case 3:
                adx adxVarB = adx.b();
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                int iA2 = i2;
                while (iA2 < i3) {
                    iA2 = a(bArr, iA2, zsVar);
                    i7 = zsVar.f5744a;
                    if (i7 == i6) {
                        int i8 = i7;
                        i4 = iA2;
                        if (i4 <= i3 || i8 != i6) {
                            throw abj.g();
                        }
                        adxVar.a(i, adxVarB);
                        return i4;
                    }
                    iA2 = a(i7, bArr, iA2, i3, adxVarB, zsVar);
                }
                int i82 = i7;
                i4 = iA2;
                if (i4 <= i3) {
                }
                throw abj.g();
            case 4:
            default:
                throw abj.d();
            case 5:
                adxVar.a(i, Integer.valueOf(a(bArr, i2)));
                return i2 + 4;
        }
    }

    static int a(int i, byte[] bArr, int i2, int i3, zs zsVar) throws abj {
        int i4;
        if ((i >>> 3) == 0) {
            throw abj.d();
        }
        switch (i & 7) {
            case 0:
                return b(bArr, i2, zsVar);
            case 1:
                return i2 + 8;
            case 2:
                return a(bArr, i2, zsVar) + zsVar.f5744a;
            case 3:
                int i5 = (i & (-8)) | 4;
                int i6 = 0;
                int iA = i2;
                while (iA < i3) {
                    iA = a(bArr, iA, zsVar);
                    i6 = zsVar.f5744a;
                    if (i6 == i5) {
                        int i7 = i6;
                        i4 = iA;
                        if (i4 <= i3 || i7 != i5) {
                            throw abj.g();
                        }
                        return i4;
                    }
                    iA = a(i6, bArr, iA, i3, zsVar);
                }
                int i72 = i6;
                i4 = iA;
                if (i4 <= i3) {
                }
                throw abj.g();
            case 4:
            default:
                throw abj.d();
            case 5:
                return i2 + 4;
        }
    }

    static int a(int i, byte[] bArr, int i2, zs zsVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            zsVar.f5744a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = ((b2 & 127) << 7) | i3;
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            zsVar.f5744a = (b3 << 14) | i5;
            return i6;
        }
        int i7 = ((b3 & 127) << 14) | i5;
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            zsVar.f5744a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = ((b4 & 127) << 21) | i7;
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            zsVar.f5744a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = ((b5 & 127) << 28) | i9;
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zsVar.f5744a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int a(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    static int a(byte[] bArr, int i, abi<?> abiVar, zs zsVar) throws IOException {
        abe abeVar = (abe) abiVar;
        int iA = a(bArr, i, zsVar);
        int i2 = zsVar.f5744a + iA;
        while (iA < i2) {
            iA = a(bArr, iA, zsVar);
            abeVar.c(zsVar.f5744a);
        }
        if (iA != i2) {
            throw abj.a();
        }
        return iA;
    }

    static int a(byte[] bArr, int i, zs zsVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return a(b2, bArr, i2, zsVar);
        }
        zsVar.f5744a = b2;
        return i2;
    }

    static int b(byte[] bArr, int i, zs zsVar) {
        int i2 = 7;
        int i3 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zsVar.f5745b = j;
        } else {
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            long j2 = (j & 127) | (((long) (b2 & 127)) << 7);
            i3 = i4;
            long j3 = j2;
            byte b3 = b2;
            while (b3 < 0) {
                int i5 = i3 + 1;
                b3 = bArr[i3];
                int i6 = i2 + 7;
                j3 |= ((long) (b3 & 127)) << i6;
                i2 = i6;
                i3 = i5;
            }
            zsVar.f5745b = j3;
        }
        return i3;
    }

    static long b(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    static double c(byte[] bArr, int i) {
        return Double.longBitsToDouble(b(bArr, i));
    }

    static int c(byte[] bArr, int i, zs zsVar) {
        int iA = a(bArr, i, zsVar);
        int i2 = zsVar.f5744a;
        if (i2 == 0) {
            zsVar.f5746c = "";
            return iA;
        }
        zsVar.f5746c = new String(bArr, iA, i2, abf.f3754a);
        return iA + i2;
    }

    static float d(byte[] bArr, int i) {
        return Float.intBitsToFloat(a(bArr, i));
    }

    static int d(byte[] bArr, int i, zs zsVar) throws IOException {
        int iA = a(bArr, i, zsVar);
        int i2 = zsVar.f5744a;
        if (i2 == 0) {
            zsVar.f5746c = "";
            return iA;
        }
        if (!aee.a(bArr, iA, iA + i2)) {
            throw abj.h();
        }
        zsVar.f5746c = new String(bArr, iA, i2, abf.f3754a);
        return iA + i2;
    }

    static int e(byte[] bArr, int i, zs zsVar) {
        int iA = a(bArr, i, zsVar);
        int i2 = zsVar.f5744a;
        if (i2 == 0) {
            zsVar.f5746c = zv.f5750a;
            return iA;
        }
        zsVar.f5746c = zv.a(bArr, iA, i2);
        return iA + i2;
    }
}
