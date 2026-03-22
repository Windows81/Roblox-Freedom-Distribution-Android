package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class yz implements yu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int[] f5718a = a(ByteBuffer.wrap(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107}));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final yt f5719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5720c;

    yz(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f5719b = yt.a(bArr);
        this.f5720c = i;
    }

    static int a(int i, int i2) {
        return (i << i2) | (i >>> (-i2));
    }

    static int[] a(ByteBuffer byteBuffer) {
        IntBuffer intBufferAsIntBuffer = byteBuffer.order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[intBufferAsIntBuffer.remaining()];
        intBufferAsIntBuffer.get(iArr);
        return iArr;
    }

    abstract int a();

    abstract ByteBuffer a(byte[] bArr, int i);

    final void a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - a() < bArr.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        byte[] bArrA = yx.a(a());
        byteBuffer.put(bArrA);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int iRemaining = byteBufferWrap.remaining();
        int i = (iRemaining / 64) + 1;
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBufferA = a(bArrA, this.f5720c + i2);
            if (i2 == i - 1) {
                xv.a(byteBuffer, byteBufferWrap, byteBufferA, iRemaining % 64);
            } else {
                xv.a(byteBuffer, byteBufferWrap, byteBufferA, 64);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yu
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        a();
        if (length > 2147483635) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a() + bArr.length);
        a(byteBufferAllocate, bArr);
        return byteBufferAllocate.array();
    }
}
