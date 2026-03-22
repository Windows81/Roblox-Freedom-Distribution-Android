package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.h.r;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.internal.g;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final TimeInterpolator f4931a = com.google.android.material.a.a.f4777c;
    static final int[] p = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] q = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] r = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] s = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] t = {R.attr.state_enabled};
    static final int[] u = new int[0];
    private float A;
    private ArrayList<Animator.AnimatorListener> B;
    private ArrayList<Animator.AnimatorListener> C;
    private ViewTreeObserver.OnPreDrawListener H;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Animator f4933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h f4934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    h f4935e;
    com.google.android.material.h.a f;
    Drawable g;
    Drawable h;
    com.google.android.material.internal.a i;
    Drawable j;
    float k;
    float l;
    float m;
    int n;
    final g v;
    final com.google.android.material.h.b w;
    private h x;
    private h y;
    private final com.google.android.material.internal.d z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f4932b = 0;
    float o = 1.0f;
    private final Rect D = new Rect();
    private final RectF E = new RectF();
    private final RectF F = new RectF();
    private final Matrix G = new Matrix();

    interface d {
        void a();

        void b();
    }

    void b(Rect rect) {
    }

    void i() {
    }

    boolean m() {
        return true;
    }

    a(g gVar, com.google.android.material.h.b bVar) {
        this.v = gVar;
        this.w = bVar;
        com.google.android.material.internal.d dVar = new com.google.android.material.internal.d();
        this.z = dVar;
        dVar.a(p, a((f) new c()));
        this.z.a(q, a((f) new b()));
        this.z.a(r, a((f) new b()));
        this.z.a(s, a((f) new b()));
        this.z.a(t, a((f) new e()));
        this.z.a(u, a((f) new C0110a()));
        this.A = this.v.getRotation();
    }

    void a(ColorStateList colorStateList) {
        Drawable drawable = this.g;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
        }
        com.google.android.material.internal.a aVar = this.i;
        if (aVar != null) {
            aVar.a(colorStateList);
        }
    }

    void a(PorterDuff.Mode mode) {
        Drawable drawable = this.g;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, mode);
        }
    }

    void b(ColorStateList colorStateList) {
        Drawable drawable = this.h;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, com.google.android.material.g.a.a(colorStateList));
        }
    }

    final void a(float f2) {
        if (this.k != f2) {
            this.k = f2;
            a(f2, this.l, this.m);
        }
    }

    float a() {
        return this.k;
    }

    float b() {
        return this.l;
    }

    float c() {
        return this.m;
    }

    final void b(float f2) {
        if (this.l != f2) {
            this.l = f2;
            a(this.k, f2, this.m);
        }
    }

    final void c(float f2) {
        if (this.m != f2) {
            this.m = f2;
            a(this.k, this.l, f2);
        }
    }

    final void d() {
        d(this.o);
    }

    final void d(float f2) {
        this.o = f2;
        Matrix matrix = this.G;
        a(f2, matrix);
        this.v.setImageMatrix(matrix);
    }

    private void a(float f2, Matrix matrix) {
        matrix.reset();
        if (this.v.getDrawable() == null || this.n == 0) {
            return;
        }
        RectF rectF = this.E;
        RectF rectF2 = this.F;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i = this.n;
        rectF2.set(0.0f, 0.0f, i, i);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i2 = this.n;
        matrix.postScale(f2, f2, i2 / 2.0f, i2 / 2.0f);
    }

    final h e() {
        return this.f4934d;
    }

    final void a(h hVar) {
        this.f4934d = hVar;
    }

    final h f() {
        return this.f4935e;
    }

    final void b(h hVar) {
        this.f4935e = hVar;
    }

    void a(float f2, float f3, float f4) {
        com.google.android.material.h.a aVar = this.f;
        if (aVar != null) {
            aVar.a(f2, this.m + f2);
            j();
        }
    }

    void a(int[] iArr) {
        this.z.a(iArr);
    }

    void g() {
        this.z.a();
    }

    void a(Animator.AnimatorListener animatorListener) {
        if (this.B == null) {
            this.B = new ArrayList<>();
        }
        this.B.add(animatorListener);
    }

    void b(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.B;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    public void c(Animator.AnimatorListener animatorListener) {
        if (this.C == null) {
            this.C = new ArrayList<>();
        }
        this.C.add(animatorListener);
    }

    public void d(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.C;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void a(final d dVar, final boolean z) {
        if (p()) {
            return;
        }
        Animator animator = this.f4933c;
        if (animator != null) {
            animator.cancel();
        }
        if (t()) {
            h hVarR = this.f4935e;
            if (hVarR == null) {
                hVarR = r();
            }
            AnimatorSet animatorSetA = a(hVarR, 0.0f, 0.0f, 0.0f);
            animatorSetA.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.a.1

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private boolean f4939d;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    a.this.v.a(0, z);
                    a.this.f4932b = 1;
                    a.this.f4933c = animator2;
                    this.f4939d = false;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator2) {
                    this.f4939d = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    a.this.f4932b = 0;
                    a.this.f4933c = null;
                    if (this.f4939d) {
                        return;
                    }
                    a.this.v.a(z ? 8 : 4, z);
                    d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.b();
                    }
                }
            });
            ArrayList<Animator.AnimatorListener> arrayList = this.C;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                while (it.hasNext()) {
                    animatorSetA.addListener(it.next());
                }
            }
            animatorSetA.start();
            return;
        }
        this.v.a(z ? 8 : 4, z);
        if (dVar != null) {
            dVar.b();
        }
    }

    void b(final d dVar, final boolean z) {
        if (o()) {
            return;
        }
        Animator animator = this.f4933c;
        if (animator != null) {
            animator.cancel();
        }
        if (t()) {
            if (this.v.getVisibility() != 0) {
                this.v.setAlpha(0.0f);
                this.v.setScaleY(0.0f);
                this.v.setScaleX(0.0f);
                d(0.0f);
            }
            h hVarQ = this.f4934d;
            if (hVarQ == null) {
                hVarQ = q();
            }
            AnimatorSet animatorSetA = a(hVarQ, 1.0f, 1.0f, 1.0f);
            animatorSetA.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.a.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    a.this.v.a(0, z);
                    a.this.f4932b = 2;
                    a.this.f4933c = animator2;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    a.this.f4932b = 0;
                    a.this.f4933c = null;
                    d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.a();
                    }
                }
            });
            ArrayList<Animator.AnimatorListener> arrayList = this.B;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                while (it.hasNext()) {
                    animatorSetA.addListener(it.next());
                }
            }
            animatorSetA.start();
            return;
        }
        this.v.a(0, z);
        this.v.setAlpha(1.0f);
        this.v.setScaleY(1.0f);
        this.v.setScaleX(1.0f);
        d(1.0f);
        if (dVar != null) {
            dVar.a();
        }
    }

    private h q() {
        if (this.x == null) {
            this.x = h.a(this.v.getContext(), a.C0107a.design_fab_show_motion_spec);
        }
        return this.x;
    }

    private h r() {
        if (this.y == null) {
            this.y = h.a(this.v.getContext(), a.C0107a.design_fab_hide_motion_spec);
        }
        return this.y;
    }

    private AnimatorSet a(h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.v, (Property<g, Float>) View.ALPHA, f2);
        hVar.b("opacity").a((Animator) objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.v, (Property<g, Float>) View.SCALE_X, f3);
        hVar.b("scale").a((Animator) objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.v, (Property<g, Float>) View.SCALE_Y, f3);
        hVar.b("scale").a((Animator) objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        a(f4, this.G);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.v, new com.google.android.material.a.f(), new com.google.android.material.a.g(), new Matrix(this.G));
        hVar.b("iconScale").a((Animator) objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    final Drawable h() {
        return this.j;
    }

    final void j() {
        Rect rect = this.D;
        a(rect);
        b(rect);
        this.w.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void a(Rect rect) {
        this.f.getPadding(rect);
    }

    void k() {
        if (m()) {
            s();
            this.v.getViewTreeObserver().addOnPreDrawListener(this.H);
        }
    }

    void l() {
        if (this.H != null) {
            this.v.getViewTreeObserver().removeOnPreDrawListener(this.H);
            this.H = null;
        }
    }

    void n() {
        float rotation = this.v.getRotation();
        if (this.A != rotation) {
            this.A = rotation;
            u();
        }
    }

    private void s() {
        if (this.H == null) {
            this.H = new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.floatingactionbutton.a.3
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    a.this.n();
                    return true;
                }
            };
        }
    }

    boolean o() {
        return this.v.getVisibility() != 0 ? this.f4932b == 2 : this.f4932b != 1;
    }

    boolean p() {
        return this.v.getVisibility() == 0 ? this.f4932b == 1 : this.f4932b != 2;
    }

    private ValueAnimator a(f fVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f4931a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private abstract class f extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f4948a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f4950c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f4951d;

        protected abstract float a();

        private f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f4948a) {
                this.f4950c = a.this.f.b();
                this.f4951d = a();
                this.f4948a = true;
            }
            com.google.android.material.h.a aVar = a.this.f;
            float f = this.f4950c;
            aVar.a(f + ((this.f4951d - f) * valueAnimator.getAnimatedFraction()));
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f.a(this.f4951d);
            this.f4948a = false;
        }
    }

    private class e extends f {
        e() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.a.f
        protected float a() {
            return a.this.k;
        }
    }

    private class b extends f {
        b() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.a.f
        protected float a() {
            return a.this.k + a.this.l;
        }
    }

    private class c extends f {
        c() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.a.f
        protected float a() {
            return a.this.k + a.this.m;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.a$a, reason: collision with other inner class name */
    private class C0110a extends f {
        @Override // com.google.android.material.floatingactionbutton.a.f
        protected float a() {
            return 0.0f;
        }

        C0110a() {
            super();
        }
    }

    private boolean t() {
        return r.w(this.v) && !this.v.isInEditMode();
    }

    private void u() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.A % 90.0f != 0.0f) {
                if (this.v.getLayerType() != 1) {
                    this.v.setLayerType(1, null);
                }
            } else if (this.v.getLayerType() != 0) {
                this.v.setLayerType(0, null);
            }
        }
        com.google.android.material.h.a aVar = this.f;
        if (aVar != null) {
            aVar.b(-this.A);
        }
        com.google.android.material.internal.a aVar2 = this.i;
        if (aVar2 != null) {
            aVar2.a(-this.A);
        }
    }
}
