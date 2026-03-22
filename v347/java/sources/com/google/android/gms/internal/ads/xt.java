package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class xt implements tf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f5678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f5679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SecretKeySpec f5680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5681d;

    public xt(byte[] bArr, int i) throws GeneralSecurityException {
        if (i != 12 && i != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f5681d = i;
        this.f5680c = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/NOPADDING");
        cipher.init(1, this.f5680c);
        this.f5678a = a(cipher.doFinal(new byte[16]));
        this.f5679b = a(this.f5678a);
    }

    private final byte[] a(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrB;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(b(bArr2, this.f5678a));
        }
        int i4 = 0;
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        while (i3 - i4 > 16) {
            for (int i5 = 0; i5 < 16; i5++) {
                bArrDoFinal[i5] = (byte) (bArrDoFinal[i5] ^ bArr[(i2 + i4) + i5]);
            }
            bArrDoFinal = cipher.doFinal(bArrDoFinal);
            i4 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i2 + i4, i2 + i3);
        if (bArrCopyOfRange.length == 16) {
            bArrB = b(bArrCopyOfRange, this.f5678a);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(this.f5679b, 16);
            for (int i6 = 0; i6 < bArrCopyOfRange.length; i6++) {
                bArrCopyOf[i6] = (byte) (bArrCopyOf[i6] ^ bArrCopyOfRange[i6]);
            }
            bArrCopyOf[bArrCopyOfRange.length] = (byte) (bArrCopyOf[bArrCopyOfRange.length] ^ 128);
            bArrB = bArrCopyOf;
        }
        return cipher.doFinal(b(bArrDoFinal, bArrB));
    }

    private static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < 15; i++) {
            bArr2[i] = (byte) ((bArr[i] << 1) ^ ((bArr[i + 1] & 255) >>> 7));
        }
        bArr2[15] = (byte) (((bArr[0] & 128) != 0 ? 135 : 0) ^ (bArr[15] << 1));
        return bArr2;
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > (Integer.MAX_VALUE - this.f5681d) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[this.f5681d + bArr.length + 16];
        byte[] bArrA = yx.a(this.f5681d);
        System.arraycopy(bArrA, 0, bArr3, 0, this.f5681d);
        Cipher cipher = Cipher.getInstance("AES/ECB/NOPADDING");
        cipher.init(1, this.f5680c);
        byte[] bArrA2 = a(cipher, 0, bArrA, 0, bArrA.length);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte[] bArrA3 = a(cipher, 1, bArr4, 0, bArr4.length);
        Cipher cipher2 = Cipher.getInstance("AES/CTR/NOPADDING");
        cipher2.init(1, this.f5680c, new IvParameterSpec(bArrA2));
        cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f5681d);
        byte[] bArrA4 = a(cipher, 2, bArr3, this.f5681d, bArr.length);
        int length = bArr.length + this.f5681d;
        for (int i = 0; i < 16; i++) {
            bArr3[length + i] = (byte) ((bArrA3[i] ^ bArrA2[i]) ^ bArrA4[i]);
        }
        return bArr3;
    }
}
