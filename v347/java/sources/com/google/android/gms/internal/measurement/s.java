package com.google.android.gms.internal.measurement;

import java.lang.Thread;

/* JADX INFO: loaded from: classes.dex */
final class s implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ r f6013a;

    s(r rVar) {
        this.f6013a = rVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        bj bjVarF = this.f6013a.f();
        if (bjVarF != null) {
            bjVarF.e("Job execution failed", th);
        }
    }
}
