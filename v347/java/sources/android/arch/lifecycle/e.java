package android.arch.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.d;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicBoolean f140a = new AtomicBoolean(false);

    static void a(Context context) {
        if (!f140a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new b());
        }
    }

    static class b extends android.arch.lifecycle.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f141a = new c();

        b() {
        }

        @Override // android.arch.lifecycle.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof android.support.v4.app.h) {
                ((android.support.v4.app.h) activity).e().a((l.a) this.f141a, true);
            }
            o.a(activity);
        }

        @Override // android.arch.lifecycle.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity instanceof android.support.v4.app.h) {
                e.b((android.support.v4.app.h) activity, d.b.CREATED);
            }
        }

        @Override // android.arch.lifecycle.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            if (activity instanceof android.support.v4.app.h) {
                e.b((android.support.v4.app.h) activity, d.b.CREATED);
            }
        }
    }

    public static class a extends Fragment {
        @Override // android.support.v4.app.Fragment
        public void onPause() {
            super.onPause();
            a(d.a.ON_PAUSE);
        }

        @Override // android.support.v4.app.Fragment
        public void onStop() {
            super.onStop();
            a(d.a.ON_STOP);
        }

        @Override // android.support.v4.app.Fragment
        public void onDestroy() {
            super.onDestroy();
            a(d.a.ON_DESTROY);
        }

        protected void a(d.a aVar) {
            e.b(getParentFragment(), aVar);
        }
    }

    private static void a(android.support.v4.app.l lVar, d.b bVar) {
        List<Fragment> listF = lVar.f();
        if (listF != null) {
            for (Fragment fragment : listF) {
                if (fragment != null) {
                    a(fragment, bVar);
                    if (fragment.isAdded()) {
                        a(fragment.getChildFragmentManager(), bVar);
                    }
                }
            }
        }
    }

    private static void a(Object obj, d.b bVar) {
        if (obj instanceof i) {
            ((i) obj).a().a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(android.support.v4.app.h hVar, d.b bVar) {
        a((Object) hVar, bVar);
        a(hVar.e(), bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Fragment fragment, d.a aVar) {
        if (fragment instanceof i) {
            ((i) fragment).a().a(aVar);
        }
    }

    static class c extends l.a {
        c() {
        }

        @Override // android.support.v4.app.l.a
        public void a(android.support.v4.app.l lVar, Fragment fragment, Bundle bundle) {
            e.b(fragment, d.a.ON_CREATE);
            if ((fragment instanceof i) && fragment.getChildFragmentManager().a("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
                fragment.getChildFragmentManager().a().a(new a(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").c();
            }
        }

        @Override // android.support.v4.app.l.a
        public void a(android.support.v4.app.l lVar, Fragment fragment) {
            e.b(fragment, d.a.ON_START);
        }

        @Override // android.support.v4.app.l.a
        public void b(android.support.v4.app.l lVar, Fragment fragment) {
            e.b(fragment, d.a.ON_RESUME);
        }
    }
}
