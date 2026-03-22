package android.support.v7.b.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.widget.AppCompatDrawableManager;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f1307a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<a>> f1308b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f1309c = new Object();

    public static ColorStateList a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList colorStateListD = d(context, i);
        if (colorStateListD == null) {
            ColorStateList colorStateListC = c(context, i);
            if (colorStateListC != null) {
                a(context, i, colorStateListC);
                return colorStateListC;
            }
            return android.support.v4.a.c.b(context, i);
        }
        return colorStateListD;
    }

    public static Drawable b(Context context, int i) {
        return AppCompatDrawableManager.get().getDrawable(context, i);
    }

    private static ColorStateList c(Context context, int i) {
        if (e(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return android.support.v7.b.a.a.a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    private static ColorStateList d(Context context, int i) {
        a aVar;
        synchronized (f1309c) {
            SparseArray<a> sparseArray = f1308b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (aVar = sparseArray.get(i)) != null) {
                if (aVar.f1311b.equals(context.getResources().getConfiguration())) {
                    return aVar.f1310a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    private static void a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f1309c) {
            SparseArray<a> sparseArray = f1308b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f1308b.put(context, sparseArray);
            }
            sparseArray.append(i, new a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    private static boolean e(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue typedValueA = a();
        resources.getValue(i, typedValueA, true);
        return typedValueA.type >= 28 && typedValueA.type <= 31;
    }

    private static TypedValue a() {
        TypedValue typedValue = f1307a.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            f1307a.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ColorStateList f1310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Configuration f1311b;

        a(ColorStateList colorStateList, Configuration configuration) {
            this.f1310a = colorStateList;
            this.f1311b = configuration;
        }
    }
}
