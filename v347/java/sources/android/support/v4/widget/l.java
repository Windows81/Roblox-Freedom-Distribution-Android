package android.support.v4.widget;

import android.os.Build;
import android.support.v4.view.s;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final d f1176a;

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f1178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f1179b;

        d() {
        }

        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            if ((android.support.v4.view.d.a(i3, s.e(view)) & 7) == 5) {
                i -= popupWindow.getWidth() - view.getWidth();
            }
            popupWindow.showAsDropDown(view, i, i2);
        }

        public void a(PopupWindow popupWindow, boolean z) {
        }

        public void a(PopupWindow popupWindow, int i) {
            if (!f1179b) {
                try {
                    f1178a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                    f1178a.setAccessible(true);
                } catch (Exception e) {
                }
                f1179b = true;
            }
            if (f1178a != null) {
                try {
                    f1178a.invoke(popupWindow, Integer.valueOf(i));
                } catch (Exception e2) {
                }
            }
        }
    }

    static class a extends d {
        a() {
        }

        @Override // android.support.v4.widget.l.d
        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }

    static class b extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Field f1177a;

        b() {
        }

        static {
            try {
                f1177a = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f1177a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
            }
        }

        @Override // android.support.v4.widget.l.d
        public void a(PopupWindow popupWindow, boolean z) {
            if (f1177a != null) {
                try {
                    f1177a.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e) {
                    Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e);
                }
            }
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.widget.l.b, android.support.v4.widget.l.d
        public void a(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }

        @Override // android.support.v4.widget.l.d
        public void a(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            f1176a = new c();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            f1176a = new b();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f1176a = new a();
        } else {
            f1176a = new d();
        }
    }

    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        f1176a.a(popupWindow, view, i, i2, i3);
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        f1176a.a(popupWindow, z);
    }

    public static void a(PopupWindow popupWindow, int i) {
        f1176a.a(popupWindow, i);
    }
}
