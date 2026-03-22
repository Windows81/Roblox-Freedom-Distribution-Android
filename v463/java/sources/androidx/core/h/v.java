package androidx.core.h;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Runnable f1502a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f1503b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1504c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<View> f1505d;

    v(View view) {
        this.f1505d = new WeakReference<>(view);
    }

    static class a implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        v f1512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1513b;

        a(v vVar) {
            this.f1512a = vVar;
        }

        @Override // androidx.core.h.w
        public void onAnimationStart(View view) {
            this.f1513b = false;
            if (this.f1512a.f1504c > -1) {
                view.setLayerType(2, null);
            }
            if (this.f1512a.f1502a != null) {
                Runnable runnable = this.f1512a.f1502a;
                this.f1512a.f1502a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            w wVar = tag instanceof w ? (w) tag : null;
            if (wVar != null) {
                wVar.onAnimationStart(view);
            }
        }

        @Override // androidx.core.h.w
        public void onAnimationEnd(View view) {
            if (this.f1512a.f1504c > -1) {
                view.setLayerType(this.f1512a.f1504c, null);
                this.f1512a.f1504c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f1513b) {
                if (this.f1512a.f1503b != null) {
                    Runnable runnable = this.f1512a.f1503b;
                    this.f1512a.f1503b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                w wVar = tag instanceof w ? (w) tag : null;
                if (wVar != null) {
                    wVar.onAnimationEnd(view);
                }
                this.f1513b = true;
            }
        }

        @Override // androidx.core.h.w
        public void onAnimationCancel(View view) {
            Object tag = view.getTag(2113929216);
            w wVar = tag instanceof w ? (w) tag : null;
            if (wVar != null) {
                wVar.onAnimationCancel(view);
            }
        }
    }

    public v a(long j) {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public v a(float f) {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public v b(float f) {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public long a() {
        View view = this.f1505d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public v a(Interpolator interpolator) {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public v b(long j) {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public void b() {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public void c() {
        View view = this.f1505d.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public v a(w wVar) {
        View view = this.f1505d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, wVar);
            } else {
                view.setTag(2113929216, wVar);
                a(view, new a(this));
            }
        }
        return this;
    }

    private void a(final View view, final w wVar) {
        if (wVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.h.v.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    wVar.onAnimationCancel(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    wVar.onAnimationEnd(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    wVar.onAnimationStart(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    public v a(final y yVar) {
        final View view = this.f1505d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(yVar != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.h.v.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    yVar.a(view);
                }
            } : null);
        }
        return this;
    }
}
