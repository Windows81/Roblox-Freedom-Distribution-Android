package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public abstract class alh {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static MessageDigest f4168b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Object f4169a = new Object();

    protected final MessageDigest a() {
        MessageDigest messageDigest;
        synchronized (this.f4169a) {
            if (f4168b != null) {
                messageDigest = f4168b;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        f4168b = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = f4168b;
            }
        }
        return messageDigest;
    }

    abstract byte[] a(String str);
}
