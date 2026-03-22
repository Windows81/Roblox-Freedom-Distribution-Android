package com.google.android.gms.analytics;

import android.util.Log;
import com.google.android.gms.analytics.s;
import java.lang.Thread;
import java.util.concurrent.FutureTask;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class u<T> extends FutureTask<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ s.a f3298a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    u(s.a aVar, Runnable runnable, Object obj) {
        super(runnable, obj);
        this.f3298a = aVar;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = s.this.g;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        } else if (Log.isLoggable("GAv4", 6)) {
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 37);
            sb.append("MeasurementExecutor: job failed with ");
            sb.append(strValueOf);
            Log.e("GAv4", sb.toString());
        }
        super.setException(th);
    }
}
