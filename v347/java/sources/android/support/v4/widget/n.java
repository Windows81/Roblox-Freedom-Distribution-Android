package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.TextView;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final f f1180a;

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Field f1181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f1182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Field f1183c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f1184d;

        f() {
        }

        public void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }

        private static Field a(String str) {
            Field declaredField = null;
            try {
                declaredField = TextView.class.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException e) {
                Log.e("TextViewCompatBase", "Could not retrieve " + str + " field.");
                return declaredField;
            }
        }

        private static int a(Field field, TextView textView) {
            try {
                return field.getInt(textView);
            } catch (IllegalAccessException e) {
                Log.d("TextViewCompatBase", "Could not retrieve value of " + field.getName() + " field.");
                return -1;
            }
        }

        public int a(TextView textView) {
            if (!f1184d) {
                f1183c = a("mMaxMode");
                f1184d = true;
            }
            if (f1183c != null && a(f1183c, textView) == 1) {
                if (!f1182b) {
                    f1181a = a("mMaximum");
                    f1182b = true;
                }
                if (f1181a != null) {
                    return a(f1181a, textView);
                }
            }
            return -1;
        }

        public void a(TextView textView, int i) {
            textView.setTextAppearance(textView.getContext(), i);
        }

        public Drawable[] b(TextView textView) {
            return textView.getCompoundDrawables();
        }
    }

    static class a extends f {
        a() {
        }

        @Override // android.support.v4.widget.n.f
        public int a(TextView textView) {
            return textView.getMaxLines();
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.n.f
        public void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
        }

        @Override // android.support.v4.widget.n.f
        public Drawable[] b(TextView textView) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (z) {
                Drawable drawable = compoundDrawables[2];
                Drawable drawable2 = compoundDrawables[0];
                compoundDrawables[0] = drawable;
                compoundDrawables[2] = drawable2;
            }
            return compoundDrawables;
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.widget.n.b, android.support.v4.widget.n.f
        public void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.n.b, android.support.v4.widget.n.f
        public Drawable[] b(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.widget.n.f
        public void a(TextView textView, int i) {
            textView.setTextAppearance(i);
        }
    }

    static class e extends d {
        e() {
        }
    }

    static {
        if (android.support.v4.os.a.a()) {
            f1180a = new e();
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            f1180a = new d();
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            f1180a = new c();
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            f1180a = new b();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f1180a = new a();
        } else {
            f1180a = new f();
        }
    }

    public static void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        f1180a.a(textView, drawable, drawable2, drawable3, drawable4);
    }

    public static int a(TextView textView) {
        return f1180a.a(textView);
    }

    public static void a(TextView textView, int i) {
        f1180a.a(textView, i);
    }

    public static Drawable[] b(TextView textView) {
        return f1180a.b(textView);
    }
}
