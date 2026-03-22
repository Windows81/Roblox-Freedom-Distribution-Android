package com.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.widget.ImageView;
import com.c.a.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class u extends BitmapDrawable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Paint f3198e = new Paint();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Drawable f3199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f3200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f3201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3202d;
    private final boolean f;
    private final float g;
    private final t.d h;

    static void a(ImageView imageView, Context context, Bitmap bitmap, t.d dVar, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        imageView.setImageDrawable(new u(context, bitmap, drawable, dVar, z, z2));
    }

    static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }

    u(Context context, Bitmap bitmap, Drawable drawable, t.d dVar, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f3202d = 255;
        this.f = z2;
        this.g = context.getResources().getDisplayMetrics().density;
        this.h = dVar;
        if ((dVar == t.d.MEMORY || z) ? false : true) {
            this.f3199a = drawable;
            this.f3201c = true;
            this.f3200b = SystemClock.uptimeMillis();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f3201c) {
            super.draw(canvas);
        } else {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.f3200b) / 200.0f;
            if (fUptimeMillis >= 1.0f) {
                this.f3201c = false;
                this.f3199a = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f3199a;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f3202d * fUptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f3202d);
                if (Build.VERSION.SDK_INT <= 10) {
                    invalidateSelf();
                }
            }
        }
        if (this.f) {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3202d = i;
        Drawable drawable = this.f3199a;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3199a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3199a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    private void a(Canvas canvas) {
        f3198e.setColor(-1);
        canvas.drawPath(a(new Point(0, 0), (int) (this.g * 16.0f)), f3198e);
        f3198e.setColor(this.h.f3192d);
        canvas.drawPath(a(new Point(0, 0), (int) (this.g * 15.0f)), f3198e);
    }

    private static Path a(Point point, int i) {
        Point point2 = new Point(point.x + i, point.y);
        Point point3 = new Point(point.x, point.y + i);
        Path path = new Path();
        path.moveTo(point.x, point.y);
        path.lineTo(point2.x, point2.y);
        path.lineTo(point3.x, point3.y);
        return path;
    }
}
