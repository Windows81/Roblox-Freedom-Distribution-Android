package android.support.transition;

import android.support.transition.r;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f553b;

    public void a() {
        if (a(this.f552a) == this && this.f553b != null) {
            this.f553b.run();
        }
    }

    static void a(View view, t tVar) {
        view.setTag(r.a.transition_current_scene, tVar);
    }

    static t a(View view) {
        return (t) view.getTag(r.a.transition_current_scene);
    }
}
