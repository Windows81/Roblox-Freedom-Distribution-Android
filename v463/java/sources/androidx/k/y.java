package androidx.k;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import androidx.k.j;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static LayoutTransition f2038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f2039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f2041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f2042e;

    static void a(ViewGroup viewGroup, boolean z) {
        boolean z2 = false;
        if (f2038a == null) {
            LayoutTransition layoutTransition = new LayoutTransition() { // from class: androidx.k.y.1
                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            f2038a = layoutTransition;
            layoutTransition.setAnimator(2, null);
            f2038a.setAnimator(0, null);
            f2038a.setAnimator(1, null);
            f2038a.setAnimator(3, null);
            f2038a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition2 = viewGroup.getLayoutTransition();
            if (layoutTransition2 != null) {
                if (layoutTransition2.isRunning()) {
                    a(layoutTransition2);
                }
                if (layoutTransition2 != f2038a) {
                    viewGroup.setTag(j.a.transition_layout_save, layoutTransition2);
                }
            }
            viewGroup.setLayoutTransition(f2038a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f2040c) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f2039b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
            }
            f2040c = true;
        }
        Field field = f2039b;
        if (field != null) {
            try {
                boolean z3 = field.getBoolean(viewGroup);
                if (z3) {
                    try {
                        f2039b.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                        z2 = z3;
                        Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
                    }
                }
                z2 = z3;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition3 = (LayoutTransition) viewGroup.getTag(j.a.transition_layout_save);
        if (layoutTransition3 != null) {
            viewGroup.setTag(j.a.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition3);
        }
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!f2042e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f2041d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f2042e = true;
        }
        Method method = f2041d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException unused2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }
}
