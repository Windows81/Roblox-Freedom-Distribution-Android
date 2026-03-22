package androidx.k;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class af extends ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f1938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f1940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f1941d;

    af() {
    }

    @Override // androidx.k.ah
    public void a(View view, Matrix matrix) {
        a();
        Method method = f1938a;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // androidx.k.ah
    public void b(View view, Matrix matrix) {
        b();
        Method method = f1940c;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    private void a() {
        if (f1939b) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
            f1938a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e2);
        }
        f1939b = true;
    }

    private void b() {
        if (f1941d) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
            f1940c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e2);
        }
        f1941d = true;
    }
}
