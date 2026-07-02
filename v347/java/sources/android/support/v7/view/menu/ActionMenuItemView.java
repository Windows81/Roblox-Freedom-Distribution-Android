package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v7.a.a;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.p;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.ForwardingListener;
import android.support.v7.widget.TooltipCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements p.a, ActionMenuView.ActionMenuChildView, View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f1350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h.b f1351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b f1352d;
    private CharSequence e;
    private Drawable f;
    private ForwardingListener g;
    private boolean h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    public static abstract class b {
        public abstract s a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.h = c();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActionMenuItemView, i, 0);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.l = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.k = -1;
        setSaveEnabled(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.h = c();
        d();
    }

    private boolean c() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.k = i;
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.f1350b;
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.f1350b = jVar;
        setIcon(jVar.getIcon());
        setTitle(jVar.a((p.a) this));
        setId(jVar.getItemId());
        setVisibility(jVar.isVisible() ? 0 : 8);
        setEnabled(jVar.isEnabled());
        if (jVar.hasSubMenu() && this.g == null) {
            this.g = new a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1350b.hasSubMenu() && this.g != null && this.g.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f1351c != null) {
            this.f1351c.invokeItem(this.f1350b);
        }
    }

    public void setItemInvoker(h.b bVar) {
        this.f1351c = bVar;
    }

    public void setPopupCallback(b bVar) {
        this.f1352d = bVar;
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.i != z) {
            this.i = z;
            if (this.f1350b != null) {
                this.f1350b.h();
            }
        }
    }

    private void d() {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(this.e);
        if (this.f == null || (this.f1350b.m() && (this.h || this.i))) {
            z = true;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.e : null);
        CharSequence contentDescription = this.f1350b.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z3 ? null : this.f1350b.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f1350b.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            TooltipCompat.setTooltipText(this, z3 ? null : this.f1350b.getTitle());
        } else {
            TooltipCompat.setTooltipText(this, tooltipText);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > this.l) {
                float f = this.l / intrinsicWidth;
                intrinsicWidth = this.l;
                intrinsicHeight = (int) (intrinsicHeight * f);
            }
            if (intrinsicHeight > this.l) {
                float f2 = this.l / intrinsicHeight;
                intrinsicHeight = this.l;
                intrinsicWidth = (int) (intrinsicWidth * f2);
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        d();
    }

    public boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    public void setTitle(CharSequence charSequence) {
        this.e = charSequence;
        d();
    }

    @Override // android.support.v7.widget.ActionMenuView.ActionMenuChildView
    public boolean needsDividerBefore() {
        return b() && this.f1350b.getIcon() == null;
    }

    @Override // android.support.v7.widget.ActionMenuView.ActionMenuChildView
    public boolean needsDividerAfter() {
        return b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean zB = b();
        if (zB && this.k >= 0) {
            super.setPadding(this.k, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.j) : this.j;
        if (mode != 1073741824 && this.j > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (!zB && this.f != null) {
            super.setPadding((getMeasuredWidth() - this.f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    private class a extends ForwardingListener {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // android.support.v7.widget.ForwardingListener
        public s getPopup() {
            if (ActionMenuItemView.this.f1352d != null) {
                return ActionMenuItemView.this.f1352d.a();
            }
            return null;
        }

        @Override // android.support.v7.widget.ForwardingListener
        protected boolean onForwardingStarted() {
            s popup;
            return ActionMenuItemView.this.f1351c != null && ActionMenuItemView.this.f1351c.invokeItem(ActionMenuItemView.this.f1350b) && (popup = getPopup()) != null && popup.isShowing();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }
}
