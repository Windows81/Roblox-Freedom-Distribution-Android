package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.b;
import android.support.v7.view.menu.p;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class j implements android.support.v4.c.a.b {
    private static String F;
    private static String G;
    private static String H;
    private static String I;
    private View A;
    private android.support.v4.view.b B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f1405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1408d;
    private final int e;
    private CharSequence f;
    private CharSequence g;
    private Intent h;
    private char i;
    private char k;
    private Drawable m;
    private u o;
    private Runnable p;
    private MenuItem.OnMenuItemClickListener q;
    private CharSequence r;
    private CharSequence s;
    private int z;
    private int j = RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT;
    private int l = RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT;
    private int n = 0;
    private ColorStateList t = null;
    private PorterDuff.Mode u = null;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private int y = 16;
    private boolean D = false;

    j(h hVar, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.z = 0;
        this.f1405a = hVar;
        this.f1406b = i2;
        this.f1407c = i;
        this.f1408d = i3;
        this.e = i4;
        this.f = charSequence;
        this.z = i5;
    }

    public boolean b() {
        if ((this.q != null && this.q.onMenuItemClick(this)) || this.f1405a.a(this.f1405a, this)) {
            return true;
        }
        if (this.p != null) {
            this.p.run();
            return true;
        }
        if (this.h != null) {
            try {
                this.f1405a.e().startActivity(this.h);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        return this.B != null && this.B.onPerformDefaultAction();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.y |= 16;
        } else {
            this.y &= -17;
        }
        this.f1405a.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1407c;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f1406b;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1408d;
    }

    public int c() {
        return this.e;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.h = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.k != c2) {
            this.k = Character.toLowerCase(c2);
            this.f1405a.b(false);
        }
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        if (this.k != c2 || this.l != i) {
            this.k = Character.toLowerCase(c2);
            this.l = KeyEvent.normalizeMetaState(i);
            this.f1405a.b(false);
        }
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.l;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.i;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        if (this.i != c2) {
            this.i = c2;
            this.f1405a.b(false);
        }
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        if (this.i != c2 || this.j != i) {
            this.i = c2;
            this.j = KeyEvent.normalizeMetaState(i);
            this.f1405a.b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.i = c2;
        this.k = Character.toLowerCase(c3);
        this.f1405a.b(false);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.i = c2;
        this.j = KeyEvent.normalizeMetaState(i);
        this.k = Character.toLowerCase(c3);
        this.l = KeyEvent.normalizeMetaState(i2);
        this.f1405a.b(false);
        return this;
    }

    char d() {
        return this.f1405a.b() ? this.k : this.i;
    }

    String e() {
        char cD = d();
        if (cD == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(F);
        switch (cD) {
            case '\b':
                sb.append(H);
                break;
            case '\n':
                sb.append(G);
                break;
            case ' ':
                sb.append(I);
                break;
            default:
                sb.append(cD);
                break;
        }
        return sb.toString();
    }

    boolean f() {
        return this.f1405a.c() && d() != 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.o != null;
    }

    public void a(u uVar) {
        this.o = uVar;
        uVar.setHeaderTitle(getTitle());
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f;
    }

    CharSequence a(p.a aVar) {
        return (aVar == null || !aVar.a()) ? getTitle() : getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f = charSequence;
        this.f1405a.b(false);
        if (this.o != null) {
            this.o.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f1405a.e().getString(i));
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.g != null ? this.g : this.f;
        if (Build.VERSION.SDK_INT < 18 && charSequence != null && !(charSequence instanceof String)) {
            return charSequence.toString();
        }
        return charSequence;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.g = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.f;
        }
        this.f1405a.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        if (this.m != null) {
            return a(this.m);
        }
        if (this.n != 0) {
            Drawable drawableB = android.support.v7.b.a.b.b(this.f1405a.e(), this.n);
            this.n = 0;
            this.m = drawableB;
            return a(drawableB);
        }
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.n = 0;
        this.m = drawable;
        this.x = true;
        this.f1405a.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.m = null;
        this.n = i;
        this.x = true;
        this.f1405a.b(false);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.t = colorStateList;
        this.v = true;
        this.x = true;
        this.f1405a.b(false);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.t;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.u = mode;
        this.w = true;
        this.x = true;
        this.f1405a.b(false);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.u;
    }

    private Drawable a(Drawable drawable) {
        if (drawable != null && this.x && (this.v || this.w)) {
            drawable = android.support.v4.b.a.a.g(drawable).mutate();
            if (this.v) {
                android.support.v4.b.a.a.a(drawable, this.t);
            }
            if (this.w) {
                android.support.v4.b.a.a.a(drawable, this.u);
            }
            this.x = false;
        }
        return drawable;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.y;
        this.y = (z ? 1 : 0) | (this.y & (-2));
        if (i != this.y) {
            this.f1405a.b(false);
        }
        return this;
    }

    public void a(boolean z) {
        this.y = (z ? 4 : 0) | (this.y & (-5));
    }

    public boolean g() {
        return (this.y & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.y & 4) != 0) {
            this.f1405a.a((MenuItem) this);
        } else {
            b(z);
        }
        return this;
    }

    void b(boolean z) {
        int i = this.y;
        this.y = (z ? 2 : 0) | (this.y & (-3));
        if (i != this.y) {
            this.f1405a.b(false);
        }
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.B == null || !this.B.overridesItemVisibility()) ? (this.y & 8) == 0 : (this.y & 8) == 0 && this.B.isVisible();
    }

    boolean c(boolean z) {
        int i = this.y;
        this.y = (z ? 0 : 8) | (this.y & (-9));
        return i != this.y;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (c(z)) {
            this.f1405a.a(this);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.q = onMenuItemClickListener;
        return this;
    }

    public String toString() {
        if (this.f != null) {
            return this.f.toString();
        }
        return null;
    }

    void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    public void h() {
        this.f1405a.b(this);
    }

    public boolean i() {
        return this.f1405a.q();
    }

    public boolean j() {
        return (this.y & 32) == 32;
    }

    public boolean k() {
        return (this.z & 1) == 1;
    }

    public boolean l() {
        return (this.z & 2) == 2;
    }

    public void d(boolean z) {
        if (z) {
            this.y |= 32;
        } else {
            this.y &= -33;
        }
    }

    public boolean m() {
        return (this.z & 4) == 4;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.z = i;
                this.f1405a.b(this);
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public android.support.v4.c.a.b setActionView(View view) {
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && this.f1406b > 0) {
            view.setId(this.f1406b);
        }
        this.f1405a.b(this);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public android.support.v4.c.a.b setActionView(int i) {
        Context contextE = this.f1405a.e();
        setActionView(LayoutInflater.from(contextE).inflate(i, (ViewGroup) new LinearLayout(contextE), false));
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public View getActionView() {
        if (this.A != null) {
            return this.A;
        }
        if (this.B != null) {
            this.A = this.B.onCreateActionView(this);
            return this.A;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.support.v4.c.a.b
    public android.support.v4.view.b a() {
        return this.B;
    }

    @Override // android.support.v4.c.a.b
    public android.support.v4.c.a.b a(android.support.v4.view.b bVar) {
        if (this.B != null) {
            this.B.reset();
        }
        this.A = null;
        this.B = bVar;
        this.f1405a.b(true);
        if (this.B != null) {
            this.B.setVisibilityListener(new b.InterfaceC0029b() { // from class: android.support.v7.view.menu.j.1
                @Override // android.support.v4.view.b.InterfaceC0029b
                public void a(boolean z) {
                    j.this.f1405a.a(j.this);
                }
            });
        }
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public android.support.v4.c.a.b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!n()) {
            return false;
        }
        if (this.C == null || this.C.onMenuItemActionExpand(this)) {
            return this.f1405a.c(this);
        }
        return false;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        if (this.C == null || this.C.onMenuItemActionCollapse(this)) {
            return this.f1405a.d(this);
        }
        return false;
    }

    public boolean n() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null && this.B != null) {
            this.A = this.B.onCreateActionView(this);
        }
        return this.A != null;
    }

    public void e(boolean z) {
        this.D = z;
        this.f1405a.b(false);
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public android.support.v4.c.a.b setContentDescription(CharSequence charSequence) {
        this.r = charSequence;
        this.f1405a.b(false);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.r;
    }

    @Override // android.view.MenuItem
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public android.support.v4.c.a.b setTooltipText(CharSequence charSequence) {
        this.s = charSequence;
        this.f1405a.b(false);
        return this;
    }

    @Override // android.support.v4.c.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.s;
    }
}
