package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d f473a;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f473a = new c();
        } else {
            f473a = new b();
        }
    }

    static void a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        f473a.a(animator, animatorListenerAdapter);
    }

    static void a(Animator animator) {
        f473a.a(animator);
    }

    static void b(Animator animator) {
        f473a.b(animator);
    }
}
