package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.e;
import com.google.android.gms.internal.measurement.bi;
import java.lang.Thread;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f3235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f3236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f3237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f3238d;
    private d e;

    public c(h hVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (hVar == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.f3235a = uncaughtExceptionHandler;
        this.f3236b = hVar;
        this.f3238d = new g(context, new ArrayList());
        this.f3237c = context.getApplicationContext();
        String strValueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
        bi.a(strValueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(strValueOf) : new String("ExceptionReporter created, original handler is "));
    }

    final Thread.UncaughtExceptionHandler a() {
        return this.f3235a;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String strA = "UncaughtException";
        if (this.f3238d != null) {
            strA = this.f3238d.a(thread != null ? thread.getName() : null, th);
        }
        String strValueOf = String.valueOf(strA);
        bi.a(strValueOf.length() != 0 ? "Reporting uncaught exception: ".concat(strValueOf) : new String("Reporting uncaught exception: "));
        this.f3236b.a(new e.b().a(strA).a(true).a());
        if (this.e == null) {
            this.e = d.a(this.f3237c);
        }
        d dVar = this.e;
        dVar.f();
        dVar.g().h().d();
        if (this.f3235a != null) {
            bi.a("Passing exception to the original handler");
            this.f3235a.uncaughtException(thread, th);
        }
    }
}
