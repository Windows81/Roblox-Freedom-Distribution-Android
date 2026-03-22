package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.cn;
import com.google.android.gms.internal.measurement.jq;
import com.google.android.gms.internal.measurement.kl;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile s f3289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<v> f3291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m f3292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f3293e;
    private volatile jq f;
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
        private static final AtomicInteger f3295a = new AtomicInteger();

        private b() {
        }

        /* synthetic */ b(t tVar) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            int iIncrementAndGet = f3295a.incrementAndGet();
            StringBuilder sb = new StringBuilder(23);
            sb.append("measurement-");
            sb.append(iIncrementAndGet);
            return new c(runnable, sb.toString());
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
        aa.a(applicationContext);
        this.f3290b = applicationContext;
        this.f3293e = new a();
        this.f3291c = new CopyOnWriteArrayList();
        this.f3292d = new m();
    }

    public static s a(Context context) {
        aa.a(context);
        if (f3289a == null) {
            synchronized (s.class) {
                if (f3289a == null) {
                    f3289a = new s(context);
                }
            }
        }
        return f3289a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(o oVar) {
        aa.c("deliver should be called from worker thread");
        aa.b(oVar.f(), "Measurement must be submitted");
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

    public final jq a() {
        if (this.f == null) {
            synchronized (this) {
                if (this.f == null) {
                    jq jqVar = new jq();
                    PackageManager packageManager = this.f3290b.getPackageManager();
                    String packageName = this.f3290b.getPackageName();
                    jqVar.c(packageName);
                    jqVar.d(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.f3290b.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        String strValueOf = String.valueOf(packageName);
                        Log.e("GAv4", strValueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(strValueOf) : new String("Error retrieving package info: appName set to "));
                    }
                    jqVar.a(packageName);
                    jqVar.b(str);
                    this.f = jqVar;
                }
            }
        }
        return this.f;
    }

    public final <V> Future<V> a(Callable<V> callable) {
        aa.a(callable);
        if (!(Thread.currentThread() instanceof c)) {
            return this.f3293e.submit(callable);
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
        this.f3293e.execute(new t(this, oVarA));
    }

    public final void a(Runnable runnable) {
        aa.a(runnable);
        this.f3293e.submit(runnable);
    }

    public final void a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.g = uncaughtExceptionHandler;
    }

    public final kl b() {
        DisplayMetrics displayMetrics = this.f3290b.getResources().getDisplayMetrics();
        kl klVar = new kl();
        klVar.a(cn.a(Locale.getDefault()));
        klVar.f4666b = displayMetrics.widthPixels;
        klVar.f4667c = displayMetrics.heightPixels;
        return klVar;
    }

    public final Context c() {
        return this.f3290b;
    }
}
