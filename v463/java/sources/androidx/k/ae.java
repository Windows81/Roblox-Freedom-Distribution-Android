package androidx.k;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class ae extends ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f1934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f1936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f1937d;

    @Override // androidx.k.ah
    public void b(View view) {
    }

    @Override // androidx.k.ah
    public void c(View view) {
    }

    ae() {
    }

    @Override // androidx.k.ah
    public void a(View view, float f) {
        a();
        Method method = f1934a;
        if (method != null) {
            try {
                method.invoke(view, Float.valueOf(f));
                return;
            } catch (IllegalAccessException unused) {
                return;
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        view.setAlpha(f);
    }

    @Override // androidx.k.ah
    public float a(View view) {
        b();
        Method method = f1936c;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.a(view);
    }

    private void a() {
        if (f1935b) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
            f1934a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e2);
        }
        f1935b = true;
    }

    private void b() {
        if (f1937d) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
            f1936c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e2);
        }
        f1937d = true;
    }
}
