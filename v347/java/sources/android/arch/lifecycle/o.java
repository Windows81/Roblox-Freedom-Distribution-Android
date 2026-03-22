package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.arch.lifecycle.d;
import android.content.ComponentCallbacks2;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class o extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f160a;

    interface a {
        void a();

        void b();

        void c();
    }

    public static void a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new o(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    static o b(Activity activity) {
        return (o) activity.getFragmentManager().findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    private void b(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    private void d(a aVar) {
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(this.f160a);
        a(d.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        c(this.f160a);
        a(d.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d(this.f160a);
        a(d.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(d.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(d.a.ON_STOP);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(d.a.ON_DESTROY);
        this.f160a = null;
    }

    private void a(d.a aVar) {
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof i) {
            ((i) activity).a().a(aVar);
        } else if (activity instanceof g) {
            d lifecycle = ((g) activity).getLifecycle();
            if (lifecycle instanceof h) {
                ((h) lifecycle).a(aVar);
            }
        }
    }

    void a(a aVar) {
        this.f160a = aVar;
    }
}
