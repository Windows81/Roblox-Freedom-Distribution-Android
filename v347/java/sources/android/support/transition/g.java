package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class g extends at {
    public g(int i) {
        a(i);
    }

    public g() {
    }

    @Override // android.support.transition.at, android.support.transition.u
    public void a(aa aaVar) {
        super.a(aaVar);
        aaVar.f474a.put("android:fade:transitionAlpha", Float.valueOf(am.c(aaVar.f475b)));
    }

    private Animator a(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        am.a(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, am.f496a, f2);
        objectAnimatorOfFloat.addListener(new a(view));
        a(new v() { // from class: android.support.transition.g.1
            @Override // android.support.transition.v, android.support.transition.u.c
            public void a(u uVar) {
                am.a(view, 1.0f);
                am.e(view);
                uVar.b(this);
            }
        });
        return objectAnimatorOfFloat;
    }

    @Override // android.support.transition.at
    public Animator a(ViewGroup viewGroup, View view, aa aaVar, aa aaVar2) {
        float fA = a(aaVar, 0.0f);
        return a(view, fA != 1.0f ? fA : 0.0f, 1.0f);
    }

    @Override // android.support.transition.at
    public Animator b(ViewGroup viewGroup, View view, aa aaVar, aa aaVar2) {
        am.d(view);
        return a(view, a(aaVar, 1.0f), 0.0f);
    }

    private static float a(aa aaVar, float f) {
        Float f2;
        if (aaVar != null && (f2 = (Float) aaVar.f474a.get("android:fade:transitionAlpha")) != null) {
            return f2.floatValue();
        }
        return f;
    }

    private static class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f543a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f544b = false;

        a(View view) {
            this.f543a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (android.support.v4.view.s.p(this.f543a) && this.f543a.getLayerType() == 0) {
                this.f544b = true;
                this.f543a.setLayerType(2, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            am.a(this.f543a, 1.0f);
            if (this.f544b) {
                this.f543a.setLayerType(0, null);
            }
        }
    }
}
