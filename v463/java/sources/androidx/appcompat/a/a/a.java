package androidx.appcompat.a.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.core.a.b;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f583a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<C0013a>> f584b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f585c = new Object();

    public static ColorStateList a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList colorStateListD = d(context, i);
        if (colorStateListD != null) {
            return colorStateListD;
        }
        ColorStateList colorStateListC = c(context, i);
        if (colorStateListC != null) {
            a(context, i, colorStateListC);
            return colorStateListC;
        }
        return b.b(context, i);
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
            return androidx.core.a.a.a.a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e2) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            return null;
        }
    }

    private static ColorStateList d(Context context, int i) {
        C0013a c0013a;
        synchronized (f585c) {
            SparseArray<C0013a> sparseArray = f584b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0013a = sparseArray.get(i)) != null) {
                if (c0013a.f587b.equals(context.getResources().getConfiguration())) {
                    return c0013a.f586a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    private static void a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f585c) {
            SparseArray<C0013a> sparseArray = f584b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f584b.put(context, sparseArray);
            }
            sparseArray.append(i, new C0013a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    private static boolean e(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue typedValueA = a();
        resources.getValue(i, typedValueA, true);
        return typedValueA.type >= 28 && typedValueA.type <= 31;
    }

    private static TypedValue a() {
        TypedValue typedValue = f583a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f583a.set(typedValue2);
        return typedValue2;
    }

    /* JADX INFO: renamed from: androidx.appcompat.a.a.a$a, reason: collision with other inner class name */
    private static class C0013a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ColorStateList f586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Configuration f587b;

        C0013a(ColorStateList colorStateList, Configuration configuration) {
            this.f586a = colorStateList;
            this.f587b = configuration;
        }
    }
}
