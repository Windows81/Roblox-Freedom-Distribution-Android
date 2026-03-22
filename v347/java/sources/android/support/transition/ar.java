package android.support.transition;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ar extends aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f509b;

    ar() {
    }

    @Override // android.support.transition.an, android.support.transition.as
    public void a(View view, int i, int i2, int i3, int i4) {
        a();
        if (f508a != null) {
            try {
                f508a.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @SuppressLint({"PrivateApi"})
    private void a() {
        if (!f509b) {
            try {
                f508a = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f508a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e);
            }
            f509b = true;
        }
    }
}
