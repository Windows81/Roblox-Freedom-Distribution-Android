package com.google.android.gms.internal.ads;

import java.lang.Thread;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ch implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Thread.UncaughtExceptionHandler f4900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ cg f4901b;

    ch(cg cgVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f4901b = cgVar;
        this.f4900a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.f4901b.a(thread, th);
                if (this.f4900a != null) {
                    this.f4900a.uncaughtException(thread, th);
                }
            } catch (Throwable th2) {
                mj.c("AdMob exception reporter failed reporting the exception.");
                if (this.f4900a != null) {
                    this.f4900a.uncaughtException(thread, th);
                }
            }
        } catch (Throwable th3) {
            if (this.f4900a != null) {
                this.f4900a.uncaughtException(thread, th);
            }
            throw th3;
        }
    }
}
