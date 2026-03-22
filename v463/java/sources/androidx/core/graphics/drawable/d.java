package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d extends Drawable implements Drawable.Callback, androidx.core.graphics.drawable.b, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final PorterDuff.Mode f1445a = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f1446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f1447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PorterDuff.Mode f1449e;
    private boolean f;
    private boolean g;

    protected boolean c() {
        return true;
    }

    d(a aVar, Resources resources) {
        this.f1446b = aVar;
        a(resources);
    }

    d(Drawable drawable) {
        this.f1446b = b();
        a(drawable);
    }

    private void a(Resources resources) {
        a aVar = this.f1446b;
        if (aVar == null || aVar.f1451b == null) {
            return;
        }
        a(this.f1446b.f1451b.newDrawable(resources));
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1447c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1447c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1447c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1447c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        a aVar = this.f1446b;
        return changingConfigurations | (aVar != null ? aVar.getChangingConfigurations() : 0) | this.f1447c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1447c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1447c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1447c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1447c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        a aVar;
        ColorStateList colorStateList = (!c() || (aVar = this.f1446b) == null) ? null : aVar.f1452c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1447c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return a(iArr) || this.f1447c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f1447c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1447c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1447c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1447c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f1447c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1447c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1447c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1447c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1447c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f1447c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f1447c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1447c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        a aVar = this.f1446b;
        if (aVar == null || !aVar.a()) {
            return null;
        }
        this.f1446b.f1450a = getChangingConfigurations();
        return this.f1446b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.g && super.mutate() == this) {
            this.f1446b = b();
            Drawable drawable = this.f1447c;
            if (drawable != null) {
                drawable.mutate();
            }
            a aVar = this.f1446b;
            if (aVar != null) {
                Drawable drawable2 = this.f1447c;
                aVar.f1451b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.g = true;
        }
        return this;
    }

    a b() {
        return new b(this.f1446b, null);
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
        return this.f1447c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f1446b.f1452c = colorStateList;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1446b.f1453d = mode;
        a(getState());
    }

    private boolean a(int[] iArr) {
        if (!c()) {
            return false;
        }
        ColorStateList colorStateList = this.f1446b.f1452c;
        PorterDuff.Mode mode = this.f1446b.f1453d;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f || colorForState != this.f1448d || mode != this.f1449e) {
                setColorFilter(colorForState, mode);
                this.f1448d = colorForState;
                this.f1449e = mode;
                this.f = true;
                return true;
            }
        } else {
            this.f = false;
            clearColorFilter();
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.c
    public final Drawable a() {
        return this.f1447c;
    }

    @Override // androidx.core.graphics.drawable.c
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f1447c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1447c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            a aVar = this.f1446b;
            if (aVar != null) {
                aVar.f1451b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    protected static abstract class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1450a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Drawable.ConstantState f1451b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f1452c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f1453d;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public abstract Drawable newDrawable(Resources resources);

        a(a aVar, Resources resources) {
            this.f1452c = null;
            this.f1453d = d.f1445a;
            if (aVar != null) {
                this.f1450a = aVar.f1450a;
                this.f1451b = aVar.f1451b;
                this.f1452c = aVar.f1452c;
                this.f1453d = aVar.f1453d;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return newDrawable(null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i = this.f1450a;
            Drawable.ConstantState constantState = this.f1451b;
            return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
        }

        boolean a() {
            return this.f1451b != null;
        }
    }

    private static class b extends a {
        b(a aVar, Resources resources) {
            super(aVar, resources);
        }

        @Override // androidx.core.graphics.drawable.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }
    }
}
