package de.hdodenhof.circleimageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import de.hdodenhof.circleimageview.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CircleImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ImageView.ScaleType f7809a = ImageView.ScaleType.CENTER_CROP;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Bitmap.Config f7810b = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f7811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f7812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Matrix f7813e;
    private final Paint f;
    private final Paint g;
    private final Paint h;
    private int i;
    private int j;
    private int k;
    private Bitmap l;
    private BitmapShader m;
    private int n;
    private int o;
    private float p;
    private float q;
    private ColorFilter r;
    private boolean s;
    private boolean t;
    private boolean u;

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7811c = new RectF();
        this.f7812d = new RectF();
        this.f7813e = new Matrix();
        this.f = new Paint();
        this.g = new Paint();
        this.h = new Paint();
        this.i = -16777216;
        this.j = 0;
        this.k = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.C0186a.CircleImageView, i, 0);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.C0186a.CircleImageView_civ_border_width, 0);
        this.i = typedArrayObtainStyledAttributes.getColor(a.C0186a.CircleImageView_civ_border_color, -16777216);
        this.u = typedArrayObtainStyledAttributes.getBoolean(a.C0186a.CircleImageView_civ_border_overlay, false);
        this.k = typedArrayObtainStyledAttributes.getColor(a.C0186a.CircleImageView_civ_fill_color, 0);
        typedArrayObtainStyledAttributes.recycle();
        a();
    }

    private void a() {
        super.setScaleType(f7809a);
        this.s = true;
        if (this.t) {
            b();
            this.t = false;
        }
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f7809a;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != f7809a) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.l == null) {
            return;
        }
        if (this.k != 0) {
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, this.p, this.h);
        }
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, this.p, this.f);
        if (this.j != 0) {
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, this.q, this.g);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        b();
    }

    public int getBorderColor() {
        return this.i;
    }

    public void setBorderColor(int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        this.g.setColor(i);
        invalidate();
    }

    public void setBorderColorResource(int i) {
        setBorderColor(getContext().getResources().getColor(i));
    }

    public int getFillColor() {
        return this.k;
    }

    public void setFillColor(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        this.h.setColor(i);
        invalidate();
    }

    public void setFillColorResource(int i) {
        setFillColor(getContext().getResources().getColor(i));
    }

    public int getBorderWidth() {
        return this.j;
    }

    public void setBorderWidth(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        b();
    }

    public void setBorderOverlay(boolean z) {
        if (z == this.u) {
            return;
        }
        this.u = z;
        b();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.l = bitmap;
        b();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.l = a(drawable);
        b();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        this.l = a(getDrawable());
        b();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        this.l = uri != null ? a(getDrawable()) : null;
        b();
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.r) {
            return;
        }
        this.r = colorFilter;
        this.f.setColorFilter(colorFilter);
        invalidate();
    }

    private Bitmap a(Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            if (drawable instanceof ColorDrawable) {
                bitmapCreateBitmap = Bitmap.createBitmap(2, 2, f7810b);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f7810b);
            }
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void b() {
        if (!this.s) {
            this.t = true;
            return;
        }
        if (getWidth() == 0 && getHeight() == 0) {
            return;
        }
        if (this.l == null) {
            invalidate();
            return;
        }
        this.m = new BitmapShader(this.l, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        this.f.setAntiAlias(true);
        this.f.setShader(this.m);
        this.g.setStyle(Paint.Style.STROKE);
        this.g.setAntiAlias(true);
        this.g.setColor(this.i);
        this.g.setStrokeWidth(this.j);
        this.h.setStyle(Paint.Style.FILL);
        this.h.setAntiAlias(true);
        this.h.setColor(this.k);
        this.o = this.l.getHeight();
        this.n = this.l.getWidth();
        this.f7812d.set(0.0f, 0.0f, getWidth(), getHeight());
        this.q = Math.min((this.f7812d.height() - this.j) / 2.0f, (this.f7812d.width() - this.j) / 2.0f);
        this.f7811c.set(this.f7812d);
        if (!this.u) {
            RectF rectF = this.f7811c;
            int i = this.j;
            rectF.inset(i, i);
        }
        this.p = Math.min(this.f7811c.height() / 2.0f, this.f7811c.width() / 2.0f);
        c();
        invalidate();
    }

    private void c() {
        float fWidth;
        float fHeight;
        this.f7813e.set(null);
        float fWidth2 = 0.0f;
        if (this.n * this.f7811c.height() > this.f7811c.width() * this.o) {
            fWidth = this.f7811c.height() / this.o;
            fWidth2 = (this.f7811c.width() - (this.n * fWidth)) * 0.5f;
            fHeight = 0.0f;
        } else {
            fWidth = this.f7811c.width() / this.n;
            fHeight = (this.f7811c.height() - (this.o * fWidth)) * 0.5f;
        }
        this.f7813e.setScale(fWidth, fWidth);
        this.f7813e.postTranslate(((int) (fWidth2 + 0.5f)) + this.f7811c.left, ((int) (fHeight + 0.5f)) + this.f7811c.top);
        this.m.setLocalMatrix(this.f7813e);
    }
}
