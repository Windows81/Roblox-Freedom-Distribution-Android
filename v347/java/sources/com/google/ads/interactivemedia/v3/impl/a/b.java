package com.google.ads.interactivemedia.v3.impl.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f2794b;

    private static class a extends ShapeDrawable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Paint f2795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Paint f2796b;

        public a() {
            super(new Shape() { // from class: com.google.ads.interactivemedia.v3.impl.a.b.a.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private Path f2797a;

                @Override // android.graphics.drawable.shapes.Shape
                public void onResize(float f, float f2) {
                    this.f2797a = new Path();
                    this.f2797a.moveTo(getWidth(), getHeight());
                    this.f2797a.lineTo(6, getHeight());
                    this.f2797a.arcTo(new RectF(0.0f, getHeight() - 12, 12, getHeight()), 90.0f, 90.0f);
                    this.f2797a.lineTo(0.0f, 6);
                    this.f2797a.arcTo(new RectF(0.0f, 0.0f, 12, 12), 180.0f, 90.0f);
                    this.f2797a.lineTo(getWidth(), 0.0f);
                }

                @Override // android.graphics.drawable.shapes.Shape
                public void draw(Canvas canvas, Paint paint) {
                    canvas.drawPath(this.f2797a, paint);
                }
            });
            this.f2795a = new Paint();
            this.f2795a.setAntiAlias(true);
            this.f2795a.setStyle(Paint.Style.STROKE);
            this.f2795a.setStrokeWidth(1.0f);
            this.f2795a.setARGB(150, 255, 255, 255);
            this.f2796b = new Paint();
            this.f2796b.setStyle(Paint.Style.FILL);
            this.f2796b.setColor(-16777216);
            this.f2796b.setAlpha(140);
        }

        @Override // android.graphics.drawable.ShapeDrawable
        protected void onDraw(Shape shape, Canvas canvas, Paint paint) {
            shape.draw(canvas, this.f2796b);
            shape.draw(canvas, this.f2795a);
        }
    }

    public b(Context context, d dVar) {
        super(context);
        this.f2793a = getResources().getDisplayMetrics().density;
        setBackgroundDrawable(new a());
        int iA = a(dVar.t, this.f2793a);
        setPadding(iA, iA, iA, iA);
        this.f2794b = new TextView(context);
        this.f2794b.setTextColor(-3355444);
        this.f2794b.setIncludeFontPadding(false);
        this.f2794b.setGravity(17);
        addView(this.f2794b);
    }

    private int a(int i, float f) {
        return (int) ((i * f) + 0.5f);
    }

    public void a(String str) {
        this.f2794b.setText(str);
    }
}
