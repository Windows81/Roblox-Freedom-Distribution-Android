package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class abf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f3755b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ByteBuffer f3757d;
    private static final aae e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f3754a = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Charset f3756c = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        f3755b = bArr;
        f3757d = ByteBuffer.wrap(bArr);
        byte[] bArr2 = f3755b;
        e = aae.a(bArr2, 0, bArr2.length, false);
    }

    static int a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static int a(long j) {
        return (int) ((j >>> 32) ^ j);
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    static Object a(Object obj, Object obj2) {
        return ((ack) obj).n().a((ack) obj2).d();
    }

    static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    static boolean a(ack ackVar) {
        return false;
    }

    public static boolean a(byte[] bArr) {
        return aee.a(bArr);
    }

    public static String b(byte[] bArr) {
        return new String(bArr, f3754a);
    }

    public static int c(byte[] bArr) {
        int length = bArr.length;
        int iA = a(length, bArr, 0, length);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }
}
