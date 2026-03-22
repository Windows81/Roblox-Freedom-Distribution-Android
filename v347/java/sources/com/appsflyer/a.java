package com.appsflyer;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Executor f2175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f2176c;

    private a() {
    }

    public static a a() {
        if (f2174a == null) {
            f2174a = new a();
        }
        return f2174a;
    }

    public Executor b() {
        if (this.f2175b == null || ((this.f2175b instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) this.f2175b).isShutdown() || ((ThreadPoolExecutor) this.f2175b).isTerminated() || ((ThreadPoolExecutor) this.f2175b).isTerminating()))) {
            if (Build.VERSION.SDK_INT >= 11) {
                this.f2175b = Executors.newFixedThreadPool(2);
            } else {
                return Executors.newSingleThreadExecutor();
            }
        }
        return this.f2175b;
    }

    ScheduledThreadPoolExecutor c() {
        if (this.f2176c == null || this.f2176c.isShutdown() || this.f2176c.isTerminated()) {
            this.f2176c = Executors.newScheduledThreadPool(2);
        }
        return (ScheduledThreadPoolExecutor) this.f2176c;
    }

    void d() {
        try {
            a(this.f2176c);
            if (this.f2175b instanceof ThreadPoolExecutor) {
                a((ThreadPoolExecutor) this.f2175b);
            }
        } catch (Throwable th) {
            c.a("failed to stop Executors", th);
        }
    }

    private void a(ExecutorService executorService) {
        try {
            try {
                c.a("shut downing executor ...");
                executorService.shutdown();
                executorService.awaitTermination(10L, TimeUnit.SECONDS);
                if (!executorService.isTerminated()) {
                    c.a("killing non-finished tasks");
                }
                executorService.shutdownNow();
            } catch (InterruptedException e) {
                c.a("InterruptedException!!!");
                if (!executorService.isTerminated()) {
                    c.a("killing non-finished tasks");
                }
                executorService.shutdownNow();
            }
        } catch (Throwable th) {
            if (!executorService.isTerminated()) {
                c.a("killing non-finished tasks");
            }
            executorService.shutdownNow();
            throw th;
        }
    }
}
