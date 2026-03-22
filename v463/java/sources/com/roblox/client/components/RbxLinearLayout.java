package com.roblox.client.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f5819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f5820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f5822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5823e;
    private Integer f;

    public RbxLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5819a = null;
        this.f5820b = 20.0f;
        this.f5821c = false;
        this.f = 0;
        i iVar = new i(this, attributeSet);
        this.f5819a = iVar;
        iVar.a(getResources().getColor(o.c.RbxGreen2));
    }

    public float getXFraction() {
        return getX() / getWidth();
    }

    public void setXFraction(float f) {
        int width = getWidth();
        setX(width > 0 ? f * width : -9999.0f);
    }

    public float getYFraction() {
        return getY() / getHeight();
    }

    public void setYFraction(float f) {
        int height = getHeight();
        setY(height > 0 ? f * height : -9999.0f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f5821c) {
            Paint paint = new Paint(1);
            paint.setColor(this.f.intValue());
            canvas.drawCircle(this.f5822d, this.f5823e, this.f5820b, paint);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }
}
