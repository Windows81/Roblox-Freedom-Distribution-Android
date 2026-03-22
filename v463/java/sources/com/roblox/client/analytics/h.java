package com.roblox.client.analytics;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f5691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f5692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadFactory f5693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f5694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Executor f5695e;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f5691a = iAvailableProcessors;
        f5692b = (iAvailableProcessors * 2) + 1;
        f5693c = new ThreadFactory() { // from class: com.roblox.client.analytics.h.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final AtomicInteger f5696a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "ReportingThread #" + this.f5696a.getAndIncrement());
            }
        };
        f5694d = new LinkedBlockingQueue(128);
    }

    public static synchronized Executor a() {
        if (f5695e == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, f5692b, 30L, TimeUnit.SECONDS, f5694d, f5693c);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.setRejectedExecutionHandler(new a());
            f5695e = threadPoolExecutor;
        }
        return f5695e;
    }

    static class a implements RejectedExecutionHandler {
        a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            if (com.roblox.client.b.al()) {
                d.a("Rejected execution on ReportingExecutor");
            }
        }
    }
}
