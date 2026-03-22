package com.roblox.client.components;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxButton extends Button {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RbxButton f5787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    i f5788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View.OnClickListener f5789c;

    public RbxButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5787a = null;
        this.f5788b = null;
        h.a(this, context, attributeSet);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        this.f5787a = this;
        this.f5788b = new i(this, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f5788b.a(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.f5788b.a(canvas);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f5789c = onClickListener;
    }

    public void a() {
        super.setOnClickListener(null);
    }

    public void b() {
        super.setOnClickListener(this.f5789c);
    }
}
