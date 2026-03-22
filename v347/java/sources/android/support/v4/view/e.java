package android.support.v4.view;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b f1082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f1083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f1084c;

    static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f1084c) {
            try {
                f1083b = LayoutInflater.class.getDeclaredField("mFactory2");
                f1083b.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f1084c = true;
        }
        if (f1083b != null) {
            try {
                f1083b.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    static class b {
        b() {
        }

        public void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
            layoutInflater.setFactory2(factory2);
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                e.a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                e.a(layoutInflater, factory2);
            }
        }
    }

    static class a extends b {
        a() {
        }

        @Override // android.support.v4.view.e.b
        public void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
            layoutInflater.setFactory2(factory2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1082a = new a();
        } else {
            f1082a = new b();
        }
    }

    public static void b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        f1082a.a(layoutInflater, factory2);
    }
}
