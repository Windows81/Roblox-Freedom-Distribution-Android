package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.widget.DrawableUtils;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Class<?>[] f757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Class<?>[] f758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Object[] f759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object[] f760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Context f761e;
    private Object f;

    static {
        Class<?>[] clsArr = {Context.class};
        f757a = clsArr;
        f758b = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f761e = context;
        Object[] objArr = {context};
        this.f759c = objArr;
        this.f760d = objArr;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof androidx.core.b.a.a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f761e.getResources().getLayout(i);
                    a(layout, Xml.asAttributeSet(layout), menu);
                } catch (XmlPullParserException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (IOException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }

    private void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        bVar.a();
                    } else if (name2.equals("item")) {
                        if (!bVar.d()) {
                            if (bVar.f765a != null && bVar.f765a.hasSubMenu()) {
                                bVar.c();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.a(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.b(attributeSet);
                } else if (name3.equals("menu")) {
                    a(xmlPullParser, attributeSet, bVar.c());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object a() {
        if (this.f == null) {
            this.f = a(this.f761e);
        }
        return this.f;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Class<?>[] f762a = {MenuItem.class};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Method f764c;

        public a(Object obj, String str) {
            this.f763b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f764c = cls.getMethod(str, f762a);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f764c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f764c.invoke(this.f763b, menuItem)).booleanValue();
                }
                this.f764c.invoke(this.f763b, menuItem);
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    private class b {
        private String A;
        private String B;
        private CharSequence C;
        private CharSequence D;
        private ColorStateList E = null;
        private PorterDuff.Mode F = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.core.h.b f765a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Menu f767c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f768d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f769e;
        private int f;
        private int g;
        private boolean h;
        private boolean i;
        private boolean j;
        private int k;
        private int l;
        private CharSequence m;
        private CharSequence n;
        private int o;
        private char p;
        private int q;
        private char r;
        private int s;
        private int t;
        private boolean u;
        private boolean v;
        private boolean w;
        private int x;
        private int y;
        private String z;

        public b(Menu menu) {
            this.f767c = menu;
            a();
        }

        public void a() {
            this.f768d = 0;
            this.f769e = 0;
            this.f = 0;
            this.g = 0;
            this.h = true;
            this.i = true;
        }

        public void a(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f761e.obtainStyledAttributes(attributeSet, a.j.MenuGroup);
            this.f768d = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuGroup_android_id, 0);
            this.f769e = typedArrayObtainStyledAttributes.getInt(a.j.MenuGroup_android_menuCategory, 0);
            this.f = typedArrayObtainStyledAttributes.getInt(a.j.MenuGroup_android_orderInCategory, 0);
            this.g = typedArrayObtainStyledAttributes.getInt(a.j.MenuGroup_android_checkableBehavior, 0);
            this.h = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuGroup_android_visible, true);
            this.i = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void b(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f761e.obtainStyledAttributes(attributeSet, a.j.MenuItem);
            this.k = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuItem_android_id, 0);
            this.l = (typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_android_menuCategory, this.f769e) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_android_orderInCategory, this.f) & 65535);
            this.m = typedArrayObtainStyledAttributes.getText(a.j.MenuItem_android_title);
            this.n = typedArrayObtainStyledAttributes.getText(a.j.MenuItem_android_titleCondensed);
            this.o = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuItem_android_icon, 0);
            this.p = a(typedArrayObtainStyledAttributes.getString(a.j.MenuItem_android_alphabeticShortcut));
            this.q = typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_alphabeticModifiers, 4096);
            this.r = a(typedArrayObtainStyledAttributes.getString(a.j.MenuItem_android_numericShortcut));
            this.s = typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_numericModifiers, 4096);
            if (typedArrayObtainStyledAttributes.hasValue(a.j.MenuItem_android_checkable)) {
                this.t = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.t = this.g;
            }
            this.u = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuItem_android_checked, false);
            this.v = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuItem_android_visible, this.h);
            this.w = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuItem_android_enabled, this.i);
            this.x = typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_showAsAction, -1);
            this.B = typedArrayObtainStyledAttributes.getString(a.j.MenuItem_android_onClick);
            this.y = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuItem_actionLayout, 0);
            this.z = typedArrayObtainStyledAttributes.getString(a.j.MenuItem_actionViewClass);
            String string = typedArrayObtainStyledAttributes.getString(a.j.MenuItem_actionProviderClass);
            this.A = string;
            boolean z = string != null;
            if (z && this.y == 0 && this.z == null) {
                this.f765a = (androidx.core.h.b) a(this.A, g.f758b, g.this.f760d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f765a = null;
            }
            this.C = typedArrayObtainStyledAttributes.getText(a.j.MenuItem_contentDescription);
            this.D = typedArrayObtainStyledAttributes.getText(a.j.MenuItem_tooltipText);
            if (typedArrayObtainStyledAttributes.hasValue(a.j.MenuItem_iconTintMode)) {
                this.F = DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_iconTintMode, -1), this.F);
            } else {
                this.F = null;
            }
            if (typedArrayObtainStyledAttributes.hasValue(a.j.MenuItem_iconTint)) {
                this.E = typedArrayObtainStyledAttributes.getColorStateList(a.j.MenuItem_iconTint);
            } else {
                this.E = null;
            }
            typedArrayObtainStyledAttributes.recycle();
            this.j = false;
        }

        private char a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private void a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.u).setVisible(this.v).setEnabled(this.w).setCheckable(this.t >= 1).setTitleCondensed(this.n).setIcon(this.o);
            int i = this.x;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.B != null) {
                if (g.this.f761e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.a(), this.B));
            }
            boolean z2 = menuItem instanceof j;
            if (z2) {
            }
            if (this.t >= 2) {
                if (z2) {
                    ((j) menuItem).a(true);
                } else if (menuItem instanceof k) {
                    ((k) menuItem).a(true);
                }
            }
            String str = this.z;
            if (str != null) {
                menuItem.setActionView((View) a(str, g.f757a, g.this.f759c));
                z = true;
            }
            int i2 = this.y;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            androidx.core.h.b bVar = this.f765a;
            if (bVar != null) {
                androidx.core.h.g.a(menuItem, bVar);
            }
            androidx.core.h.g.a(menuItem, this.C);
            androidx.core.h.g.b(menuItem, this.D);
            androidx.core.h.g.b(menuItem, this.p, this.q);
            androidx.core.h.g.a(menuItem, this.r, this.s);
            PorterDuff.Mode mode = this.F;
            if (mode != null) {
                androidx.core.h.g.a(menuItem, mode);
            }
            ColorStateList colorStateList = this.E;
            if (colorStateList != null) {
                androidx.core.h.g.a(menuItem, colorStateList);
            }
        }

        public void b() {
            this.j = true;
            a(this.f767c.add(this.f768d, this.k, this.l, this.m));
        }

        public SubMenu c() {
            this.j = true;
            SubMenu subMenuAddSubMenu = this.f767c.addSubMenu(this.f768d, this.k, this.l, this.m);
            a(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.j;
        }

        private <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = g.this.f761e.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }
    }
}
