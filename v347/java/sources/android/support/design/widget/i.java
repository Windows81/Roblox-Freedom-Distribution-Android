package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;

/* JADX INFO: loaded from: classes.dex */
abstract class i<V extends View> extends s<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    OverScroller f417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f420d;
    private int e;
    private int f;
    private VelocityTracker g;

    public i() {
        this.f420d = -1;
        this.f = -1;
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f420d = -1;
        this.f = -1;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f < 0) {
            this.f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.f419c) {
            return true;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f419c = false;
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (c(v) && coordinatorLayout.a(v, x, y)) {
                    this.e = y;
                    this.f420d = motionEvent.getPointerId(0);
                    d();
                }
                break;
            case 1:
            case 3:
                this.f419c = false;
                this.f420d = -1;
                if (this.g != null) {
                    this.g.recycle();
                    this.g = null;
                }
                break;
            case 2:
                int i = this.f420d;
                if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                    int y2 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y2 - this.e) > this.f) {
                        this.f419c = true;
                        this.e = y2;
                    }
                }
                break;
        }
        if (this.g != null) {
            this.g.addMovement(motionEvent);
        }
        return this.f419c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    @Override // android.support.design.widget.CoordinatorLayout.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(android.support.design.widget.CoordinatorLayout r10, V r11, android.view.MotionEvent r12) {
        /*
            r9 = this;
            r7 = 1
            r8 = -1
            r5 = 0
            int r0 = r9.f
            if (r0 >= 0) goto L15
            android.content.Context r0 = r10.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r9.f = r0
        L15:
            int r0 = r12.getActionMasked()
            switch(r0) {
                case 0: goto L27;
                case 1: goto L82;
                case 2: goto L49;
                case 3: goto La5;
                default: goto L1c;
            }
        L1c:
            android.view.VelocityTracker r0 = r9.g
            if (r0 == 0) goto L25
            android.view.VelocityTracker r0 = r9.g
            r0.addMovement(r12)
        L25:
            r5 = r7
        L26:
            return r5
        L27:
            float r0 = r12.getX()
            int r0 = (int) r0
            float r1 = r12.getY()
            int r1 = (int) r1
            boolean r0 = r10.a(r11, r0, r1)
            if (r0 == 0) goto L26
            boolean r0 = r9.c(r11)
            if (r0 == 0) goto L26
            r9.e = r1
            int r0 = r12.getPointerId(r5)
            r9.f420d = r0
            r9.d()
            goto L1c
        L49:
            int r0 = r9.f420d
            int r0 = r12.findPointerIndex(r0)
            if (r0 == r8) goto L26
            float r0 = r12.getY(r0)
            int r0 = (int) r0
            int r1 = r9.e
            int r3 = r1 - r0
            boolean r1 = r9.f419c
            if (r1 != 0) goto L6d
            int r1 = java.lang.Math.abs(r3)
            int r2 = r9.f
            if (r1 <= r2) goto L6d
            r9.f419c = r7
            if (r3 <= 0) goto L7e
            int r1 = r9.f
            int r3 = r3 - r1
        L6d:
            boolean r1 = r9.f419c
            if (r1 == 0) goto L1c
            r9.e = r0
            int r4 = r9.b(r11)
            r0 = r9
            r1 = r10
            r2 = r11
            r0.b(r1, r2, r3, r4, r5)
            goto L1c
        L7e:
            int r1 = r9.f
            int r3 = r3 + r1
            goto L6d
        L82:
            android.view.VelocityTracker r0 = r9.g
            if (r0 == 0) goto La5
            android.view.VelocityTracker r0 = r9.g
            r0.addMovement(r12)
            android.view.VelocityTracker r0 = r9.g
            r1 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r1)
            android.view.VelocityTracker r0 = r9.g
            int r1 = r9.f420d
            float r6 = r0.getYVelocity(r1)
            int r0 = r9.a(r11)
            int r4 = -r0
            r1 = r9
            r2 = r10
            r3 = r11
            r1.a(r2, r3, r4, r5, r6)
        La5:
            r9.f419c = r5
            r9.f420d = r8
            android.view.VelocityTracker r0 = r9.g
            if (r0 == 0) goto L1c
            android.view.VelocityTracker r0 = r9.g
            r0.recycle()
            r0 = 0
            r9.g = r0
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.i.b(android.support.design.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    int a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return a(coordinatorLayout, (View) v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int iA;
        int iB = b();
        if (i2 == 0 || iB < i2 || iB > i3 || iB == (iA = android.support.v4.d.a.a(i, i2, i3))) {
            return 0;
        }
        a(iA);
        return iB - iA;
    }

    int a() {
        return b();
    }

    final int b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return a(coordinatorLayout, (View) v, a() - i, i2, i3);
    }

    final boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        if (this.f418b != null) {
            v.removeCallbacks(this.f418b);
            this.f418b = null;
        }
        if (this.f417a == null) {
            this.f417a = new OverScroller(v.getContext());
        }
        this.f417a.fling(0, b(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f417a.computeScrollOffset()) {
            this.f418b = new a(coordinatorLayout, v);
            android.support.v4.view.s.a(v, this.f418b);
            return true;
        }
        a(coordinatorLayout, v);
        return false;
    }

    void a(CoordinatorLayout coordinatorLayout, V v) {
    }

    boolean c(V v) {
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

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CoordinatorLayout f422b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final V f423c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.f422b = coordinatorLayout;
            this.f423c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f423c != null && i.this.f417a != null) {
                if (i.this.f417a.computeScrollOffset()) {
                    i.this.a_(this.f422b, this.f423c, i.this.f417a.getCurrY());
                    android.support.v4.view.s.a(this.f423c, this);
                } else {
                    i.this.a(this.f422b, this.f423c);
                }
            }
        }
    }
}
