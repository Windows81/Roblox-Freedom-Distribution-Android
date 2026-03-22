package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<a> f441b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f442c = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ValueAnimator f440a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f443d = new AnimatorListenerAdapter() { // from class: android.support.design.widget.n.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (n.this.f440a == animator) {
                n.this.f440a = null;
            }
        }
    };

    n() {
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        a aVar = new a(iArr, valueAnimator);
        valueAnimator.addListener(this.f443d);
        this.f441b.add(aVar);
    }

    void a(int[] iArr) {
        a aVar;
        int size = this.f441b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f441b.get(i);
            if (StateSet.stateSetMatches(aVar.f445a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        if (aVar != this.f442c) {
            if (this.f442c != null) {
                b();
            }
            this.f442c = aVar;
            if (aVar != null) {
                a(aVar);
            }
        }
    }

    private void a(a aVar) {
        this.f440a = aVar.f446b;
        this.f440a.start();
    }

    private void b() {
        if (this.f440a != null) {
            this.f440a.cancel();
            this.f440a = null;
        }
    }

    public void a() {
        if (this.f440a != null) {
            this.f440a.end();
            this.f440a = null;
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ValueAnimator f446b;

        a(int[] iArr, ValueAnimator valueAnimator) {
            this.f445a = iArr;
            this.f446b = valueAnimator;
        }
    }
}
