package com.roblox.client.purchase.google.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f6699a = !a.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f6700b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f6701c = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f6702d = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f6703e = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    private a() {
    }

    private static int a(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3) {
        int i3 = i + 2;
        if (bArr[i3] == 61) {
            bArr2[i2] = (byte) ((((bArr3[bArr[i + 1]] << 24) >>> 12) | ((bArr3[bArr[i]] << 24) >>> 6)) >>> 16);
            return 1;
        }
        int i4 = i + 3;
        if (bArr[i4] == 61) {
            int i5 = ((bArr3[bArr[i3]] << 24) >>> 18) | ((bArr3[bArr[i + 1]] << 24) >>> 12) | ((bArr3[bArr[i]] << 24) >>> 6);
            bArr2[i2] = (byte) (i5 >>> 16);
            bArr2[i2 + 1] = (byte) (i5 >>> 8);
            return 2;
        }
        int i6 = ((bArr3[bArr[i4]] << 24) >>> 24) | ((bArr3[bArr[i + 1]] << 24) >>> 12) | ((bArr3[bArr[i]] << 24) >>> 6) | ((bArr3[bArr[i3]] << 24) >>> 18);
        bArr2[i2] = (byte) (i6 >> 16);
        bArr2[i2 + 1] = (byte) (i6 >> 8);
        bArr2[i2 + 2] = (byte) i6;
        return 3;
    }

    public static byte[] a(String str) throws b {
        byte[] bytes = str.getBytes();
        return a(bytes, 0, bytes.length);
    }

    public static byte[] a(byte[] bArr, int i, int i2) throws b {
        return a(bArr, i, i2, f6702d);
    }

    public static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2) throws b {
        byte[] bArr3 = new byte[((i2 * 3) / 4) + 2];
        byte[] bArr4 = new byte[4];
        int i3 = 0;
        int i4 = 0;
        int iA = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i5 = i3 + i;
            byte b2 = (byte) (bArr[i5] & 127);
            byte b3 = bArr2[b2];
            if (b3 < -5) {
                throw new b("Bad Base64 input character at " + i3 + ": " + ((int) bArr[i5]) + "(decimal)");
            }
            if (b3 >= -1) {
                if (b2 == 61) {
                    int i6 = i2 - i3;
                    byte b4 = (byte) (bArr[(i2 - 1) + i] & 127);
                    if (i4 == 0 || i4 == 1) {
                        throw new b("invalid padding byte '=' at byte offset " + i3);
                    }
                    if ((i4 == 3 && i6 > 2) || (i4 == 4 && i6 > 1)) {
                        throw new b("padding byte '=' falsely signals end of encoded value at offset " + i3);
                    }
                    if (b4 != 61 && b4 != 10) {
                        throw new b("encoded value has invalid trailing byte");
                    }
                } else {
                    int i7 = i4 + 1;
                    bArr4[i4] = b2;
                    if (i7 == 4) {
                        iA += a(bArr4, 0, bArr3, iA, bArr2);
                        i4 = 0;
                    } else {
                        i4 = i7;
                    }
                }
            }
            i3++;
        }
        if (i4 != 0) {
            if (i4 == 1) {
                throw new b("single trailing character at offset " + (i2 - 1));
            }
            bArr4[i4] = 61;
            iA += a(bArr4, 0, bArr3, iA, bArr2);
        }
        byte[] bArr5 = new byte[iA];
        System.arraycopy(bArr3, 0, bArr5, 0, iA);
        return bArr5;
    }
}
