package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class alm extends alh {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MessageDigest f4176b;

    @Override // com.google.android.gms.internal.ads.alh
    public final byte[] a(String str) {
        byte[] bArrArray;
        byte[] bArr;
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length == 1) {
            int iA = all.a(strArrSplit[0]);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(iA);
            bArrArray = byteBufferAllocate.array();
        } else if (strArrSplit.length < 5) {
            byte[] bArr2 = new byte[strArrSplit.length << 1];
            for (int i = 0; i < strArrSplit.length; i++) {
                int iA2 = all.a(strArrSplit[i]);
                int i2 = (iA2 >> 16) ^ (65535 & iA2);
                byte[] bArr3 = {(byte) i2, (byte) (i2 >> 8)};
                bArr2[i << 1] = bArr3[0];
                bArr2[(i << 1) + 1] = bArr3[1];
            }
            bArrArray = bArr2;
        } else {
            bArrArray = new byte[strArrSplit.length];
            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                int iA3 = all.a(strArrSplit[i3]);
                bArrArray[i3] = (byte) ((iA3 >> 24) ^ (((iA3 & 255) ^ ((iA3 >> 8) & 255)) ^ ((iA3 >> 16) & 255)));
            }
        }
        this.f4176b = a();
        synchronized (this.f4169a) {
            if (this.f4176b == null) {
                bArr = new byte[0];
            } else {
                this.f4176b.reset();
                this.f4176b.update(bArrArray);
                byte[] bArrDigest = this.f4176b.digest();
                bArr = new byte[bArrDigest.length > 4 ? 4 : bArrDigest.length];
                System.arraycopy(bArrDigest, 0, bArr, 0, bArr.length);
            }
        }
        return bArr;
    }
}
