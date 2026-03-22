package android.support.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Property<View, Float> f496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Property<View, Rect> f497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final as f498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f499d;
    private static boolean e;

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            f498c = new ar();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f498c = new aq();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f498c = new ap();
        } else if (Build.VERSION.SDK_INT >= 18) {
            f498c = new ao();
        } else {
            f498c = new an();
        }
        f496a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: android.support.transition.am.1
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float get(View view) {
                return Float.valueOf(am.c(view));
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(View view, Float f) {
                am.a(view, f.floatValue());
            }
        };
        f497b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: android.support.transition.am.2
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Rect get(View view) {
                return android.support.v4.view.s.x(view);
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(View view, Rect rect) {
                android.support.v4.view.s.a(view, rect);
            }
        };
    }

    static al a(View view) {
        return f498c.a(view);
    }

    static aw b(View view) {
        return f498c.b(view);
    }

    static void a(View view, float f) {
        f498c.a(view, f);
    }

    static float c(View view) {
        return f498c.c(view);
    }

    static void d(View view) {
        f498c.d(view);
    }

    static void e(View view) {
        f498c.e(view);
    }

    static void a(View view, int i) {
        a();
        if (f499d != null) {
            try {
                f499d.setInt(view, (f499d.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException e2) {
            }
        }
    }

    static void a(View view, Matrix matrix) {
        f498c.a(view, matrix);
    }

    static void b(View view, Matrix matrix) {
        f498c.b(view, matrix);
    }

    static void a(View view, int i, int i2, int i3, int i4) {
        f498c.a(view, i, i2, i3, i4);
    }

    private static void a() {
        if (!e) {
            try {
                f499d = View.class.getDeclaredField("mViewFlags");
                f499d.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            e = true;
        }
    }
}
