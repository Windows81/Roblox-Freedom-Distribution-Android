package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class yi implements tf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final yu f5705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final tr f5706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5707c;

    public yi(yu yuVar, tr trVar, int i) {
        this.f5705a = yuVar;
        this.f5706b = trVar;
        this.f5707c = i;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrA = this.f5705a.a(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return xv.a(bArrA, this.f5706b.a(xv.a(bArr2, bArrA, Arrays.copyOf(ByteBuffer.allocate(8).putLong(8 * ((long) bArr2.length)).array(), 8))));
    }
}
