package com.roblox.client.b;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f6476a = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f6477b = (f6476a * 2) + 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadFactory f6478c = new ThreadFactory() { // from class: com.roblox.client.b.e.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f6480a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ReportingThread #" + this.f6480a.getAndIncrement());
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f6479d = new LinkedBlockingQueue(128);
    private static Executor e;

    public static synchronized Executor a() {
        if (e == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, f6477b, 30L, TimeUnit.SECONDS, f6479d, f6478c);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.setRejectedExecutionHandler(new a());
            e = threadPoolExecutor;
        }
        return e;
    }

    static class a implements RejectedExecutionHandler {
        a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            if (com.roblox.client.b.aV()) {
                c.a("Rejected execution on ReportingExecutor");
            }
        }
    }
}
