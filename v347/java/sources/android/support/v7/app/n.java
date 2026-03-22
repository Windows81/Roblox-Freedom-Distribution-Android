package android.support.v7.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Field f1270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class f1272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f1273d;
    private static Field e;
    private static boolean f;
    private static Field g;
    private static boolean h;

    static boolean a(Resources resources) {
        if (Build.VERSION.SDK_INT >= 24) {
            return d(resources);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return c(resources);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return b(resources);
        }
        return false;
    }

    private static boolean b(Resources resources) {
        Map map;
        if (!f1271b) {
            try {
                f1270a = Resources.class.getDeclaredField("mDrawableCache");
                f1270a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f1271b = true;
        }
        if (f1270a != null) {
            try {
                map = (Map) f1270a.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
                map = null;
            }
            if (map != null) {
                map.clear();
                return true;
            }
        }
        return false;
    }

    private static boolean c(Resources resources) {
        Object obj;
        if (!f1271b) {
            try {
                f1270a = Resources.class.getDeclaredField("mDrawableCache");
                f1270a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f1271b = true;
        }
        if (f1270a == null) {
            obj = null;
        } else {
            try {
                obj = f1270a.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
                obj = null;
            }
        }
        if (obj == null) {
            return false;
        }
        return obj != null && a(obj);
    }

    private static boolean d(Resources resources) throws IllegalAccessException {
        Object obj;
        Object obj2;
        if (!h) {
            try {
                g = Resources.class.getDeclaredField("mResourcesImpl");
                g.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
            }
            h = true;
        }
        if (g == null) {
            return false;
        }
        try {
            obj = g.get(resources);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
            obj = null;
        }
        if (obj == null) {
            return false;
        }
        if (!f1271b) {
            try {
                f1270a = obj.getClass().getDeclaredField("mDrawableCache");
                f1270a.setAccessible(true);
            } catch (NoSuchFieldException e4) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
            }
            f1271b = true;
        }
        if (f1270a != null) {
            try {
                obj2 = f1270a.get(obj);
            } catch (IllegalAccessException e5) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
                obj2 = null;
            }
        } else {
            obj2 = null;
        }
        return obj2 != null && a(obj2);
    }

    private static boolean a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f1273d) {
            try {
                f1272c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            f1273d = true;
        }
        if (f1272c == null) {
            return false;
        }
        if (!f) {
            try {
                e = f1272c.getDeclaredField("mUnthemedEntries");
                e.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            f = true;
        }
        if (e == null) {
            return false;
        }
        try {
            longSparseArray = (LongSparseArray) e.get(obj);
        } catch (IllegalAccessException e4) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            longSparseArray = null;
        }
        if (longSparseArray == null) {
            return false;
        }
        longSparseArray.clear();
        return true;
    }
}
