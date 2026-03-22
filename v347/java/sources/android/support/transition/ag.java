package android.support.transition;

import android.animation.LayoutTransition;
import android.support.transition.r;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ag implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static LayoutTransition f483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f486d;
    private static boolean e;

    ag() {
    }

    @Override // android.support.transition.ai
    public ae a(ViewGroup viewGroup) {
        return ac.a(viewGroup);
    }

    @Override // android.support.transition.ai
    public void a(ViewGroup viewGroup, boolean z) {
        boolean z2 = false;
        if (f483a == null) {
            f483a = new LayoutTransition() { // from class: android.support.transition.ag.1
                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            f483a.setAnimator(2, null);
            f483a.setAnimator(0, null);
            f483a.setAnimator(1, null);
            f483a.setAnimator(3, null);
            f483a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    a(layoutTransition);
                }
                if (layoutTransition != f483a) {
                    viewGroup.setTag(r.a.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f483a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f485c) {
            try {
                f484b = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f484b.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
            }
            f485c = true;
        }
        if (f484b != null) {
            try {
                z2 = f484b.getBoolean(viewGroup);
                if (z2) {
                    f484b.setBoolean(viewGroup, false);
                }
            } catch (IllegalAccessException e3) {
                Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(r.a.transition_layout_save);
        if (layoutTransition2 != null) {
            viewGroup.setTag(r.a.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!e) {
            try {
                f486d = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f486d.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            e = true;
        }
        if (f486d != null) {
            try {
                f486d.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException e3) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException e4) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }
}
