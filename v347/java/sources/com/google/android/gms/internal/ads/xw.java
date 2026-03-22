package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class xw extends yz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f5683c = new byte[16];

    xw(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    private static void a(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = a(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = a(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = a(iArr[i4] ^ iArr[i], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = a(iArr[i2] ^ iArr[i3], 7);
    }

    @Override // com.google.android.gms.internal.ads.yz
    final int a() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.yz
    final ByteBuffer a(byte[] bArr, int i) {
        int[] iArr = new int[16];
        System.arraycopy(yz.f5718a, 0, iArr, 0, f5718a.length);
        int[] iArrA = a(ByteBuffer.wrap(this.f5719b.a()));
        System.arraycopy(iArrA, 0, iArr, 4, iArrA.length);
        iArr[12] = i;
        System.arraycopy(a(ByteBuffer.wrap(bArr)), 0, iArr, 13, 3);
        int[] iArr2 = (int[]) iArr.clone();
        for (int i2 = 0; i2 < 10; i2++) {
            a(iArr2, 0, 4, 8, 12);
            a(iArr2, 1, 5, 9, 13);
            a(iArr2, 2, 6, 10, 14);
            a(iArr2, 3, 7, 11, 15);
            a(iArr2, 0, 5, 10, 15);
            a(iArr2, 1, 6, 11, 12);
            a(iArr2, 2, 7, 8, 13);
            a(iArr2, 3, 4, 9, 14);
        }
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = iArr[i3] + iArr2[i3];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArr, 0, 16);
        return byteBufferOrder;
    }
}
