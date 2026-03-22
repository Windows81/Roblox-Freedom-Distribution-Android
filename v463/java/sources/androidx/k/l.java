package androidx.k;

import android.view.View;
import android.view.ViewGroup;
import androidx.k.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f2002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f2003b;

    public void a() {
        Runnable runnable;
        if (a(this.f2002a) != this || (runnable = this.f2003b) == null) {
            return;
        }
        runnable.run();
    }

    static void a(View view, l lVar) {
        view.setTag(j.a.transition_current_scene, lVar);
    }

    static l a(View view) {
        return (l) view.getTag(j.a.transition_current_scene);
    }
}
