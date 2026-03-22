package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class a<V extends View> extends c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    OverScroller f4814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f4815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4818e;
    private int f;
    private VelocityTracker g;

    boolean c(V v) {
        return false;
    }

    void e(CoordinatorLayout coordinatorLayout, V v) {
    }

    public a() {
        this.f4817d = -1;
        this.f = -1;
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4817d = -1;
        this.f = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            int r0 = r4.f
            if (r0 >= 0) goto L12
            android.content.Context r0 = r5.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r4.f = r0
        L12:
            int r0 = r7.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L1f
            boolean r0 = r4.f4816c
            if (r0 == 0) goto L1f
            return r2
        L1f:
            int r0 = r7.getActionMasked()
            r3 = 0
            if (r0 == 0) goto L60
            r5 = -1
            if (r0 == r2) goto L51
            if (r0 == r1) goto L2f
            r6 = 3
            if (r0 == r6) goto L51
            goto L83
        L2f:
            int r6 = r4.f4817d
            if (r6 != r5) goto L34
            goto L83
        L34:
            int r6 = r7.findPointerIndex(r6)
            if (r6 != r5) goto L3b
            goto L83
        L3b:
            float r5 = r7.getY(r6)
            int r5 = (int) r5
            int r6 = r4.f4818e
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r4.f
            if (r6 <= r0) goto L83
            r4.f4816c = r2
            r4.f4818e = r5
            goto L83
        L51:
            r4.f4816c = r3
            r4.f4817d = r5
            android.view.VelocityTracker r5 = r4.g
            if (r5 == 0) goto L83
            r5.recycle()
            r5 = 0
            r4.g = r5
            goto L83
        L60:
            r4.f4816c = r3
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r2 = r4.c(r6)
            if (r2 == 0) goto L83
            boolean r5 = r5.a(r6, r0, r1)
            if (r5 == 0) goto L83
            r4.f4818e = r1
            int r5 = r7.getPointerId(r3)
            r4.f4817d = r5
            r4.d()
        L83:
            android.view.VelocityTracker r5 = r4.g
            if (r5 == 0) goto L8a
            r5.addMovement(r7)
        L8a:
            boolean r5 = r4.f4816c
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.a.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f < 0) {
            this.f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (!coordinatorLayout.a(v, x, y) || !c(v)) {
                return false;
            }
            this.f4818e = y;
            this.f4817d = motionEvent.getPointerId(0);
            d();
        } else {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.g;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.g.computeCurrentVelocity(1000);
                    a(coordinatorLayout, v, -a(v), 0, this.g.getYVelocity(this.f4817d));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f4817d);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                int i = this.f4818e - y2;
                if (!this.f4816c) {
                    int iAbs = Math.abs(i);
                    int i2 = this.f;
                    if (iAbs > i2) {
                        this.f4816c = true;
                        i = i > 0 ? i - i2 : i + i2;
                    }
                }
                int i3 = i;
                if (this.f4816c) {
                    this.f4818e = y2;
                    b(coordinatorLayout, v, i3, b(v), 0);
                }
            } else if (actionMasked == 3) {
            }
            this.f4816c = false;
            this.f4817d = -1;
            VelocityTracker velocityTracker2 = this.g;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.g = null;
            }
        }
        VelocityTracker velocityTracker3 = this.g;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    int a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return a(coordinatorLayout, (View) v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int iA;
        int iC = c();
        if (i2 == 0 || iC < i2 || iC > i3 || iC == (iA = androidx.core.c.a.a(i, i2, i3))) {
            return 0;
        }
        a(iA);
        return iC - iA;
    }

    int b() {
        return c();
    }

    final int b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return a(coordinatorLayout, (View) v, b() - i, i2, i3);
    }

    final boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        Runnable runnable = this.f4815b;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f4815b = null;
        }
        if (this.f4814a == null) {
            this.f4814a = new OverScroller(v.getContext());
        }
        this.f4814a.fling(0, c(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f4814a.computeScrollOffset()) {
            RunnableC0108a runnableC0108a = new RunnableC0108a(coordinatorLayout, v);
            this.f4815b = runnableC0108a;
            r.a(v, runnableC0108a);
            return true;
        }
        e(coordinatorLayout, v);
        return false;
    }

    int b(V v) {
        return -v.getHeight();
    }

    int a(V v) {
        return v.getHeight();
    }

    private void d() {
        if (this.g == null) {
            this.g = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.appbar.a$a, reason: collision with other inner class name */
    private class RunnableC0108a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CoordinatorLayout f4820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final V f4821c;

        RunnableC0108a(CoordinatorLayout coordinatorLayout, V v) {
            this.f4820b = coordinatorLayout;
            this.f4821c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4821c == null || a.this.f4814a == null) {
                return;
            }
            if (a.this.f4814a.computeScrollOffset()) {
                a aVar = a.this;
                aVar.a_(this.f4820b, this.f4821c, aVar.f4814a.getCurrY());
                r.a(this.f4821c, this);
                return;
            }
            a.this.e(this.f4820b, this.f4821c);
        }
    }
}
