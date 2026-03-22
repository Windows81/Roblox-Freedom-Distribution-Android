package com.google.android.gms.internal.measurement;

import java.lang.Thread;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class af implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ae f4015a;

    af(ae aeVar) {
        this.f4015a = aeVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        bw bwVarF = this.f4015a.f();
        if (bwVarF != null) {
            bwVarF.e("Job execution failed", th);
        }
    }
}
