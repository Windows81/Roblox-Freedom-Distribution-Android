package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.bx;
import com.google.android.gms.internal.measurement.bz;
import com.google.android.gms.internal.measurement.cb;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class d extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static List<Runnable> f3239b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<a> f3241d;
    private boolean e;
    private boolean f;
    private volatile boolean g;

    interface a {
        void a(Activity activity);

        void b(Activity activity);
    }

    @TargetApi(14)
    class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            d.this.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            d.this.b(activity);
        }
    }

    public d(com.google.android.gms.internal.measurement.r rVar) {
        super(rVar);
        this.f3241d = new HashSet();
    }

    public static d a(Context context) {
        return com.google.android.gms.internal.measurement.r.a(context).j();
    }

    public static void c() {
        synchronized (d.class) {
            if (f3239b != null) {
                Iterator<Runnable> it = f3239b.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                f3239b = null;
            }
        }
    }

    public final h a(int i) {
        h hVar;
        bz bzVarA;
        synchronized (this) {
            hVar = new h(g(), null, null);
            if (i > 0 && (bzVarA = new bx(g()).a(i)) != null) {
                hVar.a(bzVarA);
            }
            hVar.z();
        }
        return hVar;
    }

    public final void a() {
        cb cbVarK = g().k();
        cbVarK.d();
        if (cbVarK.e()) {
            a(cbVarK.f());
        }
        cbVarK.d();
        this.f3240c = true;
    }

    final void a(Activity activity) {
        Iterator<a> it = this.f3241d.iterator();
        while (it.hasNext()) {
            it.next().a(activity);
        }
    }

    @TargetApi(14)
    public final void a(Application application) {
        if (this.e) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new b());
        this.e = true;
    }

    final void a(a aVar) {
        this.f3241d.add(aVar);
        Context contextA = g().a();
        if (contextA instanceof Application) {
            a((Application) contextA);
        }
    }

    public final void a(boolean z) {
        this.f = z;
    }

    final void b(Activity activity) {
        Iterator<a> it = this.f3241d.iterator();
        while (it.hasNext()) {
            it.next().b(activity);
        }
    }

    final void b(a aVar) {
        this.f3241d.remove(aVar);
    }

    public final boolean b() {
        return this.f3240c;
    }

    public final boolean d() {
        return this.f;
    }

    public final boolean e() {
        return this.g;
    }

    public final void f() {
        g().h().c();
    }
}
