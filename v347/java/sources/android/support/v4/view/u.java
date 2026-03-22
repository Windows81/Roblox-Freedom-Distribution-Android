package android.support.v4.view;

import android.os.Build;
import android.support.a.a;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c f1104a;

    static class c {
        c() {
        }

        public boolean a(ViewGroup viewGroup) {
            Boolean bool = (Boolean) viewGroup.getTag(a.C0005a.tag_transition_group);
            return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && s.l(viewGroup) == null) ? false : true;
        }
    }

    static class a extends c {
        a() {
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.u.c
        public boolean a(ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1104a = new b();
        } else if (Build.VERSION.SDK_INT >= 18) {
            f1104a = new a();
        } else {
            f1104a = new c();
        }
    }

    public static boolean a(ViewGroup viewGroup) {
        return f1104a.a(viewGroup);
    }
}
