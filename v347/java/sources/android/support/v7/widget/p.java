package android.support.v7.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class p extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    private static final int[] g = {R.attr.state_pressed};
    private static final int[] h = new int[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f1691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1692d;
    int e;
    float f;
    private final int i;
    private final int j;
    private final StateListDrawable k;
    private final Drawable l;
    private final int m;
    private final int n;
    private final StateListDrawable o;
    private final Drawable p;
    private final int q;
    private final int r;
    private RecyclerView u;
    private int s = 0;
    private int t = 0;
    private boolean v = false;
    private boolean w = false;
    private int x = 0;
    private int y = 0;
    private final int[] z = new int[2];
    private final int[] A = new int[2];
    private final ValueAnimator B = ValueAnimator.ofFloat(0.0f, 1.0f);
    private int C = 0;
    private final Runnable D = new Runnable() { // from class: android.support.v7.widget.p.1
        @Override // java.lang.Runnable
        public void run() {
            p.this.a(500);
        }
    };
    private final RecyclerView.OnScrollListener E = new RecyclerView.OnScrollListener() { // from class: android.support.v7.widget.p.2
        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            p.this.a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    };

    p(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.k = stateListDrawable;
        this.l = drawable;
        this.o = stateListDrawable2;
        this.p = drawable2;
        this.m = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.n = Math.max(i, drawable.getIntrinsicWidth());
        this.q = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.r = Math.max(i, drawable2.getIntrinsicWidth());
        this.i = i2;
        this.j = i3;
        this.k.setAlpha(255);
        this.l.setAlpha(255);
        this.B.addListener(new a());
        this.B.addUpdateListener(new b());
        a(recyclerView);
    }

    public void a(RecyclerView recyclerView) {
        if (this.u != recyclerView) {
            if (this.u != null) {
                c();
            }
            this.u = recyclerView;
            if (this.u != null) {
                b();
            }
        }
    }

    private void b() {
        this.u.addItemDecoration(this);
        this.u.addOnItemTouchListener(this);
        this.u.addOnScrollListener(this.E);
    }

    private void c() {
        this.u.removeItemDecoration(this);
        this.u.removeOnItemTouchListener(this);
        this.u.removeOnScrollListener(this.E);
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.u.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (i == 2 && this.x != 2) {
            this.k.setState(g);
            f();
        }
        if (i == 0) {
            d();
        } else {
            a();
        }
        if (this.x == 2 && i != 2) {
            this.k.setState(h);
            c(1200);
        } else if (i == 1) {
            c(1500);
        }
        this.x = i;
    }

    private boolean e() {
        return android.support.v4.view.s.e(this.u) == 1;
    }

    public void a() {
        switch (this.C) {
            case 0:
                break;
            case 1:
            case 2:
            default:
                return;
            case 3:
                this.B.cancel();
                break;
        }
        this.C = 1;
        this.B.setFloatValues(((Float) this.B.getAnimatedValue()).floatValue(), 1.0f);
        this.B.setDuration(500L);
        this.B.setStartDelay(0L);
        this.B.start();
    }

    void a(int i) {
        switch (this.C) {
            case 1:
                this.B.cancel();
                break;
            case 2:
                break;
            default:
                return;
        }
        this.C = 3;
        this.B.setFloatValues(((Float) this.B.getAnimatedValue()).floatValue(), 0.0f);
        this.B.setDuration(i);
        this.B.start();
    }

    private void f() {
        this.u.removeCallbacks(this.D);
    }

    private void c(int i) {
        f();
        this.u.postDelayed(this.D, i);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.s != this.u.getWidth() || this.t != this.u.getHeight()) {
            this.s = this.u.getWidth();
            this.t = this.u.getHeight();
            b(0);
        } else if (this.C != 0) {
            if (this.v) {
                a(canvas);
            }
            if (this.w) {
                b(canvas);
            }
        }
    }

    private void a(Canvas canvas) {
        int i = this.s - this.m;
        int i2 = this.f1690b - (this.f1689a / 2);
        this.k.setBounds(0, 0, this.m, this.f1689a);
        this.l.setBounds(0, 0, this.n, this.t);
        if (e()) {
            this.l.draw(canvas);
            canvas.translate(this.m, i2);
            canvas.scale(-1.0f, 1.0f);
            this.k.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.m, -i2);
            return;
        }
        canvas.translate(i, 0.0f);
        this.l.draw(canvas);
        canvas.translate(0.0f, i2);
        this.k.draw(canvas);
        canvas.translate(-i, -i2);
    }

    private void b(Canvas canvas) {
        int i = this.t - this.q;
        int i2 = this.e - (this.f1692d / 2);
        this.o.setBounds(0, 0, this.f1692d, this.q);
        this.p.setBounds(0, 0, this.s, this.r);
        canvas.translate(0.0f, i);
        this.p.draw(canvas);
        canvas.translate(i2, 0.0f);
        this.o.draw(canvas);
        canvas.translate(-i2, -i);
    }

    void a(int i, int i2) {
        int iComputeVerticalScrollRange = this.u.computeVerticalScrollRange();
        int i3 = this.t;
        this.v = iComputeVerticalScrollRange - i3 > 0 && this.t >= this.i;
        int iComputeHorizontalScrollRange = this.u.computeHorizontalScrollRange();
        int i4 = this.s;
        this.w = iComputeHorizontalScrollRange - i4 > 0 && this.s >= this.i;
        if (!this.v && !this.w) {
            if (this.x != 0) {
                b(0);
                return;
            }
            return;
        }
        if (this.v) {
            this.f1690b = (int) (((i2 + (i3 / 2.0f)) * i3) / iComputeVerticalScrollRange);
            this.f1689a = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
        }
        if (this.w) {
            this.e = (int) (((i + (i4 / 2.0f)) * i4) / iComputeHorizontalScrollRange);
            this.f1692d = Math.min(i4, (i4 * i4) / iComputeHorizontalScrollRange);
        }
        if (this.x == 0 || this.x == 1) {
            b(1);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.x != 1) {
            return this.x == 2;
        }
        boolean zA = a(motionEvent.getX(), motionEvent.getY());
        boolean zB = b(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() != 0 || (!zA && !zB)) {
            return false;
        }
        if (zB) {
            this.y = 1;
            this.f = (int) motionEvent.getX();
        } else if (zA) {
            this.y = 2;
            this.f1691c = (int) motionEvent.getY();
        }
        b(2);
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.x != 0) {
            if (motionEvent.getAction() == 0) {
                boolean zA = a(motionEvent.getX(), motionEvent.getY());
                boolean zB = b(motionEvent.getX(), motionEvent.getY());
                if (zA || zB) {
                    if (zB) {
                        this.y = 1;
                        this.f = (int) motionEvent.getX();
                    } else if (zA) {
                        this.y = 2;
                        this.f1691c = (int) motionEvent.getY();
                    }
                    b(2);
                    return;
                }
                return;
            }
            if (motionEvent.getAction() == 1 && this.x == 2) {
                this.f1691c = 0.0f;
                this.f = 0.0f;
                b(1);
                this.y = 0;
                return;
            }
            if (motionEvent.getAction() == 2 && this.x == 2) {
                a();
                if (this.y == 1) {
                    b(motionEvent.getX());
                }
                if (this.y == 2) {
                    a(motionEvent.getY());
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    private void a(float f) {
        int[] iArrG = g();
        float fMax = Math.max(iArrG[0], Math.min(iArrG[1], f));
        if (Math.abs(this.f1690b - fMax) >= 2.0f) {
            int iA = a(this.f1691c, fMax, iArrG, this.u.computeVerticalScrollRange(), this.u.computeVerticalScrollOffset(), this.t);
            if (iA != 0) {
                this.u.scrollBy(0, iA);
            }
            this.f1691c = fMax;
        }
    }

    private void b(float f) {
        int[] iArrH = h();
        float fMax = Math.max(iArrH[0], Math.min(iArrH[1], f));
        if (Math.abs(this.e - fMax) >= 2.0f) {
            int iA = a(this.f, fMax, iArrH, this.u.computeHorizontalScrollRange(), this.u.computeHorizontalScrollOffset(), this.s);
            if (iA != 0) {
                this.u.scrollBy(iA, 0);
            }
            this.f = fMax;
        }
    }

    private int a(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f2 - f) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    boolean a(float f, float f2) {
        if (!e() ? f >= this.s - this.m : f <= this.m / 2) {
            if (f2 >= this.f1690b - (this.f1689a / 2) && f2 <= this.f1690b + (this.f1689a / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean b(float f, float f2) {
        return f2 >= ((float) (this.t - this.q)) && f >= ((float) (this.e - (this.f1692d / 2))) && f <= ((float) (this.e + (this.f1692d / 2)));
    }

    private int[] g() {
        this.z[0] = this.j;
        this.z[1] = this.t - this.j;
        return this.z;
    }

    private int[] h() {
        this.A[0] = this.j;
        this.A[1] = this.s - this.j;
        return this.A;
    }

    private class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1696b;

        private a() {
            this.f1696b = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1696b) {
                this.f1696b = false;
            } else if (((Float) p.this.B.getAnimatedValue()).floatValue() == 0.0f) {
                p.this.C = 0;
                p.this.b(0);
            } else {
                p.this.C = 2;
                p.this.d();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1696b = true;
        }
    }

    private class b implements ValueAnimator.AnimatorUpdateListener {
        private b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            p.this.k.setAlpha(iFloatValue);
            p.this.l.setAlpha(iFloatValue);
            p.this.d();
        }
    }
}
