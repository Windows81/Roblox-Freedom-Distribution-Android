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
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f5875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f5876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f5877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f5878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5879e;
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

    public i(View view, AttributeSet attributeSet) {
        this.f5875a = null;
        if (view != null) {
            this.f5875a = view;
            if (attributeSet != null) {
                TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, o.l.RbxRipple);
                float f = typedArrayObtainStyledAttributes.getFloat(o.l.RbxRipple_startingRadius, 50.0f);
                this.f5878d = f;
                this.f5879e = f;
                this.i = typedArrayObtainStyledAttributes.getInt(o.l.RbxRipple_expandDuration, 3500);
                this.j = typedArrayObtainStyledAttributes.getInt(o.l.RbxRipple_fadeDuration, 300);
                this.f = typedArrayObtainStyledAttributes.getInt(o.l.RbxRipple_startAlpha, 60);
                this.g = typedArrayObtainStyledAttributes.getInt(o.l.RbxRipple_endAlpha, 10);
                this.k = typedArrayObtainStyledAttributes.getColor(o.l.RbxRipple_startingColor, 12105912);
                this.m = typedArrayObtainStyledAttributes.getColor(o.l.RbxRipple_endColor, 12105912);
                typedArrayObtainStyledAttributes.recycle();
                return;
            }
            this.f5878d = 50.0f;
            this.f5879e = 50.0f;
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
            Rect rect = new Rect();
            this.r = rect;
            this.f5875a.getDrawingRect(rect);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.n = true;
            this.f5876b = motionEvent.getX();
            this.f5877c = motionEvent.getY();
            a();
            return;
        }
        if (action == 1) {
            b();
            return;
        }
        if (action != 2) {
            if (action != 3) {
                return;
            }
            b();
        } else {
            if (a((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                return;
            }
            b();
        }
    }

    private boolean a(int i, int i2) {
        int[] iArr = new int[2];
        this.f5875a.getLocationInWindow(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        return i >= i3 && i <= i3 + this.f5875a.getWidth() && i2 >= i4 && i2 <= i4 + this.f5875a.getHeight();
    }

    public void a(Canvas canvas) {
        if (this.n) {
            Paint paint = new Paint(1);
            paint.setColor(this.l);
            paint.setAlpha(this.h);
            canvas.drawCircle(this.f5876b, this.f5877c, this.f5878d, paint);
        }
    }

    private void a() {
        if (d()) {
            c();
        }
        float f = this.f5879e;
        this.f5878d = f;
        this.h = this.f;
        this.l = this.k;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, b((int) this.f5876b, (int) this.f5877c));
        this.o = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.i.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                i.this.f5878d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                i.this.f5875a.invalidate();
            }
        });
        this.o.setDuration(this.i);
        this.o.setInterpolator(new androidx.e.a.a.c());
        this.o.start();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.h, this.g);
        this.p = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.i.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                i.this.h = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
        });
        this.p.setDuration(this.i);
        this.p.setInterpolator(new androidx.e.a.a.a());
        this.p.start();
    }

    private void b() {
        if (d()) {
            c();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.h, 0);
        this.p = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.i.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                i.this.h = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                i.this.f5875a.invalidate();
            }
        });
        this.p.addListener(new AnimatorListenerAdapter() { // from class: com.roblox.client.components.i.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                i.this.n = false;
                i.this.c();
            }
        });
        this.p.setDuration(this.j);
        this.p.setInterpolator(new DecelerateInterpolator());
        this.p.start();
    }

    private float b(int i, int i2) {
        int i3;
        int i4;
        int i5;
        Rect rect = this.r;
        int i6 = 0;
        if (rect != null) {
            if (i - rect.left > this.r.right - i) {
                i4 = i - this.r.left;
            } else {
                i4 = this.r.right - i;
            }
            if (i2 - this.r.top > this.r.bottom - i2) {
                i5 = i2 - this.r.top;
            } else {
                i5 = this.r.bottom - i2;
            }
            int i7 = i4;
            i6 = i5;
            i3 = i7;
        } else {
            i3 = 0;
        }
        if (i6 <= i3) {
            i6 = i3;
        }
        return i6 + 300.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o.removeAllListeners();
        }
        ValueAnimator valueAnimator2 = this.p;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.p.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.q;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.q.removeAllListeners();
        }
    }

    private boolean d() {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        ValueAnimator valueAnimator3 = this.o;
        return valueAnimator3 != null && valueAnimator3.isRunning() && (valueAnimator = this.p) != null && valueAnimator.isRunning() && (valueAnimator2 = this.q) != null && valueAnimator2.isRunning();
    }

    public void a(int i) {
        this.k = i;
    }
}
