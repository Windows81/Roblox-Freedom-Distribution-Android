package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.design.a;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SwipeDismissBehavior;
import android.support.design.widget.b;
import android.support.design.widget.m;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class b<B extends b<B>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Handler f362a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f363d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final f f364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final m.a f365c;
    private final ViewGroup e;
    private final c f;
    private List<a<B>> g;
    private final AccessibilityManager h;

    public interface c {
        void a(int i, int i2);

        void b(int i, int i2);
    }

    interface d {
        void a(View view);

        void b(View view);
    }

    interface e {
        void a(View view, int i, int i2, int i3, int i4);
    }

    public static abstract class a<B> {
        public void a(B b2, int i) {
        }

        public void a(B b2) {
        }
    }

    static {
        f363d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        f362a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.b.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                switch (message.what) {
                    case 0:
                        ((b) message.obj).b();
                        break;
                    case 1:
                        ((b) message.obj).b(message.arg1);
                        break;
                }
                return true;
            }
        });
    }

    void a(int i) {
        m.a().a(this.f365c, i);
    }

    public boolean a() {
        return m.a().e(this.f365c);
    }

    final void b() {
        if (this.f364b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f364b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.d) {
                CoordinatorLayout.d dVar = (CoordinatorLayout.d) layoutParams;
                C0011b c0011b = new C0011b();
                c0011b.a(0.1f);
                c0011b.b(0.6f);
                c0011b.a(0);
                c0011b.a(new SwipeDismissBehavior.a() { // from class: android.support.design.widget.b.5
                    @Override // android.support.design.widget.SwipeDismissBehavior.a
                    public void a(View view) {
                        view.setVisibility(8);
                        b.this.a(0);
                    }

                    @Override // android.support.design.widget.SwipeDismissBehavior.a
                    public void a(int i) {
                        switch (i) {
                            case 0:
                                m.a().d(b.this.f365c);
                                break;
                            case 1:
                            case 2:
                                m.a().c(b.this.f365c);
                                break;
                        }
                    }
                });
                dVar.a(c0011b);
                dVar.g = 80;
            }
            this.e.addView(this.f364b);
        }
        this.f364b.setOnAttachStateChangeListener(new d() { // from class: android.support.design.widget.b.6
            @Override // android.support.design.widget.b.d
            public void a(View view) {
            }

            @Override // android.support.design.widget.b.d
            public void b(View view) {
                if (b.this.a()) {
                    b.f362a.post(new Runnable() { // from class: android.support.design.widget.b.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            b.this.c(3);
                        }
                    });
                }
            }
        });
        if (android.support.v4.view.s.v(this.f364b)) {
            if (e()) {
                c();
                return;
            } else {
                d();
                return;
            }
        }
        this.f364b.setOnLayoutChangeListener(new e() { // from class: android.support.design.widget.b.7
            @Override // android.support.design.widget.b.e
            public void a(View view, int i, int i2, int i3, int i4) {
                b.this.f364b.setOnLayoutChangeListener(null);
                if (b.this.e()) {
                    b.this.c();
                } else {
                    b.this.d();
                }
            }
        });
    }

    void c() {
        if (Build.VERSION.SDK_INT >= 12) {
            final int height = this.f364b.getHeight();
            if (f363d) {
                android.support.v4.view.s.c(this.f364b, height);
            } else {
                this.f364b.setTranslationY(height);
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(height, 0);
            valueAnimator.setInterpolator(android.support.design.widget.a.f359b);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.b.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    b.this.f.a(70, 180);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    b.this.d();
                }
            });
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.b.9

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private int f380c;

                {
                    this.f380c = height;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    if (b.f363d) {
                        android.support.v4.view.s.c(b.this.f364b, iIntValue - this.f380c);
                    } else {
                        b.this.f364b.setTranslationY(iIntValue);
                    }
                    this.f380c = iIntValue;
                }
            });
            valueAnimator.start();
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f364b.getContext(), a.C0010a.design_snackbar_in);
        animationLoadAnimation.setInterpolator(android.support.design.widget.a.f359b);
        animationLoadAnimation.setDuration(250L);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.design.widget.b.10
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                b.this.d();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.f364b.startAnimation(animationLoadAnimation);
    }

    private void d(final int i) {
        if (Build.VERSION.SDK_INT >= 12) {
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(0, this.f364b.getHeight());
            valueAnimator.setInterpolator(android.support.design.widget.a.f359b);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.b.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    b.this.f.b(0, 180);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    b.this.c(i);
                }
            });
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.b.3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private int f370b = 0;

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    if (b.f363d) {
                        android.support.v4.view.s.c(b.this.f364b, iIntValue - this.f370b);
                    } else {
                        b.this.f364b.setTranslationY(iIntValue);
                    }
                    this.f370b = iIntValue;
                }
            });
            valueAnimator.start();
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f364b.getContext(), a.C0010a.design_snackbar_out);
        animationLoadAnimation.setInterpolator(android.support.design.widget.a.f359b);
        animationLoadAnimation.setDuration(250L);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.design.widget.b.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                b.this.c(i);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.f364b.startAnimation(animationLoadAnimation);
    }

    final void b(int i) {
        if (e() && this.f364b.getVisibility() == 0) {
            d(i);
        } else {
            c(i);
        }
    }

    void d() {
        m.a().b(this.f365c);
        if (this.g != null) {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                this.g.get(size).a(this);
            }
        }
    }

    void c(int i) {
        m.a().a(this.f365c);
        if (this.g != null) {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                this.g.get(size).a(this, i);
            }
        }
        if (Build.VERSION.SDK_INT < 11) {
            this.f364b.setVisibility(8);
        }
        ViewParent parent = this.f364b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f364b);
        }
    }

    boolean e() {
        return !this.h.isEnabled();
    }

    static class f extends FrameLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f382a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d f383b;

        f(Context context) {
            this(context, null);
        }

        f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(a.j.SnackbarLayout_elevation)) {
                android.support.v4.view.s.a(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.SnackbarLayout_elevation, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
            setClickable(true);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f382a != null) {
                this.f382a.a(this, i, i2, i3, i4);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.f383b != null) {
                this.f383b.a(this);
            }
            android.support.v4.view.s.n(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.f383b != null) {
                this.f383b.b(this);
            }
        }

        void setOnLayoutChangeListener(e eVar) {
            this.f382a = eVar;
        }

        void setOnAttachStateChangeListener(d dVar) {
            this.f383b = dVar;
        }
    }

    /* JADX INFO: renamed from: android.support.design.widget.b$b, reason: collision with other inner class name */
    final class C0011b extends SwipeDismissBehavior<f> {
        C0011b() {
        }

        @Override // android.support.design.widget.SwipeDismissBehavior
        public boolean a(View view) {
            return view instanceof f;
        }

        @Override // android.support.design.widget.SwipeDismissBehavior, android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, f fVar, MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (coordinatorLayout.a(fVar, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                        m.a().c(b.this.f365c);
                    }
                    break;
                case 1:
                case 3:
                    m.a().d(b.this.f365c);
                    break;
            }
            return super.a(coordinatorLayout, fVar, motionEvent);
        }
    }
}
