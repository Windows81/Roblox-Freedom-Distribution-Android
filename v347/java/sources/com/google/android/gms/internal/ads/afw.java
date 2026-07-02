package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class afw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f3944b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static MessageDigest f3945c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f3946d = new Object();
    private static final Object e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static CountDownLatch f3943a = new CountDownLatch(1);

    private static zn a(long j) {
        zn znVar = new zn();
        znVar.k = 4096L;
        return znVar;
    }

    static String a(zn znVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArrA;
        byte[] bArrA2 = afb.a(znVar);
        if (((Boolean) aoo.f().a(aro.bL)).booleanValue()) {
            Vector<byte[]> vectorA = a(bArrA2, 255);
            if (vectorA == null || vectorA.size() == 0) {
                bArrA = a(afb.a(a(4096L)), str, true);
            } else {
                afs afsVar = new afs();
                afsVar.f3934a = new byte[vectorA.size()][];
                Iterator<byte[]> it = vectorA.iterator();
                int i = 0;
                while (it.hasNext()) {
                    afsVar.f3934a[i] = a(it.next(), str, false);
                    i++;
                }
                afsVar.f3935b = a(bArrA2);
                bArrA = afb.a(afsVar);
            }
        } else {
            if (ahs.f4018a == null) {
                throw new GeneralSecurityException();
            }
            byte[] bArrA3 = ahs.f4018a.a(bArrA2, str != null ? str.getBytes() : new byte[0]);
            afs afsVar2 = new afs();
            afsVar2.f3934a = new byte[][]{bArrA3};
            afsVar2.f3936c = 2;
            bArrA = afb.a(afsVar2);
        }
        return afu.a(bArrA, true);
    }

    private static Vector<byte[]> a(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException e2) {
                return null;
            }
        }
        return vector;
    }

    static void a() {
        synchronized (e) {
            if (!f3944b) {
                f3944b = true;
                new Thread(new afy()).start();
            }
        }
    }

    public static byte[] a(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest;
        synchronized (f3946d) {
            MessageDigest messageDigestB = b();
            if (messageDigestB == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigestB.reset();
            messageDigestB.update(bArr);
            bArrDigest = f3945c.digest();
        }
        return bArrDigest;
    }

    private static byte[] a(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArrArray;
        int i = z ? 239 : 255;
        if (bArr.length > i) {
            bArr = afb.a(a(4096L));
        }
        if (bArr.length < i) {
            byte[] bArr2 = new byte[i - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            bArrArray = ByteBuffer.allocate(256).put(a(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        for (agb agbVar : new afz().cN) {
            agbVar.a(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zj(str.getBytes(Constants.UTF8_NAME)).a(bArr3);
        }
        return bArr3;
    }

    private static MessageDigest b() {
        a();
        boolean zAwait = false;
        try {
            zAwait = f3943a.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
        }
        if (zAwait && f3945c != null) {
            return f3945c;
        }
        return null;
    }
}
