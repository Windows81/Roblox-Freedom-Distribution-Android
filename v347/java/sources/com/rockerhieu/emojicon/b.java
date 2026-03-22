package com.rockerhieu.emojicon;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends DynamicDrawableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f8064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f8067d;
    private int e;
    private int f;
    private int g;
    private Drawable h;
    private WeakReference<Drawable> i;

    public b(Context context, int i, int i2, int i3, int i4) {
        super(i3);
        this.f8064a = context;
        this.f8065b = i;
        this.f8066c = i2;
        this.e = i2;
        this.f = i2;
        this.f8067d = i4;
    }

    @Override // android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        if (this.h == null) {
            try {
                this.h = this.f8064a.getResources().getDrawable(this.f8065b);
                this.e = this.f8066c;
                this.f = (this.e * this.h.getIntrinsicWidth()) / this.h.getIntrinsicHeight();
                this.g = (this.f8067d - this.e) / 2;
                this.h.setBounds(0, this.g, this.f, this.g + this.e);
            } catch (Exception e) {
            }
        }
        return this.h;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Drawable drawableA = a();
        canvas.save();
        int i6 = i5 - drawableA.getBounds().bottom;
        if (this.mVerticalAlignment == 1) {
            i6 = ((((i5 - i3) / 2) + i3) - ((drawableA.getBounds().bottom - drawableA.getBounds().top) / 2)) - this.g;
        }
        canvas.translate(f, i6);
        drawableA.draw(canvas);
        canvas.restore();
    }

    private Drawable a() {
        if (this.i == null || this.i.get() == null) {
            this.i = new WeakReference<>(getDrawable());
        }
        return this.i.get();
    }
}
