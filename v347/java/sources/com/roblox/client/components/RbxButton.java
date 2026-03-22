package com.roblox.client.components;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Button;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RbxButton extends Button {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RbxButton f6673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    o f6674b;

    public RbxButton(Context context) {
        super(context);
        this.f6673a = null;
        this.f6674b = null;
        this.f6673a = this;
    }

    public RbxButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6673a = null;
        this.f6674b = null;
        m.a(this, context, attributeSet);
        a(attributeSet);
    }

    public RbxButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6673a = null;
        this.f6674b = null;
        m.a(this, context, attributeSet);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        this.f6673a = this;
        this.f6674b = new o(this, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f6674b.a(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.f6674b.a(canvas);
    }
}
