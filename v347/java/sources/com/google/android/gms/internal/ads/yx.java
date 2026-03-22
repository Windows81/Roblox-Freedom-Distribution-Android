package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class yx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<SecureRandom> f5717a = new yy();

    public static byte[] a(int i) {
        byte[] bArr = new byte[i];
        f5717a.get().nextBytes(bArr);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom b() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
