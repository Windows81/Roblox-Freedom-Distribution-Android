package android.support.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class aq extends ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f507d;

    aq() {
    }

    @Override // android.support.transition.an, android.support.transition.as
    public void a(View view, Matrix matrix) {
        a();
        if (f504a != null) {
            try {
                f504a.invoke(view, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // android.support.transition.an, android.support.transition.as
    public void b(View view, Matrix matrix) {
        b();
        if (f506c != null) {
            try {
                f506c.invoke(view, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    private void a() {
        if (!f505b) {
            try {
                f504a = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
                f504a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e);
            }
            f505b = true;
        }
    }

    private void b() {
        if (!f507d) {
            try {
                f506c = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
                f506c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e);
            }
            f507d = true;
        }
    }
}
