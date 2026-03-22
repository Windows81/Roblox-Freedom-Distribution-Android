package androidx.k;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class ag extends af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f1942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1943b;

    ag() {
    }

    @Override // androidx.k.ah
    public void a(View view, int i, int i2, int i3, int i4) {
        a();
        Method method = f1942a;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    private void a() {
        if (f1943b) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            f1942a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e2);
        }
        f1943b = true;
    }
}
