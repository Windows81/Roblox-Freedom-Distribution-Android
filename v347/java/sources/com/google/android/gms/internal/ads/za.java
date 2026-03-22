package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class za implements tf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f5721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final yz f5722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final yz f5723c;

    za(byte[] bArr) throws InvalidKeyException {
        this.f5721a = (byte[]) bArr.clone();
        this.f5722b = a(bArr, 1);
        this.f5723c = a(bArr, 0);
    }

    abstract yz a(byte[] bArr, int i) throws InvalidKeyException;

    @Override // com.google.android.gms.internal.ads.tf
    public byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        this.f5722b.a();
        if (length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + this.f5722b.a() + 16);
        if (byteBufferAllocate.remaining() < bArr.length + this.f5722b.a() + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int iPosition = byteBufferAllocate.position();
        this.f5722b.a(byteBufferAllocate, bArr);
        byteBufferAllocate.position(iPosition);
        byte[] bArr3 = new byte[this.f5722b.a()];
        byteBufferAllocate.get(bArr3);
        byteBufferAllocate.limit(byteBufferAllocate.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr4 = new byte[32];
        this.f5723c.a(bArr3, 0).get(bArr4);
        int length2 = bArr2.length % 16 == 0 ? bArr2.length : (bArr2.length + 16) - (bArr2.length % 16);
        int iRemaining = byteBufferAllocate.remaining();
        int i = iRemaining % 16 == 0 ? iRemaining : (iRemaining + 16) - (iRemaining % 16);
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(length2 + i + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr2);
        byteBufferOrder.position(length2);
        byteBufferOrder.put(byteBufferAllocate);
        byteBufferOrder.position(length2 + i);
        byteBufferOrder.putLong(bArr2.length);
        byteBufferOrder.putLong(iRemaining);
        byte[] bArrA = yw.a(bArr4, byteBufferOrder.array());
        byteBufferAllocate.limit(byteBufferAllocate.limit() + 16);
        byteBufferAllocate.put(bArrA);
        return byteBufferAllocate.array();
    }
}
