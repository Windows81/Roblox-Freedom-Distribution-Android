package androidx.k;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Property<View, Float> f1929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Property<View, Rect> f1930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ah f1931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f1932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f1933e;

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            f1931c = new ag();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f1931c = new af();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f1931c = new ae();
        } else {
            f1931c = new ah();
        }
        f1929a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.k.ad.1
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float get(View view) {
                return Float.valueOf(ad.c(view));
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(View view, Float f) {
                ad.a(view, f.floatValue());
            }
        };
        f1930b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.k.ad.2
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Rect get(View view) {
                return androidx.core.h.r.y(view);
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(View view, Rect rect) {
                androidx.core.h.r.a(view, rect);
            }
        };
    }

    static ac a(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new ab(view);
        }
        return aa.d(view);
    }

    static al b(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new ak(view);
        }
        return new aj(view.getWindowToken());
    }

    static void a(View view, float f) {
        f1931c.a(view, f);
    }

    static float c(View view) {
        return f1931c.a(view);
    }

    static void d(View view) {
        f1931c.b(view);
    }

    static void e(View view) {
        f1931c.c(view);
    }

    static void a(View view, int i) {
        a();
        Field field = f1932d;
        if (field != null) {
            try {
                f1932d.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused) {
            }
        }
    }

    static void a(View view, Matrix matrix) {
        f1931c.a(view, matrix);
    }

    static void b(View view, Matrix matrix) {
        f1931c.b(view, matrix);
    }

    static void a(View view, int i, int i2, int i3, int i4) {
        f1931c.a(view, i, i2, i3, i4);
    }

    private static void a() {
        if (f1933e) {
            return;
        }
        try {
            Field declaredField = View.class.getDeclaredField("mViewFlags");
            f1932d = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException unused) {
            Log.i("ViewUtils", "fetchViewFlagsField: ");
        }
        f1933e = true;
    }
}
