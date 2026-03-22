package android.support.design.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Interpolator f398a = android.support.design.widget.a.f360c;
    static final int[] j = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] k = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] l = {R.attr.state_enabled};
    static final int[] m = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    k f400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Drawable f401d;
    Drawable e;
    android.support.design.widget.c f;
    Drawable g;
    float h;
    float i;
    final w n;
    final l o;
    private float q;
    private ViewTreeObserver.OnPreDrawListener s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f399b = 0;
    private final Rect r = new Rect();
    private final n p = new n();

    interface c {
        void a();

        void b();
    }

    g(w wVar, l lVar) {
        this.n = wVar;
        this.o = lVar;
        this.p.a(j, a(new b()));
        this.p.a(k, a(new b()));
        this.p.a(l, a(new d()));
        this.p.a(m, a(new a()));
        this.q = this.n.getRotation();
    }

    void a(ColorStateList colorStateList) {
        if (this.f401d != null) {
            android.support.v4.b.a.a.a(this.f401d, colorStateList);
        }
        if (this.f != null) {
            this.f.a(colorStateList);
        }
    }

    void a(PorterDuff.Mode mode) {
        if (this.f401d != null) {
            android.support.v4.b.a.a.a(this.f401d, mode);
        }
    }

    void a(int i) {
        if (this.e != null) {
            android.support.v4.b.a.a.a(this.e, b(i));
        }
    }

    final void a(float f) {
        if (this.h != f) {
            this.h = f;
            a(f, this.i);
        }
    }

    float a() {
        return this.h;
    }

    void a(float f, float f2) {
        if (this.f400c != null) {
            this.f400c.a(f, this.i + f);
            e();
        }
    }

    void a(int[] iArr) {
        this.p.a(iArr);
    }

    void b() {
        this.p.a();
    }

    void a(final c cVar, final boolean z) {
        if (!k()) {
            this.n.animate().cancel();
            if (m()) {
                this.f399b = 1;
                this.n.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setDuration(200L).setInterpolator(android.support.design.widget.a.f360c).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.g.1

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    private boolean f405d;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        g.this.n.a(0, z);
                        this.f405d = false;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.f405d = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        g.this.f399b = 0;
                        if (!this.f405d) {
                            g.this.n.a(z ? 8 : 4, z);
                            if (cVar != null) {
                                cVar.b();
                            }
                        }
                    }
                });
            } else {
                this.n.a(z ? 8 : 4, z);
                if (cVar != null) {
                    cVar.b();
                }
            }
        }
    }

    void b(final c cVar, final boolean z) {
        if (!j()) {
            this.n.animate().cancel();
            if (m()) {
                this.f399b = 2;
                if (this.n.getVisibility() != 0) {
                    this.n.setAlpha(0.0f);
                    this.n.setScaleY(0.0f);
                    this.n.setScaleX(0.0f);
                }
                this.n.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200L).setInterpolator(android.support.design.widget.a.f361d).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.g.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        g.this.n.a(0, z);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        g.this.f399b = 0;
                        if (cVar != null) {
                            cVar.a();
                        }
                    }
                });
                return;
            }
            this.n.a(0, z);
            this.n.setAlpha(1.0f);
            this.n.setScaleY(1.0f);
            this.n.setScaleX(1.0f);
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    final Drawable c() {
        return this.g;
    }

    void d() {
    }

    final void e() {
        Rect rect = this.r;
        a(rect);
        b(rect);
        this.o.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void a(Rect rect) {
        this.f400c.getPadding(rect);
    }

    void b(Rect rect) {
    }

    void f() {
        if (h()) {
            l();
            this.n.getViewTreeObserver().addOnPreDrawListener(this.s);
        }
    }

    void g() {
        if (this.s != null) {
            this.n.getViewTreeObserver().removeOnPreDrawListener(this.s);
            this.s = null;
        }
    }

    boolean h() {
        return true;
    }

    void i() {
        float rotation = this.n.getRotation();
        if (this.q != rotation) {
            this.q = rotation;
            n();
        }
    }

    private void l() {
        if (this.s == null) {
            this.s = new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.design.widget.g.3
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    g.this.i();
                    return true;
                }
            };
        }
    }

    boolean j() {
        return this.n.getVisibility() != 0 ? this.f399b == 2 : this.f399b != 1;
    }

    boolean k() {
        return this.n.getVisibility() == 0 ? this.f399b == 1 : this.f399b != 2;
    }

    private ValueAnimator a(e eVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f398a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(eVar);
        valueAnimator.addUpdateListener(eVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private abstract class e extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f413a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f416d;

        protected abstract float a();

        private e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f413a) {
                this.f415c = g.this.f400c.a();
                this.f416d = a();
                this.f413a = true;
            }
            g.this.f400c.b(this.f415c + ((this.f416d - this.f415c) * valueAnimator.getAnimatedFraction()));
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            g.this.f400c.b(this.f416d);
            this.f413a = false;
        }
    }

    private class d extends e {
        d() {
            super();
        }

        @Override // android.support.design.widget.g.e
        protected float a() {
            return g.this.h;
        }
    }

    private class b extends e {
        b() {
            super();
        }

        @Override // android.support.design.widget.g.e
        protected float a() {
            return g.this.h + g.this.i;
        }
    }

    private class a extends e {
        a() {
            super();
        }

        @Override // android.support.design.widget.g.e
        protected float a() {
            return 0.0f;
        }
    }

    private static ColorStateList b(int i) {
        return new ColorStateList(new int[][]{k, j, new int[0]}, new int[]{i, i, 0});
    }

    private boolean m() {
        return android.support.v4.view.s.v(this.n) && !this.n.isInEditMode();
    }

    private void n() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.q % 90.0f != 0.0f) {
                if (this.n.getLayerType() != 1) {
                    this.n.setLayerType(1, null);
                }
            } else if (this.n.getLayerType() != 0) {
                this.n.setLayerType(0, null);
            }
        }
        if (this.f400c != null) {
            this.f400c.a(-this.q);
        }
        if (this.f != null) {
            this.f.a(-this.q);
        }
    }
}
