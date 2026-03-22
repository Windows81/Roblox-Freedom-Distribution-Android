package android.support.v4.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class c extends Drawable implements Drawable.Callback, android.support.v4.b.a.b, f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final PorterDuff.Mode f845a = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f847c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f848d;
    private PorterDuff.Mode e;
    private boolean f;
    private boolean g;

    c(a aVar, Resources resources) {
        this.f846b = aVar;
        a(resources);
    }

    c(Drawable drawable) {
        this.f846b = b();
        a(drawable);
    }

    private void a(Resources resources) {
        if (this.f846b != null && this.f846b.f850b != null) {
            a(a(this.f846b.f850b, resources));
        }
    }

    protected Drawable a(Drawable.ConstantState constantState, Resources resources) {
        return constantState.newDrawable(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f847c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f847c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f847c != null) {
            this.f847c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f847c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return (this.f846b != null ? this.f846b.getChangingConfigurations() : 0) | super.getChangingConfigurations() | this.f847c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f847c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f847c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f847c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f847c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = (!c() || this.f846b == null) ? null : this.f846b.f851c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f847c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return a(iArr) || this.f847c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f847c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f847c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f847c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f847c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f847c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f847c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f847c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f847c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f847c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f847c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f846b == null || !this.f846b.a()) {
            return null;
        }
        this.f846b.f849a = getChangingConfigurations();
        return this.f846b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.g && super.mutate() == this) {
            this.f846b = b();
            if (this.f847c != null) {
                this.f847c.mutate();
            }
            if (this.f846b != null) {
                this.f846b.f850b = this.f847c != null ? this.f847c.getConstantState() : null;
            }
            this.g = true;
        }
        return this;
    }

    a b() {
        return new b(this.f846b, null);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f847c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintList(ColorStateList colorStateList) {
        this.f846b.f851c = colorStateList;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintMode(PorterDuff.Mode mode) {
        this.f846b.f852d = mode;
        a(getState());
    }

    private boolean a(int[] iArr) {
        if (!c()) {
            return false;
        }
        ColorStateList colorStateList = this.f846b.f851c;
        PorterDuff.Mode mode = this.f846b.f852d;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (this.f && colorForState == this.f848d && mode == this.e) {
                return false;
            }
            setColorFilter(colorForState, mode);
            this.f848d = colorForState;
            this.e = mode;
            this.f = true;
            return true;
        }
        this.f = false;
        clearColorFilter();
        return false;
    }

    @Override // android.support.v4.b.a.b
    public final Drawable a() {
        return this.f847c;
    }

    @Override // android.support.v4.b.a.b
    public final void a(Drawable drawable) {
        if (this.f847c != null) {
            this.f847c.setCallback(null);
        }
        this.f847c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            if (this.f846b != null) {
                this.f846b.f850b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    protected boolean c() {
        return true;
    }

    protected static abstract class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Drawable.ConstantState f850b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f851c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f852d;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public abstract Drawable newDrawable(Resources resources);

        a(a aVar, Resources resources) {
            this.f851c = null;
            this.f852d = c.f845a;
            if (aVar != null) {
                this.f849a = aVar.f849a;
                this.f850b = aVar.f850b;
                this.f851c = aVar.f851c;
                this.f852d = aVar.f852d;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return newDrawable(null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return (this.f850b != null ? this.f850b.getChangingConfigurations() : 0) | this.f849a;
        }

        boolean a() {
            return this.f850b != null;
        }
    }

    private static class b extends a {
        b(a aVar, Resources resources) {
            super(aVar, resources);
        }

        @Override // android.support.v4.b.a.c.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new c(this, resources);
        }
    }
}
