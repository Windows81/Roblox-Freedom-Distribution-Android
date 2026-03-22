package com.roblox.client.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RbxLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f6699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f6702d;
    private float e;
    private Integer f;

    public RbxLinearLayout(Context context) {
        super(context);
        this.f6699a = null;
        this.f6700b = 20.0f;
        this.f6701c = false;
        this.f = 0;
        this.f6699a = new o(this, null);
    }

    public RbxLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6699a = null;
        this.f6700b = 20.0f;
        this.f6701c = false;
        this.f = 0;
        this.f6699a = new o(this, attributeSet);
        this.f6699a.a(getResources().getColor(2131034129));
    }

    public RbxLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6699a = null;
        this.f6700b = 20.0f;
        this.f6701c = false;
        this.f = 0;
        this.f6699a = new o(this, attributeSet);
        this.f6699a.a(getResources().getColor(2131034129));
    }

    public float getXFraction() {
        return getX() / getWidth();
    }

    public void setXFraction(float f) {
        int width = getWidth();
        setX(width > 0 ? width * f : -9999.0f);
    }

    public float getYFraction() {
        return getY() / getHeight();
    }

    public void setYFraction(float f) {
        int height = getHeight();
        setY(height > 0 ? height * f : -9999.0f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f6701c) {
            Paint paint = new Paint(1);
            paint.setColor(this.f.intValue());
            canvas.drawCircle(this.f6702d, this.e, this.f6700b, paint);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }
}
