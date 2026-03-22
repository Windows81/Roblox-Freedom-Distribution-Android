package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class jk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ni f5180a = nj.a(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), a("Default")));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ni f5181b;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), a("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f5181b = nj.a(threadPoolExecutor);
    }

    public static nd<?> a(Runnable runnable) {
        return f5180a.submit(runnable);
    }

    public static <T> nd<T> a(Callable<T> callable) {
        return f5180a.submit(callable);
    }

    private static ThreadFactory a(String str) {
        return new jl(str);
    }

    public static nd<?> b(Runnable runnable) {
        return f5181b.submit(runnable);
    }
}
