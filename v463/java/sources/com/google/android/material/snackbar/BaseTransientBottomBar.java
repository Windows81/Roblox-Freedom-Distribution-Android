package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.a.b;
import androidx.core.h.r;
import com.google.android.material.a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.b;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Handler f5015a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f5016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f5017e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final e f5018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final b.a f5019c;
    private final ViewGroup f;
    private final com.google.android.material.snackbar.a g;
    private List<a<B>> h;
    private Behavior i;
    private final AccessibilityManager j;

    public static abstract class a<B> {
        public void a(B b2) {
        }

        public void a(B b2, int i) {
        }
    }

    protected interface c {
        void a(View view);

        void b(View view);
    }

    protected interface d {
        void a(View view, int i, int i2, int i3, int i4);
    }

    static {
        f5016d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        f5017e = new int[]{a.b.snackbarStyle};
        f5015a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ((BaseTransientBottomBar) message.obj).c();
                    return true;
                }
                if (i != 1) {
                    return false;
                }
                ((BaseTransientBottomBar) message.obj).b(message.arg1);
                return true;
            }
        });
    }

    protected void a(int i) {
        com.google.android.material.snackbar.b.a().a(this.f5019c, i);
    }

    public boolean a() {
        return com.google.android.material.snackbar.b.a().e(this.f5019c);
    }

    protected SwipeDismissBehavior<? extends View> b() {
        return new Behavior();
    }

    final void c() {
        if (this.f5018b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f5018b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.e) {
                CoordinatorLayout.e eVar = (CoordinatorLayout.e) layoutParams;
                SwipeDismissBehavior<? extends View> swipeDismissBehaviorB = this.i;
                if (swipeDismissBehaviorB == null) {
                    swipeDismissBehaviorB = b();
                }
                if (swipeDismissBehaviorB instanceof Behavior) {
                    ((Behavior) swipeDismissBehaviorB).a((BaseTransientBottomBar<?>) this);
                }
                swipeDismissBehaviorB.a(new SwipeDismissBehavior.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.a
                    public void a(View view) {
                        view.setVisibility(8);
                        BaseTransientBottomBar.this.a(0);
                    }

                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.a
                    public void a(int i) {
                        if (i == 0) {
                            com.google.android.material.snackbar.b.a().d(BaseTransientBottomBar.this.f5019c);
                        } else if (i == 1 || i == 2) {
                            com.google.android.material.snackbar.b.a().c(BaseTransientBottomBar.this.f5019c);
                        }
                    }
                });
                eVar.a(swipeDismissBehaviorB);
                eVar.g = 80;
            }
            this.f.addView(this.f5018b);
        }
        this.f5018b.setOnAttachStateChangeListener(new c() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.c
            public void a(View view) {
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.c
            public void b(View view) {
                if (BaseTransientBottomBar.this.a()) {
                    BaseTransientBottomBar.f5015a.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.c(3);
                        }
                    });
                }
            }
        });
        if (r.w(this.f5018b)) {
            if (f()) {
                d();
                return;
            } else {
                e();
                return;
            }
        }
        this.f5018b.setOnLayoutChangeListener(new d() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.d
            public void a(View view, int i, int i2, int i3, int i4) {
                BaseTransientBottomBar.this.f5018b.setOnLayoutChangeListener(null);
                if (BaseTransientBottomBar.this.f()) {
                    BaseTransientBottomBar.this.d();
                } else {
                    BaseTransientBottomBar.this.e();
                }
            }
        });
    }

    void d() {
        final int iH = h();
        if (f5016d) {
            r.d(this.f5018b, iH);
        } else {
            this.f5018b.setTranslationY(iH);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iH, 0);
        valueAnimator.setInterpolator(com.google.android.material.a.a.f4776b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.g.a(70, 180);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.e();
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f5031c;

            {
                this.f5031c = iH;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f5016d) {
                    r.d(BaseTransientBottomBar.this.f5018b, iIntValue - this.f5031c);
                } else {
                    BaseTransientBottomBar.this.f5018b.setTranslationY(iIntValue);
                }
                this.f5031c = iIntValue;
            }
        });
        valueAnimator.start();
    }

    private void d(final int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, h());
        valueAnimator.setInterpolator(com.google.android.material.a.a.f4776b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.g.b(0, 180);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.c(i);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f5023b = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f5016d) {
                    r.d(BaseTransientBottomBar.this.f5018b, iIntValue - this.f5023b);
                } else {
                    BaseTransientBottomBar.this.f5018b.setTranslationY(iIntValue);
                }
                this.f5023b = iIntValue;
            }
        });
        valueAnimator.start();
    }

    private int h() {
        int height = this.f5018b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f5018b.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    final void b(int i) {
        if (f() && this.f5018b.getVisibility() == 0) {
            d(i);
        } else {
            c(i);
        }
    }

    void e() {
        com.google.android.material.snackbar.b.a().b(this.f5019c);
        List<a<B>> list = this.h;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.h.get(size).a(this);
            }
        }
    }

    void c(int i) {
        com.google.android.material.snackbar.b.a().a(this.f5019c);
        List<a<B>> list = this.h;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.h.get(size).a(this, i);
            }
        }
        ViewParent parent = this.f5018b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f5018b);
        }
    }

    boolean f() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.j.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    protected static class e extends FrameLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AccessibilityManager f5033a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b.a f5034b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d f5035c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f5036d;

        protected e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.i.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(a.i.SnackbarLayout_elevation)) {
                r.a(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(a.i.SnackbarLayout_elevation, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
            this.f5033a = (AccessibilityManager) context.getSystemService("accessibility");
            b.a aVar = new b.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.e.1
                @Override // androidx.core.h.a.b.a
                public void a(boolean z) {
                    e.this.setClickableOrFocusableBasedOnAccessibility(z);
                }
            };
            this.f5034b = aVar;
            androidx.core.h.a.b.a(this.f5033a, aVar);
            setClickableOrFocusableBasedOnAccessibility(this.f5033a.isTouchExplorationEnabled());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            d dVar = this.f5035c;
            if (dVar != null) {
                dVar.a(this, i, i2, i3, i4);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            c cVar = this.f5036d;
            if (cVar != null) {
                cVar.a(this);
            }
            r.o(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            c cVar = this.f5036d;
            if (cVar != null) {
                cVar.b(this);
            }
            androidx.core.h.a.b.b(this.f5033a, this.f5034b);
        }

        void setOnLayoutChangeListener(d dVar) {
            this.f5035c = dVar;
        }

        void setOnAttachStateChangeListener(c cVar) {
            this.f5036d = cVar;
        }
    }

    public static class Behavior extends SwipeDismissBehavior<View> {
        private final b g = new b(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.g.a(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean a(View view) {
            return this.g.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.g.a(coordinatorLayout, view, motionEvent);
            return super.a(coordinatorLayout, view, motionEvent);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b.a f5032a;

        public b(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.a(0.1f);
            swipeDismissBehavior.b(0.6f);
            swipeDismissBehavior.a(0);
        }

        public void a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f5032a = baseTransientBottomBar.f5019c;
        }

        public boolean a(View view) {
            return view instanceof e;
        }

        public void a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.b.a().c(this.f5032a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.b.a().d(this.f5032a);
            }
        }
    }
}
