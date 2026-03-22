package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class xu implements tf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecretKey f5682a;

    public xu(byte[] bArr) {
        this.f5682a = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + 12 + 16];
        byte[] bArrA = yx.a(12);
        System.arraycopy(bArrA, 0, bArr3, 0, 12);
        Cipher cipherA = yj.f5708a.a("AES/GCM/NoPadding");
        cipherA.init(1, this.f5682a, new GCMParameterSpec(128, bArrA));
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        cipherA.updateAAD(bArr2);
        cipherA.doFinal(bArr, 0, bArr.length, bArr3, 12);
        return bArr3;
    }
}
