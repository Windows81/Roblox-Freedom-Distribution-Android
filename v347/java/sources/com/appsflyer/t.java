package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class t implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static t f2246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2247b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2248c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f2249d = null;

    interface b {
        void a(Activity activity);

        void a(WeakReference<Activity> weakReference);
    }

    t() {
    }

    static t a() {
        if (f2246a == null) {
            f2246a = new t();
        }
        return f2246a;
    }

    public static t b() {
        if (f2246a == null) {
            throw new IllegalStateException("Foreground is not initialised - invoke at least once with parameter init/get");
        }
        return f2246a;
    }

    public final void a(Application application, b bVar) {
        this.f2249d = bVar;
        if (Build.VERSION.SDK_INT >= 14) {
            application.registerActivityLifecycleCallbacks(f2246a);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f2248c = false;
        boolean z = this.f2247b ? false : true;
        this.f2247b = true;
        if (z) {
            try {
                this.f2249d.a(activity);
            } catch (Exception e) {
                c.a("Listener threw exception! ", e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f2248c = true;
        try {
            new a(new WeakReference(activity)).executeOnExecutor(com.appsflyer.a.a().b(), new Void[0]);
        } catch (RejectedExecutionException e) {
            c.a("backgroundTask.executeOnExecutor failed with RejectedExecutionException Exception", e);
        } catch (Throwable th) {
            c.a("backgroundTask.executeOnExecutor failed with Exception", th);
        }
    }

    class a extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<Activity> f2250a;

        public a(WeakReference<Activity> weakReference) {
            this.f2250a = weakReference;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void doInBackground(Void... voidArr) {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                c.a("Sleeping attempt failed (essential for background state verification)\n", e);
            }
            if (t.this.f2247b && t.this.f2248c) {
                t.this.f2247b = false;
                try {
                    t.this.f2249d.a(this.f2250a);
                } catch (Exception e2) {
                    c.a("Listener threw exception! ", e2);
                    cancel(true);
                }
            }
            this.f2250a.clear();
            return null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }
}
