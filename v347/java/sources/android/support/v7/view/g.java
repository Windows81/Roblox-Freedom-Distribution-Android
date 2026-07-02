package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.support.v7.a.a;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.k;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Class<?>[] f1332a = {Context.class};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Class<?>[] f1333b = f1332a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Object[] f1334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object[] f1335d;
    Context e;
    private Object f;

    public g(Context context) {
        super(context);
        this.e = context;
        this.f1334c = new Object[]{context};
        this.f1335d = this.f1334c;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof android.support.v4.c.a.a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                layout = this.e.getResources().getLayout(i);
                a(layout, Xml.asAttributeSet(layout), menu);
            } catch (IOException e) {
                throw new InflateException("Error inflating menu XML", e);
            } catch (XmlPullParserException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        switch(r3) {
            case 1: goto L58;
            case 2: goto L18;
            case 3: goto L30;
            default: goto L11;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        r9 = r3;
        r3 = r11.next();
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        if (r5 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        r3 = r11.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        if (r3.equals("group") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        r7.a(r12);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
    
        if (r3.equals("item") == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
    
        r7.b(r12);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
    
        if (r3.equals("menu") == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
    
        a(r11, r12, r7.c());
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        r2 = r3;
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
    
        r3 = r11.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008b, code lost:
    
        if (r5 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
    
        if (r3.equals(r2) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
    
        r2 = null;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009c, code lost:
    
        if (r3.equals("group") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009e, code lost:
    
        r7.a();
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a9, code lost:
    
        if (r3.equals("item") == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00af, code lost:
    
        if (r7.d() != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b3, code lost:
    
        if (r7.f1339a == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00bb, code lost:
    
        if (r7.f1339a.hasSubMenu() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00bd, code lost:
    
        r7.c();
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c3, code lost:
    
        r7.b();
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
    
        if (r3.equals("menu") == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d1, code lost:
    
        r0 = true;
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00dc, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00dd, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:?, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        r2 = null;
        r5 = false;
        r3 = r0;
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r0 != false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(org.xmlpull.v1.XmlPullParser r11, android.util.AttributeSet r12, android.view.Menu r13) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.view.g.a(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    Object a() {
        if (this.f == null) {
            this.f = a(this.e);
        }
        return this.f;
    }

    private Object a(Object obj) {
        if (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) {
            return a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Class<?>[] f1336a = {MenuItem.class};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f1337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Method f1338c;

        public a(Object obj, String str) {
            this.f1337b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1338c = cls.getMethod(str, f1336a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f1338c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f1338c.invoke(this.f1337b, menuItem)).booleanValue();
                }
                this.f1338c.invoke(this.f1337b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
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
        android.support.v4.view.b f1339a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Menu f1341c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1342d;
        private int e;
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
            this.f1341c = menu;
            a();
        }

        public void a() {
            this.f1342d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = true;
            this.i = true;
        }

        public void a(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.e.obtainStyledAttributes(attributeSet, a.j.MenuGroup);
            this.f1342d = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuGroup_android_id, 0);
            this.e = typedArrayObtainStyledAttributes.getInt(a.j.MenuGroup_android_menuCategory, 0);
            this.f = typedArrayObtainStyledAttributes.getInt(a.j.MenuGroup_android_orderInCategory, 0);
            this.g = typedArrayObtainStyledAttributes.getInt(a.j.MenuGroup_android_checkableBehavior, 0);
            this.h = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuGroup_android_visible, true);
            this.i = typedArrayObtainStyledAttributes.getBoolean(a.j.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void b(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.e.obtainStyledAttributes(attributeSet, a.j.MenuItem);
            this.k = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuItem_android_id, 0);
            this.l = (typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_android_menuCategory, this.e) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_android_orderInCategory, this.f) & 65535);
            this.m = typedArrayObtainStyledAttributes.getText(a.j.MenuItem_android_title);
            this.n = typedArrayObtainStyledAttributes.getText(a.j.MenuItem_android_titleCondensed);
            this.o = typedArrayObtainStyledAttributes.getResourceId(a.j.MenuItem_android_icon, 0);
            this.p = a(typedArrayObtainStyledAttributes.getString(a.j.MenuItem_android_alphabeticShortcut));
            this.q = typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_alphabeticModifiers, RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
            this.r = a(typedArrayObtainStyledAttributes.getString(a.j.MenuItem_android_numericShortcut));
            this.s = typedArrayObtainStyledAttributes.getInt(a.j.MenuItem_numericModifiers, RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
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
            this.A = typedArrayObtainStyledAttributes.getString(a.j.MenuItem_actionProviderClass);
            boolean z = this.A != null;
            if (z && this.y == 0 && this.z == null) {
                this.f1339a = (android.support.v4.view.b) a(this.A, g.f1333b, g.this.f1335d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f1339a = null;
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
            boolean z = true;
            menuItem.setChecked(this.u).setVisible(this.v).setEnabled(this.w).setCheckable(this.t >= 1).setTitleCondensed(this.n).setIcon(this.o);
            if (this.x >= 0) {
                menuItem.setShowAsAction(this.x);
            }
            if (this.B != null) {
                if (g.this.e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.a(), this.B));
            }
            if (menuItem instanceof j) {
            }
            if (this.t >= 2) {
                if (menuItem instanceof j) {
                    ((j) menuItem).a(true);
                } else if (menuItem instanceof k) {
                    ((k) menuItem).a(true);
                }
            }
            if (this.z != null) {
                menuItem.setActionView((View) a(this.z, g.f1332a, g.this.f1334c));
            } else {
                z = false;
            }
            if (this.y > 0) {
                if (!z) {
                    menuItem.setActionView(this.y);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.f1339a != null) {
                android.support.v4.view.g.a(menuItem, this.f1339a);
            }
            android.support.v4.view.g.a(menuItem, this.C);
            android.support.v4.view.g.b(menuItem, this.D);
            android.support.v4.view.g.b(menuItem, this.p, this.q);
            android.support.v4.view.g.a(menuItem, this.r, this.s);
            if (this.F != null) {
                android.support.v4.view.g.a(menuItem, this.F);
            }
            if (this.E != null) {
                android.support.v4.view.g.a(menuItem, this.E);
            }
        }

        public void b() {
            this.j = true;
            a(this.f1341c.add(this.f1342d, this.k, this.l, this.m));
        }

        public SubMenu c() {
            this.j = true;
            SubMenu subMenuAddSubMenu = this.f1341c.addSubMenu(this.f1342d, this.k, this.l, this.m);
            a(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.j;
        }

        private <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = g.this.e.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }
    }
}
