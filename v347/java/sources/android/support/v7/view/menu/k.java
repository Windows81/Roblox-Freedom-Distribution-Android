package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k extends android.support.v7.view.menu.c<android.support.v4.c.a.b> implements MenuItem {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Method f1410c;

    k(Context context, android.support.v4.c.a.b bVar) {
        super(context, bVar);
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((android.support.v4.c.a.b) this.f1372b).getItemId();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((android.support.v4.c.a.b) this.f1372b).getGroupId();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((android.support.v4.c.a.b) this.f1372b).getOrder();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        ((android.support.v4.c.a.b) this.f1372b).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        ((android.support.v4.c.a.b) this.f1372b).setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return ((android.support.v4.c.a.b) this.f1372b).getTitle();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((android.support.v4.c.a.b) this.f1372b).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return ((android.support.v4.c.a.b) this.f1372b).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        ((android.support.v4.c.a.b) this.f1372b).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        ((android.support.v4.c.a.b) this.f1372b).setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return ((android.support.v4.c.a.b) this.f1372b).getIcon();
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        ((android.support.v4.c.a.b) this.f1372b).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return ((android.support.v4.c.a.b) this.f1372b).getIntent();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        ((android.support.v4.c.a.b) this.f1372b).setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        ((android.support.v4.c.a.b) this.f1372b).setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        ((android.support.v4.c.a.b) this.f1372b).setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        ((android.support.v4.c.a.b) this.f1372b).setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((android.support.v4.c.a.b) this.f1372b).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return ((android.support.v4.c.a.b) this.f1372b).getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        ((android.support.v4.c.a.b) this.f1372b).setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        ((android.support.v4.c.a.b) this.f1372b).setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((android.support.v4.c.a.b) this.f1372b).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return ((android.support.v4.c.a.b) this.f1372b).getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        ((android.support.v4.c.a.b) this.f1372b).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((android.support.v4.c.a.b) this.f1372b).isCheckable();
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        ((android.support.v4.c.a.b) this.f1372b).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((android.support.v4.c.a.b) this.f1372b).isChecked();
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return ((android.support.v4.c.a.b) this.f1372b).setVisible(z);
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((android.support.v4.c.a.b) this.f1372b).isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        ((android.support.v4.c.a.b) this.f1372b).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((android.support.v4.c.a.b) this.f1372b).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((android.support.v4.c.a.b) this.f1372b).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return a(((android.support.v4.c.a.b) this.f1372b).getSubMenu());
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((android.support.v4.c.a.b) this.f1372b).setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((android.support.v4.c.a.b) this.f1372b).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        ((android.support.v4.c.a.b) this.f1372b).setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        ((android.support.v4.c.a.b) this.f1372b).setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        ((android.support.v4.c.a.b) this.f1372b).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        ((android.support.v4.c.a.b) this.f1372b).setActionView(i);
        View actionView = ((android.support.v4.c.a.b) this.f1372b).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((android.support.v4.c.a.b) this.f1372b).setActionView(new b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = ((android.support.v4.c.a.b) this.f1372b).getActionView();
        if (actionView instanceof b) {
            return ((b) actionView).a();
        }
        return actionView;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((android.support.v4.c.a.b) this.f1372b).a(actionProvider != null ? a(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        android.support.v4.view.b bVarA = ((android.support.v4.c.a.b) this.f1372b).a();
        if (bVarA instanceof a) {
            return ((a) bVarA).f1411a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return ((android.support.v4.c.a.b) this.f1372b).expandActionView();
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return ((android.support.v4.c.a.b) this.f1372b).collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((android.support.v4.c.a.b) this.f1372b).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((android.support.v4.c.a.b) this.f1372b).setOnActionExpandListener(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        ((android.support.v4.c.a.b) this.f1372b).setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return ((android.support.v4.c.a.b) this.f1372b).getContentDescription();
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        ((android.support.v4.c.a.b) this.f1372b).setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return ((android.support.v4.c.a.b) this.f1372b).getTooltipText();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        ((android.support.v4.c.a.b) this.f1372b).setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return ((android.support.v4.c.a.b) this.f1372b).getIconTintList();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        ((android.support.v4.c.a.b) this.f1372b).setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return ((android.support.v4.c.a.b) this.f1372b).getIconTintMode();
    }

    public void a(boolean z) {
        try {
            if (this.f1410c == null) {
                this.f1410c = ((android.support.v4.c.a.b) this.f1372b).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f1410c.invoke(this.f1372b, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    a a(ActionProvider actionProvider) {
        return new a(this.f1369a, actionProvider);
    }

    private class d extends android.support.v7.view.menu.d<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.f1372b).onMenuItemClick(k.this.a(menuItem));
        }
    }

    private class c extends android.support.v7.view.menu.d<MenuItem.OnActionExpandListener> implements MenuItem.OnActionExpandListener {
        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f1372b).onMenuItemActionExpand(k.this.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f1372b).onMenuItemActionCollapse(k.this.a(menuItem));
        }
    }

    class a extends android.support.v4.view.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionProvider f1411a;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f1411a = actionProvider;
        }

        @Override // android.support.v4.view.b
        public View onCreateActionView() {
            return this.f1411a.onCreateActionView();
        }

        @Override // android.support.v4.view.b
        public boolean onPerformDefaultAction() {
            return this.f1411a.onPerformDefaultAction();
        }

        @Override // android.support.v4.view.b
        public boolean hasSubMenu() {
            return this.f1411a.hasSubMenu();
        }

        @Override // android.support.v4.view.b
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.f1411a.onPrepareSubMenu(k.this.a(subMenu));
        }
    }

    static class b extends FrameLayout implements android.support.v7.view.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final CollapsibleActionView f1413a;

        /* JADX WARN: Multi-variable type inference failed */
        b(View view) {
            super(view.getContext());
            this.f1413a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // android.support.v7.view.c
        public void onActionViewExpanded() {
            this.f1413a.onActionViewExpanded();
        }

        @Override // android.support.v7.view.c
        public void onActionViewCollapsed() {
            this.f1413a.onActionViewCollapsed();
        }

        View a() {
            return (View) this.f1413a;
        }
    }
}
