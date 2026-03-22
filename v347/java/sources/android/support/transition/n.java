package android.support.transition;

import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q f550a;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f550a = new p();
        } else {
            f550a = new o();
        }
    }

    static PropertyValuesHolder a(Property<?, PointF> property, Path path) {
        return f550a.a(property, path);
    }
}
