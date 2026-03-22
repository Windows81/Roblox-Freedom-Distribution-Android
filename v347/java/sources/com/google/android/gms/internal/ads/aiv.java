package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class aiv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4055a = aiv.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ahm f4056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4058d;
    private final Class<?>[] g;
    private final int e = 2;
    private volatile Method f = null;
    private CountDownLatch h = new CountDownLatch(1);

    public aiv(ahm ahmVar, String str, String str2, Class<?>... clsArr) {
        this.f4056b = ahmVar;
        this.f4057c = str;
        this.f4058d = str2;
        this.g = clsArr;
        this.f4056b.c().submit(new aiw(this));
    }

    private final String a(byte[] bArr, String str) throws agy, UnsupportedEncodingException {
        return new String(this.f4056b.e().a(bArr, str), Constants.UTF8_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        try {
            Class clsLoadClass = this.f4056b.d().loadClass(a(this.f4056b.f(), this.f4057c));
            if (clsLoadClass == null) {
                return;
            }
            this.f = clsLoadClass.getMethod(a(this.f4056b.f(), this.f4058d), this.g);
            if (this.f == null) {
            }
        } catch (agy e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            this.h.countDown();
        }
    }

    public final Method a() {
        if (this.f != null) {
            return this.f;
        }
        try {
            if (this.h.await(2L, TimeUnit.SECONDS)) {
                return this.f;
            }
            return null;
        } catch (InterruptedException e) {
            return null;
        }
    }
}
