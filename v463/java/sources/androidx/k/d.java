package androidx.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends ai {
    public d(int i) {
        a(i);
    }

    public d() {
    }

    @Override // androidx.k.ai, androidx.k.m
    public void a(s sVar) {
        super.a(sVar);
        sVar.f2030a.put("android:fade:transitionAlpha", Float.valueOf(ad.c(sVar.f2031b)));
    }

    private Animator a(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ad.a(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, ad.f1929a, f2);
        objectAnimatorOfFloat.addListener(new a(view));
        a(new n() { // from class: androidx.k.d.1
            @Override // androidx.k.n, androidx.k.m.c
            public void a(m mVar) {
                ad.a(view, 1.0f);
                ad.e(view);
                mVar.b(this);
            }
        });
        return objectAnimatorOfFloat;
    }

    @Override // androidx.k.ai
    public Animator a(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        float fA = a(sVar, 0.0f);
        return a(view, fA != 1.0f ? fA : 0.0f, 1.0f);
    }

    @Override // androidx.k.ai
    public Animator b(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        ad.d(view);
        return a(view, a(sVar, 1.0f), 0.0f);
    }

    private static float a(s sVar, float f) {
        Float f2;
        return (sVar == null || (f2 = (Float) sVar.f2030a.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    private static class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f1982a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1983b = false;

        a(View view) {
            this.f1982a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (androidx.core.h.r.q(this.f1982a) && this.f1982a.getLayerType() == 0) {
                this.f1983b = true;
                this.f1982a.setLayerType(2, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ad.a(this.f1982a, 1.0f);
            if (this.f1983b) {
                this.f1982a.setLayerType(0, null);
            }
        }
    }
}
