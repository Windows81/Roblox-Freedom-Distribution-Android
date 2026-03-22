package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c f1085a;

    interface c {
        void a(MenuItem menuItem, char c2, int i);

        void a(MenuItem menuItem, ColorStateList colorStateList);

        void a(MenuItem menuItem, PorterDuff.Mode mode);

        void a(MenuItem menuItem, CharSequence charSequence);

        void b(MenuItem menuItem, char c2, int i);

        void b(MenuItem menuItem, CharSequence charSequence);
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.g.c
        public void a(MenuItem menuItem, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.g.c
        public void b(MenuItem menuItem, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.g.c
        public void a(MenuItem menuItem, char c2, int i) {
        }

        @Override // android.support.v4.view.g.c
        public void b(MenuItem menuItem, char c2, int i) {
        }

        @Override // android.support.v4.view.g.c
        public void a(MenuItem menuItem, ColorStateList colorStateList) {
        }

        @Override // android.support.v4.view.g.c
        public void a(MenuItem menuItem, PorterDuff.Mode mode) {
        }
    }

    static class a extends b {
        a() {
        }

        @Override // android.support.v4.view.g.b, android.support.v4.view.g.c
        public void a(MenuItem menuItem, CharSequence charSequence) {
            menuItem.setContentDescription(charSequence);
        }

        @Override // android.support.v4.view.g.b, android.support.v4.view.g.c
        public void b(MenuItem menuItem, CharSequence charSequence) {
            menuItem.setTooltipText(charSequence);
        }

        @Override // android.support.v4.view.g.b, android.support.v4.view.g.c
        public void a(MenuItem menuItem, char c2, int i) {
            menuItem.setAlphabeticShortcut(c2, i);
        }

        @Override // android.support.v4.view.g.b, android.support.v4.view.g.c
        public void b(MenuItem menuItem, char c2, int i) {
            menuItem.setNumericShortcut(c2, i);
        }

        @Override // android.support.v4.view.g.b, android.support.v4.view.g.c
        public void a(MenuItem menuItem, ColorStateList colorStateList) {
            menuItem.setIconTintList(colorStateList);
        }

        @Override // android.support.v4.view.g.b, android.support.v4.view.g.c
        public void a(MenuItem menuItem, PorterDuff.Mode mode) {
            menuItem.setIconTintMode(mode);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            f1085a = new a();
        } else {
            f1085a = new b();
        }
    }

    @Deprecated
    public static View a(MenuItem menuItem) {
        return menuItem.getActionView();
    }

    public static MenuItem a(MenuItem menuItem, android.support.v4.view.b bVar) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            return ((android.support.v4.c.a.b) menuItem).a(bVar);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static void a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            ((android.support.v4.c.a.b) menuItem).a(charSequence);
        } else {
            f1085a.a(menuItem, charSequence);
        }
    }

    public static void b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            ((android.support.v4.c.a.b) menuItem).b(charSequence);
        } else {
            f1085a.b(menuItem, charSequence);
        }
    }

    public static void a(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            ((android.support.v4.c.a.b) menuItem).setNumericShortcut(c2, i);
        } else {
            f1085a.b(menuItem, c2, i);
        }
    }

    public static void b(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            ((android.support.v4.c.a.b) menuItem).setAlphabeticShortcut(c2, i);
        } else {
            f1085a.a(menuItem, c2, i);
        }
    }

    public static void a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            ((android.support.v4.c.a.b) menuItem).setIconTintList(colorStateList);
        } else {
            f1085a.a(menuItem, colorStateList);
        }
    }

    public static void a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof android.support.v4.c.a.b) {
            ((android.support.v4.c.a.b) menuItem).setIconTintMode(mode);
        } else {
            f1085a.a(menuItem, mode);
        }
    }
}
