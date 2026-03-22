package androidx.appcompat.view.menu;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k extends androidx.appcompat.view.menu.c<androidx.core.b.a.b> implements MenuItem {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Method f848c;

    k(Context context, androidx.core.b.a.b bVar) {
        super(context, bVar);
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((androidx.core.b.a.b) this.f805b).getItemId();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((androidx.core.b.a.b) this.f805b).getGroupId();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((androidx.core.b.a.b) this.f805b).getOrder();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        ((androidx.core.b.a.b) this.f805b).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        ((androidx.core.b.a.b) this.f805b).setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return ((androidx.core.b.a.b) this.f805b).getTitle();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((androidx.core.b.a.b) this.f805b).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return ((androidx.core.b.a.b) this.f805b).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        ((androidx.core.b.a.b) this.f805b).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        ((androidx.core.b.a.b) this.f805b).setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return ((androidx.core.b.a.b) this.f805b).getIcon();
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        ((androidx.core.b.a.b) this.f805b).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return ((androidx.core.b.a.b) this.f805b).getIntent();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        ((androidx.core.b.a.b) this.f805b).setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        ((androidx.core.b.a.b) this.f805b).setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        ((androidx.core.b.a.b) this.f805b).setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        ((androidx.core.b.a.b) this.f805b).setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((androidx.core.b.a.b) this.f805b).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return ((androidx.core.b.a.b) this.f805b).getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        ((androidx.core.b.a.b) this.f805b).setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        ((androidx.core.b.a.b) this.f805b).setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((androidx.core.b.a.b) this.f805b).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return ((androidx.core.b.a.b) this.f805b).getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        ((androidx.core.b.a.b) this.f805b).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((androidx.core.b.a.b) this.f805b).isCheckable();
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        ((androidx.core.b.a.b) this.f805b).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((androidx.core.b.a.b) this.f805b).isChecked();
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return ((androidx.core.b.a.b) this.f805b).setVisible(z);
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((androidx.core.b.a.b) this.f805b).isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        ((androidx.core.b.a.b) this.f805b).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((androidx.core.b.a.b) this.f805b).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((androidx.core.b.a.b) this.f805b).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return a(((androidx.core.b.a.b) this.f805b).getSubMenu());
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((androidx.core.b.a.b) this.f805b).setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((androidx.core.b.a.b) this.f805b).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        ((androidx.core.b.a.b) this.f805b).setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        ((androidx.core.b.a.b) this.f805b).setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        ((androidx.core.b.a.b) this.f805b).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        ((androidx.core.b.a.b) this.f805b).setActionView(i);
        View actionView = ((androidx.core.b.a.b) this.f805b).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((androidx.core.b.a.b) this.f805b).setActionView(new b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = ((androidx.core.b.a.b) this.f805b).getActionView();
        return actionView instanceof b ? ((b) actionView).a() : actionView;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((androidx.core.b.a.b) this.f805b).a(actionProvider != null ? a(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        androidx.core.h.b bVarA = ((androidx.core.b.a.b) this.f805b).a();
        if (bVarA instanceof a) {
            return ((a) bVarA).f849a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return ((androidx.core.b.a.b) this.f805b).expandActionView();
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return ((androidx.core.b.a.b) this.f805b).collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((androidx.core.b.a.b) this.f805b).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((androidx.core.b.a.b) this.f805b).setOnActionExpandListener(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        ((androidx.core.b.a.b) this.f805b).setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return ((androidx.core.b.a.b) this.f805b).getContentDescription();
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        ((androidx.core.b.a.b) this.f805b).setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return ((androidx.core.b.a.b) this.f805b).getTooltipText();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        ((androidx.core.b.a.b) this.f805b).setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return ((androidx.core.b.a.b) this.f805b).getIconTintList();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        ((androidx.core.b.a.b) this.f805b).setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return ((androidx.core.b.a.b) this.f805b).getIconTintMode();
    }

    public void a(boolean z) {
        try {
            if (this.f848c == null) {
                this.f848c = ((androidx.core.b.a.b) this.f805b).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f848c.invoke(this.f805b, Boolean.valueOf(z));
        } catch (Exception e2) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
        }
    }

    a a(ActionProvider actionProvider) {
        return new a(this.f802a, actionProvider);
    }

    private class d extends androidx.appcompat.view.menu.d<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.f805b).onMenuItemClick(k.this.a(menuItem));
        }
    }

    private class c extends androidx.appcompat.view.menu.d<MenuItem.OnActionExpandListener> implements MenuItem.OnActionExpandListener {
        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f805b).onMenuItemActionExpand(k.this.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f805b).onMenuItemActionCollapse(k.this.a(menuItem));
        }
    }

    class a extends androidx.core.h.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionProvider f849a;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f849a = actionProvider;
        }

        @Override // androidx.core.h.b
        public View onCreateActionView() {
            return this.f849a.onCreateActionView();
        }

        @Override // androidx.core.h.b
        public boolean onPerformDefaultAction() {
            return this.f849a.onPerformDefaultAction();
        }

        @Override // androidx.core.h.b
        public boolean hasSubMenu() {
            return this.f849a.hasSubMenu();
        }

        @Override // androidx.core.h.b
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.f849a.onPrepareSubMenu(k.this.a(subMenu));
        }
    }

    static class b extends FrameLayout implements androidx.appcompat.view.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final CollapsibleActionView f851a;

        /* JADX WARN: Multi-variable type inference failed */
        b(View view) {
            super(view.getContext());
            this.f851a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.c
        public void onActionViewExpanded() {
            this.f851a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.c
        public void onActionViewCollapsed() {
            this.f851a.onActionViewCollapsed();
        }

        View a() {
            return (View) this.f851a;
        }
    }
}
