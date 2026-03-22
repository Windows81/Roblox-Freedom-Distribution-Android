package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.h.r;
import androidx.core.widget.i;
import com.google.android.material.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NavigationMenuItemView extends c implements p.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f4988d = {R.attr.state_checked};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f4989c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4990e;
    private boolean f;
    private final CheckedTextView g;
    private FrameLayout h;
    private j i;
    private ColorStateList j;
    private boolean k;
    private Drawable l;
    private final androidx.core.h.a m;

    @Override // androidx.appcompat.view.menu.p.a
    public boolean a() {
        return false;
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = new androidx.core.h.a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.h.a
            public void a(View view, androidx.core.h.a.c cVar) {
                super.a(view, cVar);
                cVar.a(NavigationMenuItemView.this.f4989c);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(a.g.design_navigation_menu_item, (ViewGroup) this, true);
        this.f4990e = context.getResources().getDimensionPixelSize(a.c.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(a.e.design_menu_item_text);
        this.g = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        r.a(this.g, this.m);
    }

    @Override // androidx.appcompat.view.menu.p.a
    public void a(j jVar, int i) {
        this.i = jVar;
        setVisibility(jVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            r.a(this, d());
        }
        setCheckable(jVar.isCheckable());
        setChecked(jVar.isChecked());
        setEnabled(jVar.isEnabled());
        setTitle(jVar.getTitle());
        setIcon(jVar.getIcon());
        setActionView(jVar.getActionView());
        setContentDescription(jVar.getContentDescription());
        TooltipCompat.setTooltipText(this, jVar.getTooltipText());
        c();
    }

    private boolean b() {
        return this.i.getTitle() == null && this.i.getIcon() == null && this.i.getActionView() != null;
    }

    private void c() {
        if (b()) {
            this.g.setVisibility(8);
            FrameLayout frameLayout = this.h;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                layoutParams.width = -1;
                this.h.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.g.setVisibility(0);
        FrameLayout frameLayout2 = this.h;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            layoutParams2.width = -2;
            this.h.setLayoutParams(layoutParams2);
        }
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.h == null) {
                this.h = (FrameLayout) ((ViewStub) findViewById(a.e.design_menu_item_action_area_stub)).inflate();
            }
            this.h.removeAllViews();
            this.h.addView(view);
        }
    }

    private StateListDrawable d() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(a.C0012a.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f4988d, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // androidx.appcompat.view.menu.p.a
    public j getItemData() {
        return this.i;
    }

    public void setTitle(CharSequence charSequence) {
        this.g.setText(charSequence);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f4989c != z) {
            this.f4989c = z;
            this.m.a(this.g, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.g.setChecked(z);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.k) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.g(drawable).mutate();
                androidx.core.graphics.drawable.a.a(drawable, this.j);
            }
            int i = this.f4990e;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f) {
            if (this.l == null) {
                Drawable drawableA = androidx.core.a.a.f.a(getResources(), a.d.navigation_empty_icon, getContext().getTheme());
                this.l = drawableA;
                if (drawableA != null) {
                    int i2 = this.f4990e;
                    drawableA.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.l;
        }
        i.a(this.g, drawable, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        j jVar = this.i;
        if (jVar != null && jVar.isCheckable() && this.i.isChecked()) {
            mergeDrawableStates(iArrOnCreateDrawableState, f4988d);
        }
        return iArrOnCreateDrawableState;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.k = colorStateList != null;
        j jVar = this.i;
        if (jVar != null) {
            setIcon(jVar.getIcon());
        }
    }

    public void setTextAppearance(int i) {
        i.a(this.g, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.g.setTextColor(colorStateList);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f = z;
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIconPadding(int i) {
        this.g.setCompoundDrawablePadding(i);
    }
}
