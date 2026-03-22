package com.google.a.a;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f2587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SecureRandom f2588b;

    public class a extends Exception {
        public a() {
        }

        public a(Throwable th) {
            super(th);
        }
    }

    public k(i iVar, SecureRandom secureRandom) {
        this.f2587a = iVar;
        this.f2588b = secureRandom;
    }

    static void a(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 68);
        }
    }

    public byte[] a(String str) throws a {
        try {
            byte[] bArrA = this.f2587a.a(str, false);
            if (bArrA.length != 32) {
                throw new a();
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(bArrA, 4, 16).get(bArr);
            a(bArr);
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new a(e);
        }
    }

    public byte[] a(byte[] bArr, String str) throws a {
        if (bArr.length != 16) {
            throw new a();
        }
        try {
            byte[] bArrA = this.f2587a.a(str, false);
            if (bArrA.length <= 16) {
                throw new a();
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrA.length);
            byteBufferAllocate.put(bArrA);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArrA.length - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr2));
            return cipher.doFinal(bArr3);
        } catch (IllegalArgumentException e) {
            throw new a(e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new a(e2);
        } catch (InvalidKeyException e3) {
            throw new a(e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new a(e4);
        } catch (BadPaddingException e5) {
            throw new a(e5);
        } catch (IllegalBlockSizeException e6) {
            throw new a(e6);
        } catch (NoSuchPaddingException e7) {
            throw new a(e7);
        }
    }
}
