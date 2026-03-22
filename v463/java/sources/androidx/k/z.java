package androidx.k;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f2043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f2044b;

    static void a(ViewGroup viewGroup, boolean z) {
        a();
        Method method = f2043a;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e2);
            } catch (InvocationTargetException e3) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e3);
            }
        }
    }

    private static void a() {
        if (f2044b) {
            return;
        }
        try {
            Method declaredMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
            f2043a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e2);
        }
        f2044b = true;
    }
}
