package android.support.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k f545a;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f545a = new j();
        } else {
            f545a = new i();
        }
    }

    static <T> ObjectAnimator a(T t, Property<T, PointF> property, Path path) {
        return f545a.a(t, property, path);
    }
}
