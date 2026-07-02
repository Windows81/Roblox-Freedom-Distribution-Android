package com.d.a;

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
import com.d.a.t;

/* JADX INFO: loaded from: classes.dex */
final class u extends BitmapDrawable {
    private static final Paint e = new Paint();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Drawable f2536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f2537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2539d;
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
        this.f2539d = 255;
        this.f = z2;
        this.g = context.getResources().getDisplayMetrics().density;
        this.h = dVar;
        if ((dVar == t.d.MEMORY || z) ? false : true) {
            this.f2536a = drawable;
            this.f2538c = true;
            this.f2537b = SystemClock.uptimeMillis();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f2538c) {
            super.draw(canvas);
        } else {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.f2537b) / 200.0f;
            if (fUptimeMillis >= 1.0f) {
                this.f2538c = false;
                this.f2536a = null;
                super.draw(canvas);
            } else {
                if (this.f2536a != null) {
                    this.f2536a.draw(canvas);
                }
                super.setAlpha((int) (fUptimeMillis * this.f2539d));
                super.draw(canvas);
                super.setAlpha(this.f2539d);
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
        this.f2539d = i;
        if (this.f2536a != null) {
            this.f2536a.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f2536a != null) {
            this.f2536a.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2536a != null) {
            this.f2536a.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    private void a(Canvas canvas) {
        e.setColor(-1);
        canvas.drawPath(a(new Point(0, 0), (int) (16.0f * this.g)), e);
        e.setColor(this.h.f2530d);
        canvas.drawPath(a(new Point(0, 0), (int) (15.0f * this.g)), e);
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
