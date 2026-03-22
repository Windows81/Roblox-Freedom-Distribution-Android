package com.google.android.material.c;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.c.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f4906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f4907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Path f4908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f4909e;
    private final Paint f;
    private d.C0109d g;
    private Drawable h;
    private boolean i;
    private boolean j;

    interface a {
        void a(Canvas canvas);

        boolean c();
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f4905a = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            f4905a = 1;
        } else {
            f4905a = 0;
        }
    }

    public void a() {
        if (f4905a == 0) {
            this.i = true;
            this.j = false;
            this.f4907c.buildDrawingCache();
            Bitmap drawingCache = this.f4907c.getDrawingCache();
            if (drawingCache == null && this.f4907c.getWidth() != 0 && this.f4907c.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f4907c.getWidth(), this.f4907c.getHeight(), Bitmap.Config.ARGB_8888);
                this.f4907c.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                this.f4909e.setShader(new BitmapShader(drawingCache, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            }
            this.i = false;
            this.j = true;
        }
    }

    public void b() {
        if (f4905a == 0) {
            this.j = false;
            this.f4907c.destroyDrawingCache();
            this.f4909e.setShader(null);
            this.f4907c.invalidate();
        }
    }

    public void a(d.C0109d c0109d) {
        if (c0109d == null) {
            this.g = null;
        } else {
            d.C0109d c0109d2 = this.g;
            if (c0109d2 == null) {
                this.g = new d.C0109d(c0109d);
            } else {
                c0109d2.a(c0109d);
            }
            if (com.google.android.material.e.a.b(c0109d.f4916c, b(c0109d), 1.0E-4f)) {
                this.g.f4916c = Float.MAX_VALUE;
            }
        }
        g();
    }

    public d.C0109d c() {
        d.C0109d c0109d = this.g;
        if (c0109d == null) {
            return null;
        }
        d.C0109d c0109d2 = new d.C0109d(c0109d);
        if (c0109d2.a()) {
            c0109d2.f4916c = b(c0109d2);
        }
        return c0109d2;
    }

    public void a(int i) {
        this.f.setColor(i);
        this.f4907c.invalidate();
    }

    public int d() {
        return this.f.getColor();
    }

    public Drawable e() {
        return this.h;
    }

    public void a(Drawable drawable) {
        this.h = drawable;
        this.f4907c.invalidate();
    }

    private void g() {
        if (f4905a == 1) {
            this.f4908d.rewind();
            d.C0109d c0109d = this.g;
            if (c0109d != null) {
                this.f4908d.addCircle(c0109d.f4914a, this.g.f4915b, this.g.f4916c, Path.Direction.CW);
            }
        }
        this.f4907c.invalidate();
    }

    private float b(d.C0109d c0109d) {
        return com.google.android.material.e.a.a(c0109d.f4914a, c0109d.f4915b, 0.0f, 0.0f, this.f4907c.getWidth(), this.f4907c.getHeight());
    }

    public void a(Canvas canvas) {
        if (h()) {
            int i = f4905a;
            if (i == 0) {
                canvas.drawCircle(this.g.f4914a, this.g.f4915b, this.g.f4916c, this.f4909e);
                if (i()) {
                    canvas.drawCircle(this.g.f4914a, this.g.f4915b, this.g.f4916c, this.f);
                }
            } else if (i == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.f4908d);
                this.f4906b.a(canvas);
                if (i()) {
                    canvas.drawRect(0.0f, 0.0f, this.f4907c.getWidth(), this.f4907c.getHeight(), this.f);
                }
                canvas.restoreToCount(iSave);
            } else if (i == 2) {
                this.f4906b.a(canvas);
                if (i()) {
                    canvas.drawRect(0.0f, 0.0f, this.f4907c.getWidth(), this.f4907c.getHeight(), this.f);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + f4905a);
            }
        } else {
            this.f4906b.a(canvas);
            if (i()) {
                canvas.drawRect(0.0f, 0.0f, this.f4907c.getWidth(), this.f4907c.getHeight(), this.f);
            }
        }
        b(canvas);
    }

    private void b(Canvas canvas) {
        if (j()) {
            Rect bounds = this.h.getBounds();
            float fWidth = this.g.f4914a - (bounds.width() / 2.0f);
            float fHeight = this.g.f4915b - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.h.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    public boolean f() {
        return this.f4906b.c() && !h();
    }

    private boolean h() {
        d.C0109d c0109d = this.g;
        boolean z = c0109d == null || c0109d.a();
        return f4905a == 0 ? !z && this.j : !z;
    }

    private boolean i() {
        return (this.i || Color.alpha(this.f.getColor()) == 0) ? false : true;
    }

    private boolean j() {
        return (this.i || this.h == null || this.g == null) ? false : true;
    }
}
