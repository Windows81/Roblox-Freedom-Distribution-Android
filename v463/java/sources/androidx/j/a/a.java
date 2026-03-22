package androidx.j.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.h.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation.AnimationListener f1889b;

    a(Context context, int i) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f1888a = (int) (3.5f * f);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            r.a(this, f * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C0051a(this.f1888a));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f1888a, i3, i2, 503316480);
            int i4 = this.f1888a;
            setPadding(i4, i4, i4, i4);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(i);
        r.a(this, shapeDrawable);
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f1888a * 2), getMeasuredHeight() + (this.f1888a * 2));
    }

    public void a(Animation.AnimationListener animationListener) {
        this.f1889b = animationListener;
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f1889b;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f1889b;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }

    /* JADX INFO: renamed from: androidx.j.a.a$a, reason: collision with other inner class name */
    private class C0051a extends OvalShape {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RadialGradient f1891b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Paint f1892c = new Paint();

        C0051a(int i) {
            a.this.f1888a = i;
            a((int) rect().width());
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            a((int) f);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = a.this.getWidth() / 2;
            float height = a.this.getHeight() / 2;
            canvas.drawCircle(width, height, width, this.f1892c);
            canvas.drawCircle(width, height, r0 - a.this.f1888a, paint);
        }

        private void a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, a.this.f1888a, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f1891b = radialGradient;
            this.f1892c.setShader(radialGradient);
        }
    }
}
