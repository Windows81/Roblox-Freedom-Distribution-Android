package com.google.android.gms.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.internal.measurement.ca;
import com.google.android.gms.internal.measurement.cd;
import com.google.android.gms.internal.measurement.ci;
import java.lang.Thread;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@SuppressLint({"StaticFieldLeak"})
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile s f3272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<v> f3274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m f3275d;
    private final a e;
    private volatile cd f;
    private Thread.UncaughtExceptionHandler g;

    class a extends ThreadPoolExecutor {
        public a() {
            super(1, 1, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new b(null));
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.AbstractExecutorService
        protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new u(this, runnable, t);
        }
    }

    static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final AtomicInteger f3277a = new AtomicInteger();

        private b() {
        }

        /* synthetic */ b(t tVar) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new c(runnable, new StringBuilder(23).append("measurement-").append(f3277a.incrementAndGet()).toString());
        }
    }

    static class c extends Thread {
        c(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private s(Context context) {
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.w.a(applicationContext);
        this.f3273b = applicationContext;
        this.e = new a();
        this.f3274c = new CopyOnWriteArrayList();
        this.f3275d = new m();
    }

    public static s a(Context context) {
        com.google.android.gms.common.internal.w.a(context);
        if (f3272a == null) {
            synchronized (s.class) {
                if (f3272a == null) {
                    f3272a = new s(context);
                }
            }
        }
        return f3272a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(o oVar) {
        com.google.android.gms.common.internal.w.c("deliver should be called from worker thread");
        com.google.android.gms.common.internal.w.b(oVar.f(), "Measurement must be submitted");
        List<w> listC = oVar.c();
        if (listC.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (w wVar : listC) {
            Uri uriA = wVar.a();
            if (!hashSet.contains(uriA)) {
                hashSet.add(uriA);
                wVar.a(oVar);
            }
        }
    }

    public static void d() {
        if (!(Thread.currentThread() instanceof c)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final cd a() {
        if (this.f == null) {
            synchronized (this) {
                if (this.f == null) {
                    cd cdVar = new cd();
                    PackageManager packageManager = this.f3273b.getPackageManager();
                    String packageName = this.f3273b.getPackageName();
                    cdVar.c(packageName);
                    cdVar.d(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.f3273b.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        String strValueOf = String.valueOf(packageName);
                        Log.e("GAv4", strValueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(strValueOf) : new String("Error retrieving package info: appName set to "));
                    }
                    cdVar.a(packageName);
                    cdVar.b(str);
                    this.f = cdVar;
                }
            }
        }
        return this.f;
    }

    public final <V> Future<V> a(Callable<V> callable) {
        com.google.android.gms.common.internal.w.a(callable);
        if (!(Thread.currentThread() instanceof c)) {
            return this.e.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    final void a(o oVar) {
        if (oVar.i()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        }
        if (oVar.f()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        }
        o oVarA = oVar.a();
        oVarA.g();
        this.e.execute(new t(this, oVarA));
    }

    public final void a(Runnable runnable) {
        com.google.android.gms.common.internal.w.a(runnable);
        this.e.submit(runnable);
    }

    public final void a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.g = uncaughtExceptionHandler;
    }

    public final ci b() {
        DisplayMetrics displayMetrics = this.f3273b.getResources().getDisplayMetrics();
        ci ciVar = new ci();
        ciVar.a(ca.a(Locale.getDefault()));
        ciVar.f5972b = displayMetrics.widthPixels;
        ciVar.f5973c = displayMetrics.heightPixels;
        return ciVar;
    }

    public final Context c() {
        return this.f3273b;
    }
}
