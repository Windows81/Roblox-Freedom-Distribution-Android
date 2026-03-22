package androidx.b.a;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends FrameLayout {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f1043d = {R.attr.colorBackground};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final f f1044e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f1047c;
    private boolean f;
    private boolean g;
    private final e h;

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1044e = new c();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f1044e = new b();
        } else {
            f1044e = new d();
        }
        f1044e.a();
    }

    public boolean getUseCompatPadding() {
        return this.f;
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f != z) {
            this.f = z;
            f1044e.g(this.h);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!(f1044e instanceof c)) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1044e.b(this.h)), View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1044e.c(this.h)), View.MeasureSpec.getSize(i2)), mode2);
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1045a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1046b = i;
        super.setMinimumHeight(i);
    }

    public void setCardBackgroundColor(int i) {
        f1044e.a(this.h, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f1044e.a(this.h, colorStateList);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1044e.i(this.h);
    }

    public int getContentPaddingLeft() {
        return this.f1047c.left;
    }

    public int getContentPaddingRight() {
        return this.f1047c.right;
    }

    public int getContentPaddingTop() {
        return this.f1047c.top;
    }

    public int getContentPaddingBottom() {
        return this.f1047c.bottom;
    }

    public void setRadius(float f) {
        f1044e.a(this.h, f);
    }

    public float getRadius() {
        return f1044e.d(this.h);
    }

    public void setCardElevation(float f) {
        f1044e.c(this.h, f);
    }

    public float getCardElevation() {
        return f1044e.e(this.h);
    }

    public void setMaxCardElevation(float f) {
        f1044e.b(this.h, f);
    }

    public float getMaxCardElevation() {
        return f1044e.a(this.h);
    }

    public boolean getPreventCornerOverlap() {
        return this.g;
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.g) {
            this.g = z;
            f1044e.h(this.h);
        }
    }
}
