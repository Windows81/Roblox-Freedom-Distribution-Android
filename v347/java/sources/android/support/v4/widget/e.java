package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f1164a;

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            f1164a = new b();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f1164a = new a();
        } else {
            f1164a = new c();
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Field f1165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f1166b;

        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            if (compoundButton instanceof o) {
                ((o) compoundButton).setSupportButtonTintList(colorStateList);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            if (compoundButton instanceof o) {
                ((o) compoundButton).setSupportButtonTintMode(mode);
            }
        }

        public Drawable a(CompoundButton compoundButton) {
            if (!f1166b) {
                try {
                    f1165a = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    f1165a.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
                }
                f1166b = true;
            }
            if (f1165a != null) {
                try {
                    return (Drawable) f1165a.get(compoundButton);
                } catch (IllegalAccessException e2) {
                    Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
                    f1165a = null;
                }
            }
            return null;
        }
    }

    static class a extends c {
        a() {
        }

        @Override // android.support.v4.widget.e.c
        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            compoundButton.setButtonTintList(colorStateList);
        }

        @Override // android.support.v4.widget.e.c
        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            compoundButton.setButtonTintMode(mode);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.e.c
        public Drawable a(CompoundButton compoundButton) {
            return compoundButton.getButtonDrawable();
        }
    }

    public static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
        f1164a.a(compoundButton, colorStateList);
    }

    public static void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        f1164a.a(compoundButton, mode);
    }

    public static Drawable a(CompoundButton compoundButton) {
        return f1164a.a(compoundButton);
    }
}
