package android.support.v4.f;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f909b;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                f909b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                return;
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            if (cls != null) {
                f908a = cls.getMethod("getScript", String.class);
                f909b = cls.getMethod("addLikelySubtags", String.class);
            }
        } catch (Exception e2) {
            f908a = null;
            f909b = null;
            Log.w("ICUCompat", e2);
        }
    }

    public static String a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return ((Locale) f909b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException e) {
                Log.w("ICUCompat", e);
                return locale.getScript();
            } catch (InvocationTargetException e2) {
                Log.w("ICUCompat", e2);
                return locale.getScript();
            }
        }
        String strB = b(locale);
        if (strB != null) {
            return a(strB);
        }
        return null;
    }

    private static String a(String str) {
        try {
            if (f908a != null) {
                return (String) f908a.invoke(null, str);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return null;
    }

    private static String b(Locale locale) {
        String string = locale.toString();
        try {
            if (f909b != null) {
                return (String) f909b.invoke(null, string);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return string;
    }
}
