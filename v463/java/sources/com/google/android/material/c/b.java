package com.google.android.material.c;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import com.google.android.material.c.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends FrameLayout implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f4904a;

    @Override // com.google.android.material.c.d
    public void a() {
        this.f4904a.a();
    }

    @Override // com.google.android.material.c.d
    public void b() {
        this.f4904a.b();
    }

    @Override // com.google.android.material.c.d
    public d.C0109d getRevealInfo() {
        return this.f4904a.c();
    }

    @Override // com.google.android.material.c.d
    public void setRevealInfo(d.C0109d c0109d) {
        this.f4904a.a(c0109d);
    }

    @Override // com.google.android.material.c.d
    public int getCircularRevealScrimColor() {
        return this.f4904a.d();
    }

    @Override // com.google.android.material.c.d
    public void setCircularRevealScrimColor(int i) {
        this.f4904a.a(i);
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f4904a.e();
    }

    @Override // com.google.android.material.c.d
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f4904a.a(drawable);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        c cVar = this.f4904a;
        if (cVar != null) {
            cVar.a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.c.c.a
    public void a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View
    public boolean isOpaque() {
        c cVar = this.f4904a;
        if (cVar != null) {
            return cVar.f();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.c.c.a
    public boolean c() {
        return super.isOpaque();
    }
}
