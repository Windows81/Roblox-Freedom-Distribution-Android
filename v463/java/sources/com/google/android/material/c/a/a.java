package com.google.android.material.c.a;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.google.android.material.c.c;
import com.google.android.material.c.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends androidx.b.a.a implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f4903d;

    @Override // com.google.android.material.c.d
    public void a() {
        this.f4903d.a();
    }

    @Override // com.google.android.material.c.d
    public void b() {
        this.f4903d.b();
    }

    @Override // com.google.android.material.c.d
    public void setRevealInfo(d.C0109d c0109d) {
        this.f4903d.a(c0109d);
    }

    @Override // com.google.android.material.c.d
    public d.C0109d getRevealInfo() {
        return this.f4903d.c();
    }

    @Override // com.google.android.material.c.d
    public void setCircularRevealScrimColor(int i) {
        this.f4903d.a(i);
    }

    @Override // com.google.android.material.c.d
    public int getCircularRevealScrimColor() {
        return this.f4903d.d();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f4903d.e();
    }

    @Override // com.google.android.material.c.d
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f4903d.a(drawable);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        c cVar = this.f4903d;
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
        c cVar = this.f4903d;
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
