package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.s;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class q {
    private static final Interpolator v = new Interpolator() { // from class: android.support.v4.widget.q.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1186b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f1188d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private OverScroller q;
    private final a r;
    private View s;
    private boolean t;
    private final ViewGroup u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1187c = -1;
    private final Runnable w = new Runnable() { // from class: android.support.v4.widget.q.2
        @Override // java.lang.Runnable
        public void run() {
            q.this.b(0);
        }
    };

    public static abstract class a {
        public abstract boolean a(View view, int i);

        public void a(int i) {
        }

        public void a(View view, int i, int i2, int i3, int i4) {
        }

        public void b(View view, int i) {
        }

        public void a(View view, float f, float f2) {
        }

        public void a(int i, int i2) {
        }

        public boolean b(int i) {
            return false;
        }

        public void b(int i, int i2) {
        }

        public int c(int i) {
            return i;
        }

        public int b(View view) {
            return 0;
        }

        public int a(View view) {
            return 0;
        }

        public int b(View view, int i, int i2) {
            return 0;
        }

        public int a(View view, int i, int i2) {
            return 0;
        }
    }

    public static q a(ViewGroup viewGroup, a aVar) {
        return new q(viewGroup.getContext(), viewGroup, aVar);
    }

    public static q a(ViewGroup viewGroup, float f, a aVar) {
        q qVarA = a(viewGroup, aVar);
        qVarA.f1186b = (int) (qVarA.f1186b * (1.0f / f));
        return qVarA;
    }

    private q(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.u = viewGroup;
        this.r = aVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f1186b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = new OverScroller(context, v);
    }

    public void a(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.s = view;
        this.f1187c = i;
        this.r.b(view, i);
        b(1);
    }

    public int a() {
        return this.f1186b;
    }

    public void b() {
        this.f1187c = -1;
        c();
        if (this.l != null) {
            this.l.recycle();
            this.l = null;
        }
    }

    public boolean a(View view, int i, int i2) {
        this.s = view;
        this.f1187c = -1;
        boolean zA = a(i, i2, 0, 0);
        if (!zA && this.f1185a == 0 && this.s != null) {
            this.s = null;
        }
        return zA;
    }

    public boolean a(int i, int i2) {
        if (!this.t) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return a(i, i2, (int) this.l.getXVelocity(this.f1187c), (int) this.l.getYVelocity(this.f1187c));
    }

    private boolean a(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.abortAnimation();
            b(0);
            return false;
        }
        this.q.startScroll(left, top, i5, i6, a(this.s, i5, i6, i3, i4));
        b(2);
        return true;
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        int iB = b(i3, (int) this.n, (int) this.m);
        int iB2 = b(i4, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(i2);
        int iAbs3 = Math.abs(iB);
        int iAbs4 = Math.abs(iB2);
        int i5 = iAbs3 + iAbs4;
        int i6 = iAbs + iAbs2;
        return (int) (((iB2 != 0 ? iAbs4 / i5 : iAbs2 / i6) * a(i2, iB2, this.r.a(view))) + ((iB != 0 ? iAbs3 / i5 : iAbs / i6) * a(i, iB, this.r.b(view))));
    }

    private int a(int i, int i2, int i3) {
        int iAbs;
        if (i == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        int i4 = width / 2;
        float fA = (a(Math.min(1.0f, Math.abs(i) / width)) * i4) + i4;
        int iAbs2 = Math.abs(i2);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fA / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(iAbs, 600);
    }

    private int b(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        return iAbs > i3 ? i <= 0 ? -i3 : i3 : i;
    }

    private float a(float f, float f2, float f3) {
        float fAbs = Math.abs(f);
        if (fAbs < f2) {
            return 0.0f;
        }
        return fAbs > f3 ? f <= 0.0f ? -f3 : f3 : f;
    }

    private float a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    public boolean a(boolean z) {
        boolean z2;
        if (this.f1185a == 2) {
            boolean zComputeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                s.d(this.s, left);
            }
            if (top != 0) {
                s.c(this.s, top);
            }
            if (left != 0 || top != 0) {
                this.r.a(this.s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                z2 = false;
            } else {
                z2 = zComputeScrollOffset;
            }
            if (!z2) {
                if (z) {
                    this.u.post(this.w);
                } else {
                    b(0);
                }
            }
        }
        return this.f1185a == 2;
    }

    private void a(float f, float f2) {
        this.t = true;
        this.r.a(this.s, f, f2);
        this.t = false;
        if (this.f1185a == 1) {
            b(0);
        }
    }

    private void c() {
        if (this.f1188d != null) {
            Arrays.fill(this.f1188d, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
    }

    private void c(int i) {
        if (this.f1188d != null && a(i)) {
            this.f1188d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.g[i] = 0.0f;
            this.h[i] = 0;
            this.i[i] = 0;
            this.j[i] = 0;
            this.k &= (1 << i) ^ (-1);
        }
    }

    private void d(int i) {
        if (this.f1188d == null || this.f1188d.length <= i) {
            float[] fArr = new float[i + 1];
            float[] fArr2 = new float[i + 1];
            float[] fArr3 = new float[i + 1];
            float[] fArr4 = new float[i + 1];
            int[] iArr = new int[i + 1];
            int[] iArr2 = new int[i + 1];
            int[] iArr3 = new int[i + 1];
            if (this.f1188d != null) {
                System.arraycopy(this.f1188d, 0, fArr, 0, this.f1188d.length);
                System.arraycopy(this.e, 0, fArr2, 0, this.e.length);
                System.arraycopy(this.f, 0, fArr3, 0, this.f.length);
                System.arraycopy(this.g, 0, fArr4, 0, this.g.length);
                System.arraycopy(this.h, 0, iArr, 0, this.h.length);
                System.arraycopy(this.i, 0, iArr2, 0, this.i.length);
                System.arraycopy(this.j, 0, iArr3, 0, this.j.length);
            }
            this.f1188d = fArr;
            this.e = fArr2;
            this.f = fArr3;
            this.g = fArr4;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
    }

    private void a(float f, float f2, int i) {
        d(i);
        float[] fArr = this.f1188d;
        this.f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.e;
        this.g[i] = f2;
        fArr2[i] = f2;
        this.h[i] = d((int) f, (int) f2);
        this.k |= 1 << i;
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (e(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    public boolean a(int i) {
        return (this.k & (1 << i)) != 0;
    }

    void b(int i) {
        this.u.removeCallbacks(this.w);
        if (this.f1185a != i) {
            this.f1185a = i;
            this.r.a(i);
            if (this.f1185a == 0) {
                this.s = null;
            }
        }
    }

    boolean b(View view, int i) {
        if (view == this.s && this.f1187c == i) {
            return true;
        }
        if (view != null && this.r.a(view, i)) {
            this.f1187c = i;
            a(view, i);
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.q.a(android.view.MotionEvent):boolean");
    }

    public void b(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int pointerId = motionEvent.getPointerId(0);
                View viewC = c((int) x, (int) y);
                a(x, y, pointerId);
                b(viewC, pointerId);
                int i3 = this.h[pointerId];
                if ((this.p & i3) != 0) {
                    this.r.a(i3 & this.p, pointerId);
                }
                break;
            case 1:
                if (this.f1185a == 1) {
                    d();
                }
                b();
                break;
            case 2:
                if (this.f1185a == 1) {
                    if (e(this.f1187c)) {
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.f1187c);
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        int i4 = (int) (x2 - this.f[this.f1187c]);
                        int i5 = (int) (y2 - this.g[this.f1187c]);
                        b(this.s.getLeft() + i4, this.s.getTop() + i5, i4, i5);
                        c(motionEvent);
                    }
                } else {
                    int pointerCount = motionEvent.getPointerCount();
                    while (i2 < pointerCount) {
                        int pointerId2 = motionEvent.getPointerId(i2);
                        if (e(pointerId2)) {
                            float x3 = motionEvent.getX(i2);
                            float y3 = motionEvent.getY(i2);
                            float f = x3 - this.f1188d[pointerId2];
                            float f2 = y3 - this.e[pointerId2];
                            b(f, f2, pointerId2);
                            if (this.f1185a != 1) {
                                View viewC2 = c((int) x3, (int) y3);
                                if (!a(viewC2, f, f2) || !b(viewC2, pointerId2)) {
                                }
                            }
                            c(motionEvent);
                            break;
                        }
                        i2++;
                    }
                    c(motionEvent);
                }
                break;
            case 3:
                if (this.f1185a == 1) {
                    a(0.0f, 0.0f);
                }
                b();
                break;
            case 5:
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                float x4 = motionEvent.getX(actionIndex);
                float y4 = motionEvent.getY(actionIndex);
                a(x4, y4, pointerId3);
                if (this.f1185a == 0) {
                    b(c((int) x4, (int) y4), pointerId3);
                    int i6 = this.h[pointerId3];
                    if ((this.p & i6) != 0) {
                        this.r.a(i6 & this.p, pointerId3);
                    }
                } else if (b((int) x4, (int) y4)) {
                    b(this.s, pointerId3);
                }
                break;
            case 6:
                int pointerId4 = motionEvent.getPointerId(actionIndex);
                if (this.f1185a == 1 && pointerId4 == this.f1187c) {
                    int pointerCount2 = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount2) {
                            i = -1;
                        } else {
                            int pointerId5 = motionEvent.getPointerId(i2);
                            if (pointerId5 != this.f1187c) {
                                if (c((int) motionEvent.getX(i2), (int) motionEvent.getY(i2)) == this.s && b(this.s, pointerId5)) {
                                    i = this.f1187c;
                                }
                            }
                            i2++;
                        }
                    }
                    if (i == -1) {
                        d();
                    }
                }
                c(pointerId4);
                break;
        }
    }

    private void b(float f, float f2, int i) {
        int i2 = a(f, f2, i, 1) ? 1 : 0;
        if (a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.b(i2, i);
        }
    }

    private boolean a(float f, float f2, int i, int i2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        if (fAbs <= this.f1186b && fAbs2 <= this.f1186b) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.r.b(i2)) {
            return (this.i[i] & i2) == 0 && fAbs > ((float) this.f1186b);
        }
        int[] iArr = this.j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.b(view) > 0;
        boolean z2 = this.r.a(view) > 0;
        return (z && z2) ? (f * f) + (f2 * f2) > ((float) (this.f1186b * this.f1186b)) : z ? Math.abs(f) > ((float) this.f1186b) : z2 && Math.abs(f2) > ((float) this.f1186b);
    }

    private void d() {
        this.l.computeCurrentVelocity(1000, this.m);
        a(a(this.l.getXVelocity(this.f1187c), this.n, this.m), a(this.l.getYVelocity(this.f1187c), this.n, this.m));
    }

    private void b(int i, int i2, int i3, int i4) {
        int iB;
        int iA;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i3 != 0) {
            iB = this.r.b(this.s, i, i3);
            s.d(this.s, iB - left);
        } else {
            iB = i;
        }
        if (i4 != 0) {
            iA = this.r.a(this.s, i2, i4);
            s.c(this.s, iA - top);
        } else {
            iA = i2;
        }
        if (i3 != 0 || i4 != 0) {
            this.r.a(this.s, iB, iA, iB - left, iA - top);
        }
    }

    public boolean b(int i, int i2) {
        return b(this.s, i, i2);
    }

    public boolean b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public View c(int i, int i2) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.c(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int d(int i, int i2) {
        int i3 = i < this.u.getLeft() + this.o ? 1 : 0;
        if (i2 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        return i2 > this.u.getBottom() - this.o ? i3 | 8 : i3;
    }

    private boolean e(int i) {
        if (a(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }
}
