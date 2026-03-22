package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Runnable f1106a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f1107b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1108c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<View> f1109d;

    w(View view) {
        this.f1109d = new WeakReference<>(view);
    }

    static class a implements x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        w f1116a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1117b;

        a(w wVar) {
            this.f1116a = wVar;
        }

        @Override // android.support.v4.view.x
        public void onAnimationStart(View view) {
            this.f1117b = false;
            if (this.f1116a.f1108c > -1) {
                view.setLayerType(2, null);
            }
            if (this.f1116a.f1106a != null) {
                Runnable runnable = this.f1116a.f1106a;
                this.f1116a.f1106a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            x xVar = tag instanceof x ? (x) tag : null;
            if (xVar != null) {
                xVar.onAnimationStart(view);
            }
        }

        @Override // android.support.v4.view.x
        public void onAnimationEnd(View view) {
            if (this.f1116a.f1108c > -1) {
                view.setLayerType(this.f1116a.f1108c, null);
                this.f1116a.f1108c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f1117b) {
                if (this.f1116a.f1107b != null) {
                    Runnable runnable = this.f1116a.f1107b;
                    this.f1116a.f1107b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                x xVar = tag instanceof x ? (x) tag : null;
                if (xVar != null) {
                    xVar.onAnimationEnd(view);
                }
                this.f1117b = true;
            }
        }

        @Override // android.support.v4.view.x
        public void onAnimationCancel(View view) {
            x xVar;
            Object tag = view.getTag(2113929216);
            if (!(tag instanceof x)) {
                xVar = null;
            } else {
                xVar = (x) tag;
            }
            if (xVar != null) {
                xVar.onAnimationCancel(view);
            }
        }
    }

    public w a(long j) {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public w a(float f) {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public w b(float f) {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public long a() {
        View view = this.f1109d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public w a(Interpolator interpolator) {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public w b(long j) {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public void b() {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public void c() {
        View view = this.f1109d.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public w a(x xVar) {
        View view = this.f1109d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, xVar);
            } else {
                view.setTag(2113929216, xVar);
                a(view, new a(this));
            }
        }
        return this;
    }

    private void a(final View view, final x xVar) {
        if (xVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: android.support.v4.view.w.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    xVar.onAnimationCancel(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    xVar.onAnimationEnd(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    xVar.onAnimationStart(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    public w a(final z zVar) {
        final View view = this.f1109d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (zVar != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.v4.view.w.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        zVar.a(view);
                    }
                };
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }
}
