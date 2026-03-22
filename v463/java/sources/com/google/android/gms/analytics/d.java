package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.ae;
import com.google.android.gms.internal.measurement.ck;
import com.google.android.gms.internal.measurement.cm;
import com.google.android.gms.internal.measurement.co;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static List<Runnable> f3251b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<a> f3253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3254e;
    private boolean f;
    private volatile boolean g;

    interface a {
        void a(Activity activity);

        void b(Activity activity);
    }

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

    public d(ae aeVar) {
        super(aeVar);
        this.f3253d = new HashSet();
    }

    public static d a(Context context) {
        return ae.a(context).j();
    }

    public static void c() {
        synchronized (d.class) {
            if (f3251b != null) {
                Iterator<Runnable> it = f3251b.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                f3251b = null;
            }
        }
    }

    public final h a(int i) {
        h hVar;
        cm cmVarA;
        synchronized (this) {
            hVar = new h(g(), null, null);
            if (i > 0 && (cmVarA = new ck(g()).a(i)) != null) {
                hVar.a(cmVarA);
            }
            hVar.z();
        }
        return hVar;
    }

    public final void a() {
        co coVarK = g().k();
        coVarK.d();
        if (coVarK.e()) {
            a(coVarK.f());
        }
        coVarK.d();
        this.f3252c = true;
    }

    final void a(Activity activity) {
        Iterator<a> it = this.f3253d.iterator();
        while (it.hasNext()) {
            it.next().a(activity);
        }
    }

    public final void a(Application application) {
        if (this.f3254e) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new b());
        this.f3254e = true;
    }

    final void a(a aVar) {
        this.f3253d.add(aVar);
        Context contextA = g().a();
        if (contextA instanceof Application) {
            a((Application) contextA);
        }
    }

    public final void a(boolean z) {
        this.f = z;
    }

    final void b(Activity activity) {
        Iterator<a> it = this.f3253d.iterator();
        while (it.hasNext()) {
            it.next().b(activity);
        }
    }

    final void b(a aVar) {
        this.f3253d.remove(aVar);
    }

    public final boolean b() {
        return this.f3252c;
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
