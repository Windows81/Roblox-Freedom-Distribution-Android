package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.e;
import com.google.android.gms.internal.measurement.bv;
import java.lang.Thread;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f3246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f3247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f3248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f3249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f3250e;

    public c(h hVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (hVar == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.f3246a = uncaughtExceptionHandler;
        this.f3247b = hVar;
        this.f3249d = new g(context, new ArrayList());
        this.f3248c = context.getApplicationContext();
        String strValueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
        bv.a(strValueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(strValueOf) : new String("ExceptionReporter created, original handler is "));
    }

    final Thread.UncaughtExceptionHandler a() {
        return this.f3246a;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String strA;
        if (this.f3249d != null) {
            strA = this.f3249d.a(thread != null ? thread.getName() : null, th);
        } else {
            strA = "UncaughtException";
        }
        String strValueOf = String.valueOf(strA);
        bv.a(strValueOf.length() != 0 ? "Reporting uncaught exception: ".concat(strValueOf) : new String("Reporting uncaught exception: "));
        this.f3247b.a(new e.b().a(strA).a(true).a());
        if (this.f3250e == null) {
            this.f3250e = d.a(this.f3248c);
        }
        d dVar = this.f3250e;
        dVar.f();
        dVar.g().h().d();
        if (this.f3246a != null) {
            bv.a("Passing exception to the original handler");
            this.f3246a.uncaughtException(thread, th);
        }
    }
}
