package android.support.v4.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f701a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f703c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f704d;

        public static IBinder a(Bundle bundle, String str) {
            if (!f702b) {
                try {
                    f701a = Bundle.class.getMethod("getIBinder", String.class);
                    f701a.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f702b = true;
            }
            if (f701a != null) {
                try {
                    return (IBinder) f701a.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                    f701a = null;
                }
            }
            return null;
        }

        public static void a(Bundle bundle, String str, IBinder iBinder) {
            if (!f704d) {
                try {
                    f703c = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f703c.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f704d = true;
            }
            if (f703c != null) {
                try {
                    f703c.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f703c = null;
                }
            }
        }
    }

    public static IBinder a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : a.a(bundle, str);
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.a(bundle, str, iBinder);
        }
    }
}
