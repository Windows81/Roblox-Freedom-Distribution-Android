package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.design.a;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.g;
import android.support.v7.widget.AppCompatImageHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@CoordinatorLayout.b(a = Behavior.class)
public class FloatingActionButton extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorStateList f298d;
    private PorterDuff.Mode e;
    private int f;
    private int g;
    private int h;
    private final Rect i;
    private AppCompatImageHelper j;
    private g k;

    @Override // android.support.design.widget.w, android.widget.ImageView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    public static abstract class a {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f295a = (sizeDimension - this.h) / 2;
        getImpl().e();
        int iMin = Math.min(a(sizeDimension, i), a(sizeDimension, i2));
        setMeasuredDimension(this.f297c.left + iMin + this.f297c.right, iMin + this.f297c.top + this.f297c.bottom);
    }

    public int getRippleColor() {
        return this.f;
    }

    public void setRippleColor(int i) {
        if (this.f != i) {
            this.f = i;
            getImpl().a(i);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f298d;
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f298d != colorStateList) {
            this.f298d = colorStateList;
            getImpl().a(colorStateList);
        }
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.e;
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.e != mode) {
            this.e = mode;
            getImpl().a(mode);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.j.setImageResource(i);
    }

    void a(a aVar, boolean z) {
        getImpl().b(a(aVar), z);
    }

    void b(a aVar, boolean z) {
        getImpl().a(a(aVar), z);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f296b != z) {
            this.f296b = z;
            getImpl().d();
        }
    }

    public boolean getUseCompatPadding() {
        return this.f296b;
    }

    public void setSize(int i) {
        if (i != this.g) {
            this.g = i;
            requestLayout();
        }
    }

    public int getSize() {
        return this.g;
    }

    private g.c a(final a aVar) {
        if (aVar == null) {
            return null;
        }
        return new g.c() { // from class: android.support.design.widget.FloatingActionButton.1
            @Override // android.support.design.widget.g.c
            public void a() {
                aVar.a(FloatingActionButton.this);
            }

            @Override // android.support.design.widget.g.c
            public void b() {
                aVar.b(FloatingActionButton.this);
            }
        };
    }

    int getSizeDimension() {
        return a(this.g);
    }

    private int a(int i) {
        Resources resources = getResources();
        switch (i) {
            case -1:
                if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
                    return a(1);
                }
                return a(0);
            case 0:
            default:
                return resources.getDimensionPixelSize(a.c.design_fab_size_normal);
            case 1:
                return resources.getDimensionPixelSize(a.c.design_fab_size_mini);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().f();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().g();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().b();
    }

    public boolean a(Rect rect) {
        if (!android.support.v4.view.s.v(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        rect.left += this.f297c.left;
        rect.top += this.f297c.top;
        rect.right -= this.f297c.right;
        rect.bottom -= this.f297c.bottom;
        return true;
    }

    public Drawable getContentBackground() {
        return getImpl().c();
    }

    private static int a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(i, size);
            case 0:
            default:
                return i;
            case 1073741824:
                return size;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                if (a(this.i) && !this.i.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public static class Behavior extends CoordinatorLayout.a<FloatingActionButton> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private a f302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f303c;

        public Behavior() {
            this.f303c = true;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.FloatingActionButton_Behavior_Layout);
            this.f303c = typedArrayObtainStyledAttributes.getBoolean(a.j.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public void a(CoordinatorLayout.d dVar) {
            if (dVar.h == 0) {
                dVar.h = 80;
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (a(view)) {
                b(view, floatingActionButton);
                return false;
            }
            return false;
        }

        private static boolean a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.d) {
                return ((CoordinatorLayout.d) layoutParams).b() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean a(View view, FloatingActionButton floatingActionButton) {
            return this.f303c && ((CoordinatorLayout.d) floatingActionButton.getLayoutParams()).a() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f301a == null) {
                this.f301a = new Rect();
            }
            Rect rect = this.f301a;
            r.b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.b(this.f302b, false);
            } else {
                floatingActionButton.a(this.f302b, false);
            }
            return true;
        }

        private boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) floatingActionButton.getLayoutParams();
            if (view.getTop() < dVar.topMargin + (floatingActionButton.getHeight() / 2)) {
                floatingActionButton.b(this.f302b, false);
            } else {
                floatingActionButton.a(this.f302b, false);
            }
            return true;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> listC = coordinatorLayout.c(floatingActionButton);
            int size = listC.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = listC.get(i2);
                if (view instanceof AppBarLayout) {
                    if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (a(view) && b(view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.a(floatingActionButton, i);
            a(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f297c;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        private void a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i;
            int i2 = 0;
            Rect rect = floatingActionButton.f297c;
            if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.d dVar = (CoordinatorLayout.d) floatingActionButton.getLayoutParams();
                if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - dVar.rightMargin) {
                    i = rect.right;
                } else {
                    i = floatingActionButton.getLeft() <= dVar.leftMargin ? -rect.left : 0;
                }
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - dVar.bottomMargin) {
                    i2 = rect.bottom;
                } else if (floatingActionButton.getTop() <= dVar.topMargin) {
                    i2 = -rect.top;
                }
                if (i2 != 0) {
                    android.support.v4.view.s.c(floatingActionButton, i2);
                }
                if (i != 0) {
                    android.support.v4.view.s.d(floatingActionButton, i);
                }
            }
        }
    }

    public float getCompatElevation() {
        return getImpl().a();
    }

    public void setCompatElevation(float f) {
        getImpl().a(f);
    }

    private g getImpl() {
        if (this.k == null) {
            this.k = a();
        }
        return this.k;
    }

    private g a() {
        return Build.VERSION.SDK_INT >= 21 ? new h(this, new b()) : new g(this, new b());
    }

    private class b implements l {
        b() {
        }

        @Override // android.support.design.widget.l
        public float a() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // android.support.design.widget.l
        public void a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f297c.set(i, i2, i3, i4);
            FloatingActionButton.this.setPadding(FloatingActionButton.this.f295a + i, FloatingActionButton.this.f295a + i2, FloatingActionButton.this.f295a + i3, FloatingActionButton.this.f295a + i4);
        }

        @Override // android.support.design.widget.l
        public void a(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // android.support.design.widget.l
        public boolean b() {
            return FloatingActionButton.this.f296b;
        }
    }
}
