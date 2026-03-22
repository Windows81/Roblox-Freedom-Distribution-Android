package android.support.v4.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v4.b.a.c;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class e extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f853d;

    e(Drawable drawable) {
        super(drawable);
        d();
    }

    e(c.a aVar, Resources resources) {
        super(aVar, resources);
        d();
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f847c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f847c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f847c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.f847c.getDirtyBounds();
    }

    @Override // android.support.v4.b.a.c, android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintList(ColorStateList colorStateList) {
        if (c()) {
            super.setTintList(colorStateList);
        } else {
            this.f847c.setTintList(colorStateList);
        }
    }

    @Override // android.support.v4.b.a.c, android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTint(int i) {
        if (c()) {
            super.setTint(i);
        } else {
            this.f847c.setTint(i);
        }
    }

    @Override // android.support.v4.b.a.c, android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintMode(PorterDuff.Mode mode) {
        if (c()) {
            super.setTintMode(mode);
        } else {
            this.f847c.setTintMode(mode);
        }
    }

    @Override // android.support.v4.b.a.c, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.support.v4.b.a.c
    protected boolean c() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f847c;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.support.v4.b.a.d, android.support.v4.b.a.c
    c.a b() {
        return new a(this.f846b, null);
    }

    private static class a extends c.a {
        a(c.a aVar, Resources resources) {
            super(aVar, resources);
        }

        @Override // android.support.v4.b.a.c.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new e(this, resources);
        }
    }

    private void d() {
        if (f853d == null) {
            try {
                f853d = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("DrawableWrapperApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }
}
