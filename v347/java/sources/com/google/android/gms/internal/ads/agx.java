package com.google.android.gms.internal.ads;

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
public final class agx {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Cipher f3980b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f3981c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f3982d = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecureRandom f3983a = null;

    public agx(SecureRandom secureRandom) {
    }

    private static Cipher a() throws NoSuchPaddingException, NoSuchAlgorithmException {
        Cipher cipher;
        synchronized (f3982d) {
            if (f3980b == null) {
                f3980b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f3980b;
        }
        return cipher;
    }

    public final String a(byte[] bArr, byte[] bArr2) throws agy {
        byte[] bArrDoFinal;
        byte[] iv;
        if (bArr.length != 16) {
            throw new agy(this);
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f3981c) {
                a().init(1, secretKeySpec, (SecureRandom) null);
                bArrDoFinal = a().doFinal(bArr2);
                iv = a().getIV();
            }
            int length = bArrDoFinal.length + iv.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
            byteBufferAllocate.put(iv).put(bArrDoFinal);
            byteBufferAllocate.flip();
            byte[] bArr3 = new byte[length];
            byteBufferAllocate.get(bArr3);
            return afu.a(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new agy(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new agy(this, e2);
        } catch (BadPaddingException e3) {
            throw new agy(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new agy(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new agy(this, e5);
        }
    }

    public final byte[] a(String str) throws agy {
        try {
            byte[] bArrA = afu.a(str, false);
            if (bArrA.length != 32) {
                throw new agy(this);
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(bArrA, 4, 16).get(bArr);
            for (int i = 0; i < 16; i++) {
                bArr[i] = (byte) (bArr[i] ^ 68);
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new agy(this, e);
        }
    }

    public final byte[] a(byte[] bArr, String str) throws agy {
        byte[] bArrDoFinal;
        if (bArr.length != 16) {
            throw new agy(this);
        }
        try {
            byte[] bArrA = afu.a(str, false);
            if (bArrA.length <= 16) {
                throw new agy(this);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrA.length);
            byteBufferAllocate.put(bArrA);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArrA.length - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f3981c) {
                a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = a().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e) {
            throw new agy(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new agy(this, e2);
        } catch (InvalidKeyException e3) {
            throw new agy(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new agy(this, e4);
        } catch (BadPaddingException e5) {
            throw new agy(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new agy(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new agy(this, e7);
        }
    }
}
