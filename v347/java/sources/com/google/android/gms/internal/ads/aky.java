package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(14)
final class aky implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f4145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f4146b;
    private Runnable h;
    private long j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f4147c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4148d = true;
    private boolean e = false;

    @GuardedBy("mLock")
    private final List<ala> f = new ArrayList();

    @GuardedBy("mLock")
    private final List<aln> g = new ArrayList();
    private boolean i = false;

    aky() {
    }

    private final void a(Activity activity) {
        synchronized (this.f4147c) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f4145a = activity;
            }
        }
    }

    static /* synthetic */ boolean a(aky akyVar, boolean z) {
        akyVar.f4148d = false;
        return false;
    }

    public final Activity a() {
        return this.f4145a;
    }

    public final void a(Application application, Context context) {
        if (this.i) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            a((Activity) context);
        }
        this.f4146b = application;
        this.j = ((Long) aoo.f().a(aro.aH)).longValue();
        this.i = true;
    }

    public final void a(ala alaVar) {
        synchronized (this.f4147c) {
            this.f.add(alaVar);
        }
    }

    public final Context b() {
        return this.f4146b;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f4147c) {
            if (this.f4145a == null) {
                return;
            }
            if (this.f4145a.equals(activity)) {
                this.f4145a = null;
            }
            Iterator<aln> it = this.g.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().c(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.aw.i().a(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    mj.b("", e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity);
        synchronized (this.f4147c) {
            Iterator<aln> it = this.g.iterator();
            while (it.hasNext()) {
                try {
                    it.next().b(activity);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.aw.i().a(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    mj.b("", e);
                }
            }
        }
        this.e = true;
        if (this.h != null) {
            jm.f5184a.removeCallbacks(this.h);
        }
        Handler handler = jm.f5184a;
        akz akzVar = new akz(this);
        this.h = akzVar;
        handler.postDelayed(akzVar, this.j);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity);
        this.e = false;
        boolean z = this.f4148d ? false : true;
        this.f4148d = true;
        if (this.h != null) {
            jm.f5184a.removeCallbacks(this.h);
        }
        synchronized (this.f4147c) {
            Iterator<aln> it = this.g.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(activity);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.aw.i().a(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    mj.b("", e);
                }
            }
            if (z) {
                Iterator<ala> it2 = this.f.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().a(true);
                    } catch (Exception e2) {
                        mj.b("", e2);
                    }
                }
            } else {
                jd.b("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
