package c;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f2125a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f2126b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    public static String a(byte[] bArr) {
        return a(bArr, f2125a);
    }

    private static String a(byte[] bArr, byte[] bArr2) {
        int i = 0;
        byte[] bArr3 = new byte[((bArr.length + 2) * 4) / 3];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            bArr3[i] = bArr2[(bArr[i2] & 255) >> 2];
            int i4 = i3 + 1;
            bArr3[i3] = bArr2[((bArr[i2] & 3) << 4) | ((bArr[i2 + 1] & 255) >> 4)];
            int i5 = i4 + 1;
            bArr3[i4] = bArr2[((bArr[i2 + 1] & 15) << 2) | ((bArr[i2 + 2] & 255) >> 6)];
            bArr3[i5] = bArr2[bArr[i2 + 2] & 63];
            i2 += 3;
            i = i5 + 1;
        }
        switch (bArr.length % 3) {
            case 1:
                int i6 = i + 1;
                bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
                int i7 = i6 + 1;
                bArr3[i6] = bArr2[(bArr[length] & 3) << 4];
                int i8 = i7 + 1;
                bArr3[i7] = 61;
                i = i8 + 1;
                bArr3[i8] = 61;
                break;
            case 2:
                int i9 = i + 1;
                bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
                int i10 = i9 + 1;
                bArr3[i9] = bArr2[((bArr[length] & 3) << 4) | ((bArr[length + 1] & 255) >> 4)];
                int i11 = i10 + 1;
                bArr3[i10] = bArr2[(bArr[length + 1] & 15) << 2];
                i = i11 + 1;
                bArr3[i11] = 61;
                break;
        }
        try {
            return new String(bArr3, 0, i, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
