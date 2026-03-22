package android.support.transition;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ap extends ao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f503d;

    ap() {
    }

    @Override // android.support.transition.an, android.support.transition.as
    public void a(View view, float f) {
        a();
        if (f500a != null) {
            try {
                f500a.invoke(view, Float.valueOf(f));
                return;
            } catch (IllegalAccessException e) {
                return;
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        view.setAlpha(f);
    }

    @Override // android.support.transition.an, android.support.transition.as
    public float c(View view) {
        b();
        if (f502c != null) {
            try {
                return ((Float) f502c.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.c(view);
    }

    @Override // android.support.transition.an, android.support.transition.as
    public void d(View view) {
    }

    @Override // android.support.transition.an, android.support.transition.as
    public void e(View view) {
    }

    private void a() {
        if (!f501b) {
            try {
                f500a = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                f500a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e);
            }
            f501b = true;
        }
    }

    private void b() {
        if (!f503d) {
            try {
                f502c = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f502c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e);
            }
            f503d = true;
        }
    }
}
