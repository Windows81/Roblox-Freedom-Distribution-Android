package android.support.transition;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ah extends ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f489b;

    ah() {
    }

    @Override // android.support.transition.ag, android.support.transition.ai
    public ae a(ViewGroup viewGroup) {
        return new ad(viewGroup);
    }

    @Override // android.support.transition.ag, android.support.transition.ai
    public void a(ViewGroup viewGroup, boolean z) {
        a();
        if (f488a != null) {
            try {
                f488a.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e);
            } catch (InvocationTargetException e2) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e2);
            }
        }
    }

    private void a() {
        if (!f489b) {
            try {
                f488a = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                f488a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e);
            }
            f489b = true;
        }
    }
}
