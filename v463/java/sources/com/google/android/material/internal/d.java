package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<a> f5006b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f5007c = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ValueAnimator f5005a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f5008d = new AnimatorListenerAdapter() { // from class: com.google.android.material.internal.d.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (d.this.f5005a == animator) {
                d.this.f5005a = null;
            }
        }
    };

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        a aVar = new a(iArr, valueAnimator);
        valueAnimator.addListener(this.f5008d);
        this.f5006b.add(aVar);
    }

    public void a(int[] iArr) {
        a aVar;
        int size = this.f5006b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f5006b.get(i);
            if (StateSet.stateSetMatches(aVar.f5010a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        a aVar2 = this.f5007c;
        if (aVar == aVar2) {
            return;
        }
        if (aVar2 != null) {
            b();
        }
        this.f5007c = aVar;
        if (aVar != null) {
            a(aVar);
        }
    }

    private void a(a aVar) {
        ValueAnimator valueAnimator = aVar.f5011b;
        this.f5005a = valueAnimator;
        valueAnimator.start();
    }

    private void b() {
        ValueAnimator valueAnimator = this.f5005a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f5005a = null;
        }
    }

    public void a() {
        ValueAnimator valueAnimator = this.f5005a;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f5005a = null;
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f5010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ValueAnimator f5011b;

        a(int[] iArr, ValueAnimator valueAnimator) {
            this.f5010a = iArr;
            this.f5011b = valueAnimator;
        }
    }
}
