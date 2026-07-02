package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
final class afy implements Runnable {
    private afy() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = afw.f3945c = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
        } finally {
            afw.f3943a.countDown();
        }
    }
}
