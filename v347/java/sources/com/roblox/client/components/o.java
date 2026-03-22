package com.roblox.client.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.roblox.client.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f6766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f6768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f6769d;
    private float e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean n = false;
    private ValueAnimator o = null;
    private ValueAnimator p = null;
    private ValueAnimator q = null;
    private Rect r = null;
    private final int s = 60;
    private final int t = 10;
    private final int u = 12105912;
    private final int v = 3500;
    private final int w = 300;
    private final float x = 50.0f;

    public o(View view, AttributeSet attributeSet) {
        this.f6766a = null;
        if (view != null) {
            this.f6766a = view;
            if (attributeSet != null) {
                TypedArray typedArrayObtainStyledAttributes = this.f6766a.getContext().obtainStyledAttributes(attributeSet, h.b.RbxRipple);
                this.f6769d = typedArrayObtainStyledAttributes.getFloat(6, 50.0f);
                this.e = this.f6769d;
                this.i = typedArrayObtainStyledAttributes.getInt(2, 3500);
                this.j = typedArrayObtainStyledAttributes.getInt(3, 300);
                this.f = typedArrayObtainStyledAttributes.getInt(4, 60);
                this.g = typedArrayObtainStyledAttributes.getInt(0, 10);
                this.k = typedArrayObtainStyledAttributes.getColor(5, 12105912);
                this.m = typedArrayObtainStyledAttributes.getColor(1, 12105912);
                typedArrayObtainStyledAttributes.recycle();
                return;
            }
            this.f6769d = 50.0f;
            this.e = this.f6769d;
            this.i = 3500;
            this.j = 300;
            this.f = 60;
            this.g = 10;
            this.k = 12105912;
            this.m = 12105912;
        }
    }

    public void a(MotionEvent motionEvent) {
        if (this.r == null) {
            this.r = new Rect();
            this.f6766a.getDrawingRect(this.r);
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.n = true;
                this.f6767b = motionEvent.getX();
                this.f6768c = motionEvent.getY();
                a();
                break;
            case 1:
                b();
                break;
            case 2:
                if (!a((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                    b();
                }
                break;
            case 3:
                b();
                break;
        }
    }

    private boolean a(int i, int i2) {
        int[] iArr = new int[2];
        this.f6766a.getLocationInWindow(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        return i >= i3 && i <= i3 + this.f6766a.getWidth() && i2 >= i4 && i2 <= i4 + this.f6766a.getHeight();
    }

    public void a(Canvas canvas) {
        if (this.n) {
            Paint paint = new Paint(1);
            paint.setColor(this.l);
            paint.setAlpha(this.h);
            canvas.drawCircle(this.f6767b, this.f6768c, this.f6769d, paint);
        }
    }

    private void a() {
        if (d()) {
            c();
        }
        this.f6769d = this.e;
        this.h = this.f;
        this.l = this.k;
        this.o = ValueAnimator.ofFloat(this.f6769d, b((int) this.f6767b, (int) this.f6768c));
        this.o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.o.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                o.this.f6769d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                o.this.f6766a.invalidate();
            }
        });
        this.o.setDuration(this.i);
        this.o.setInterpolator(new android.support.v4.view.b.c());
        this.o.start();
        this.p = ValueAnimator.ofInt(this.h, this.g);
        this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.o.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                o.this.h = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
        });
        this.p.setDuration(this.i);
        this.p.setInterpolator(new android.support.v4.view.b.a());
        this.p.start();
    }

    private void b() {
        if (d()) {
            c();
        }
        this.p = ValueAnimator.ofInt(this.h, 0);
        this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.o.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                o.this.h = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                o.this.f6766a.invalidate();
            }
        });
        this.p.addListener(new AnimatorListenerAdapter() { // from class: com.roblox.client.components.o.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                o.this.n = false;
                o.this.c();
            }
        });
        this.p.setDuration(this.j);
        this.p.setInterpolator(new DecelerateInterpolator());
        this.p.start();
    }

    private float b(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        if (this.r != null) {
            if (i - this.r.left > this.r.right - i) {
                i4 = i - this.r.left;
            } else {
                i4 = this.r.right - i;
            }
            if (i2 - this.r.top > this.r.bottom - i2) {
                i3 = i4;
                i5 = i2 - this.r.top;
            } else {
                i3 = i4;
                i5 = this.r.bottom - i2;
            }
        } else {
            i3 = 0;
        }
        if (i5 <= i3) {
            i5 = i3;
        }
        return i5 + 300.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.o != null) {
            this.o.cancel();
            this.o.removeAllListeners();
        }
        if (this.p != null) {
            this.p.cancel();
            this.p.removeAllListeners();
        }
        if (this.q != null) {
            this.q.cancel();
            this.q.removeAllListeners();
        }
    }

    private boolean d() {
        return this.o != null && this.o.isRunning() && this.p != null && this.p.isRunning() && this.q != null && this.q.isRunning();
    }

    public void a(int i) {
        this.k = i;
    }
}
