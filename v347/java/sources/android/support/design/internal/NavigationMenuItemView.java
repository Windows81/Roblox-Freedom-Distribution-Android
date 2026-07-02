package android.support.design.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.design.a;
import android.support.v4.view.a.b;
import android.support.v4.view.s;
import android.support.v4.widget.n;
import android.support.v7.a.a;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.p;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.TooltipCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends a implements p.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f245d = {R.attr.state_checked};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f246c;
    private final int e;
    private boolean f;
    private final CheckedTextView g;
    private FrameLayout h;
    private j i;
    private ColorStateList j;
    private boolean k;
    private Drawable l;
    private final android.support.v4.view.a m;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = new android.support.v4.view.a() { // from class: android.support.design.internal.NavigationMenuItemView.1
            @Override // android.support.v4.view.a
            public void onInitializeAccessibilityNodeInfo(View view, b bVar) {
                super.onInitializeAccessibilityNodeInfo(view, bVar);
                bVar.a(NavigationMenuItemView.this.f246c);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(a.g.design_navigation_menu_item, (ViewGroup) this, true);
        this.e = context.getResources().getDimensionPixelSize(a.c.design_navigation_icon_size);
        this.g = (CheckedTextView) findViewById(a.e.design_menu_item_text);
        this.g.setDuplicateParentStateEnabled(true);
        s.a(this.g, this.m);
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.i = jVar;
        setVisibility(jVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            s.a(this, d());
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
            if (this.h != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) this.h.getLayoutParams();
                layoutParams.width = -1;
                this.h.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.g.setVisibility(0);
        if (this.h != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) this.h.getLayoutParams();
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
        if (!getContext().getTheme().resolveAttribute(a.C0032a.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f245d, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.i;
    }

    public void setTitle(CharSequence charSequence) {
        this.g.setText(charSequence);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f246c != z) {
            this.f246c = z;
            this.m.sendAccessibilityEvent(this.g, RecyclerView.ItemAnimator.FLAG_MOVED);
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
                drawable = android.support.v4.b.a.a.g(drawable).mutate();
                android.support.v4.b.a.a.a(drawable, this.j);
            }
            drawable.setBounds(0, 0, this.e, this.e);
        } else if (this.f) {
            if (this.l == null) {
                this.l = android.support.v4.a.a.b.a(getResources(), a.d.navigation_empty_icon, getContext().getTheme());
                if (this.l != null) {
                    this.l.setBounds(0, 0, this.e, this.e);
                }
            }
            drawable = this.l;
        }
        n.a(this.g, drawable, null, null, null);
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.i != null && this.i.isCheckable() && this.i.isChecked()) {
            mergeDrawableStates(iArrOnCreateDrawableState, f245d);
        }
        return iArrOnCreateDrawableState;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.k = this.j != null;
        if (this.i != null) {
            setIcon(this.i.getIcon());
        }
    }

    public void setTextAppearance(int i) {
        n.a(this.g, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.g.setTextColor(colorStateList);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f = z;
    }
}
