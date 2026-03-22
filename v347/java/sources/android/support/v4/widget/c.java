package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.support.v4.view.s;
import android.view.animation.Animation;
import android.widget.ImageView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class c extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation.AnimationListener f1148b;

    c(Context context, int i) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f1147a = (int) (3.5f * f);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            s.a(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new a(this.f1147a));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f1147a, i3, i2, 503316480);
            int i4 = this.f1147a;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        s.a(this, shapeDrawable);
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f1147a * 2), getMeasuredHeight() + (this.f1147a * 2));
        }
    }

    public void a(Animation.AnimationListener animationListener) {
        this.f1148b = animationListener;
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        if (this.f1148b != null) {
            this.f1148b.onAnimationStart(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.f1148b != null) {
            this.f1148b.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }

    private class a extends OvalShape {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RadialGradient f1150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Paint f1151c = new Paint();

        a(int i) {
            c.this.f1147a = i;
            a((int) rect().width());
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            a((int) f);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width = c.this.getWidth();
            int height = c.this.getHeight();
            canvas.drawCircle(width / 2, height / 2, width / 2, this.f1151c);
            canvas.drawCircle(width / 2, height / 2, (width / 2) - c.this.f1147a, paint);
        }

        private void a(int i) {
            this.f1150b = new RadialGradient(i / 2, i / 2, c.this.f1147a, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f1151c.setShader(this.f1150b);
        }
    }
}
