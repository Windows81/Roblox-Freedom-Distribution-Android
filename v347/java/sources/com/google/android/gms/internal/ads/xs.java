package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class xs implements yu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecretKeySpec f5675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5677c = yj.f5708a.a("AES/CTR/NoPadding").getBlockSize();

    public xs(byte[] bArr, int i) throws GeneralSecurityException {
        this.f5675a = new SecretKeySpec(bArr, "AES");
        if (i < 12 || i > this.f5677c) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f5676b = i;
    }

    @Override // com.google.android.gms.internal.ads.yu
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length > Integer.MAX_VALUE - this.f5676b) {
            throw new GeneralSecurityException(new StringBuilder(43).append("plaintext length can not exceed ").append(Integer.MAX_VALUE - this.f5676b).toString());
        }
        byte[] bArr2 = new byte[this.f5676b + bArr.length];
        byte[] bArrA = yx.a(this.f5676b);
        System.arraycopy(bArrA, 0, bArr2, 0, this.f5676b);
        int length = bArr.length;
        int i = this.f5676b;
        Cipher cipherA = yj.f5708a.a("AES/CTR/NoPadding");
        byte[] bArr3 = new byte[this.f5677c];
        System.arraycopy(bArrA, 0, bArr3, 0, this.f5676b);
        cipherA.init(1, this.f5675a, new IvParameterSpec(bArr3));
        if (cipherA.doFinal(bArr, 0, length, bArr2, i) != length) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        return bArr2;
    }
}
