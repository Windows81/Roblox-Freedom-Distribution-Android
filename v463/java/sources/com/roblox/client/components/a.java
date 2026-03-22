package com.roblox.client.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.o;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AnimatorSet f5853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f5856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f5857e;
    private Integer f;
    private Integer g;
    private View h;
    private View i;
    private View j;
    private int k;
    private boolean l = false;

    public a(Context context, View view, int i, int i2, int i3, Integer num, Integer num2, Integer num3, Integer num4) {
        this.f5856d = null;
        this.f5857e = null;
        this.f = null;
        this.g = null;
        this.f5854b = context.getResources().getColor(i2);
        this.f5855c = context.getResources().getColor(i3);
        this.f5856d = num != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num.intValue())) : null;
        this.f5857e = num2 != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num2.intValue())) : null;
        this.f = num3 != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num3.intValue())) : null;
        this.g = num4 != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num4.intValue())) : null;
        this.k = i;
        this.h = view.findViewById(o.f.loading_squares_1);
        this.i = view.findViewById(o.f.loading_squares_2);
        this.j = view.findViewById(o.f.loading_squares_3);
        this.f5853a = c();
    }

    public void a() {
        AnimatorSet animatorSet;
        if (this.l || (animatorSet = this.f5853a) == null || animatorSet.isStarted()) {
            return;
        }
        this.f5853a.setStartDelay(this.k);
        this.f5853a.start();
    }

    public void b() {
        AnimatorSet animatorSet = this.f5853a;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.h.setBackgroundColor(this.f5854b);
            this.i.setBackgroundColor(this.f5854b);
            this.j.setBackgroundColor(this.f5854b);
            Integer num = this.f;
            if (num != null) {
                a(this.h, num.intValue());
                a(this.i, this.f.intValue());
                a(this.j, this.f.intValue());
            }
            Integer num2 = this.f5856d;
            if (num2 != null) {
                b(this.h, num2.intValue());
                b(this.i, this.f5856d.intValue());
                b(this.j, this.f5856d.intValue());
            }
        }
    }

    private AnimatorSet c() {
        AnimatorSet animatorSet = new AnimatorSet();
        Animator animatorA = a(this.h, this.f5854b, this.f5855c, this.f5856d, this.f5857e, this.f, this.g);
        Animator animatorA2 = a(this.i, this.f5854b, this.f5855c, this.f5856d, this.f5857e, this.f, this.g);
        Animator animatorA3 = a(this.j, this.f5854b, this.f5855c, this.f5856d, this.f5857e, this.f, this.g);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.roblox.client.components.a.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f5859b;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.f5859b = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f5859b = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(final Animator animator) {
                com.roblox.client.ae.k.b(com.roblox.client.e.a.f5984a, "onAnimationEnd() cancel:" + this.f5859b);
                if (this.f5859b) {
                    return;
                }
                a.this.h.post(new Runnable() { // from class: com.roblox.client.components.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        animator.start();
                    }
                });
            }
        });
        animatorSet.playSequentially(animatorA, animatorA2, animatorA3);
        return animatorSet;
    }

    private Animator a(final View view, int i, int i2, Integer num, Integer num2, Integer num3, Integer num4) {
        ArrayList arrayList = new ArrayList();
        AnimatorSet animatorSet = new AnimatorSet();
        if (i != i2) {
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(i, i2);
            valueAnimator.setEvaluator(new ArgbEvaluator());
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.a.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    view.setBackgroundColor(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            });
            valueAnimator.setRepeatMode(2);
            valueAnimator.setRepeatCount(1);
            arrayList.add(valueAnimator);
        }
        if (num != null && num2 != null) {
            arrayList.add(a(num, num2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.a.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    a.this.b(view, ((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            }));
        }
        if (num3 != null && num4 != null) {
            arrayList.add(a(num3, num4, new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.a.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    a.this.a(view, ((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            }));
        }
        if (arrayList.size() > 0) {
            AnimatorSet.Builder builderPlay = animatorSet.play((Animator) arrayList.get(0));
            for (int i3 = 1; i3 < arrayList.size(); i3++) {
                builderPlay.with((Animator) arrayList.get(i3));
            }
        }
        animatorSet.setDuration(this.k);
        return animatorSet;
    }

    private ValueAnimator a(Integer num, Integer num2, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(num.intValue(), num2.intValue());
        valueAnimatorOfInt.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfInt.setRepeatMode(2);
        valueAnimatorOfInt.setRepeatCount(1);
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = i;
        view.setLayoutParams(layoutParams);
    }
}
