package com.google.android.gms.internal.measurement;

import java.lang.Thread;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ez implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ex f4307b;

    public ez(ex exVar, String str) {
        this.f4307b = exVar;
        com.google.android.gms.common.internal.aa.a(str);
        this.f4306a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f4307b.q().v().a(this.f4306a, th);
    }
}
