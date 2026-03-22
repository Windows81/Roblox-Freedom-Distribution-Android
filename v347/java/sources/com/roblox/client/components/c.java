package com.roblox.client.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AnimatorSet f6725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f6728d;
    private Integer e;
    private Integer f;
    private Integer g;
    private View h;
    private View i;
    private View j;
    private int k;
    private boolean l;

    public c(Context context, View view, int i, int i2, Integer num, Integer num2) {
        this(context, view, i, i2, i2, num, num2, num, num2);
    }

    public c(Context context, View view, int i, int i2, int i3, Integer num, Integer num2, Integer num3, Integer num4) {
        this.f6728d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.l = false;
        this.f6726b = context.getResources().getColor(i2);
        this.f6727c = context.getResources().getColor(i3);
        this.f6728d = num != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num.intValue())) : null;
        this.e = num2 != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num2.intValue())) : null;
        this.f = num3 != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num3.intValue())) : null;
        this.g = num4 != null ? Integer.valueOf(context.getResources().getDimensionPixelSize(num4.intValue())) : null;
        this.k = i;
        this.h = view.findViewById(2131230998);
        this.i = view.findViewById(2131230999);
        this.j = view.findViewById(2131231000);
        this.f6725a = d();
    }

    public void a() {
        if (!this.l && this.f6725a != null && !this.f6725a.isStarted()) {
            this.f6725a.setStartDelay(this.k);
            this.f6725a.start();
        }
    }

    public void b() {
        if (this.f6725a != null) {
            this.f6725a.cancel();
            this.h.setBackgroundColor(this.f6726b);
            this.i.setBackgroundColor(this.f6726b);
            this.j.setBackgroundColor(this.f6726b);
            if (this.f != null) {
                a(this.h, this.f.intValue());
                a(this.i, this.f.intValue());
                a(this.j, this.f.intValue());
            }
            if (this.f6728d != null) {
                b(this.h, this.f6728d.intValue());
                b(this.i, this.f6728d.intValue());
                b(this.j, this.f6728d.intValue());
            }
        }
    }

    public void c() {
        b();
        this.l = true;
    }

    private AnimatorSet d() {
        AnimatorSet animatorSet = new AnimatorSet();
        Animator animatorA = a(this.h, this.f6726b, this.f6727c, this.f6728d, this.e, this.f, this.g);
        Animator animatorA2 = a(this.i, this.f6726b, this.f6727c, this.f6728d, this.e, this.f, this.g);
        Animator animatorA3 = a(this.j, this.f6726b, this.f6727c, this.f6728d, this.e, this.f, this.g);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.roblox.client.components.c.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f6730b;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.f6730b = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f6730b = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(final Animator animator) {
                com.roblox.client.util.g.b(com.roblox.client.chat.a.f6496a, "onAnimationEnd() cancel:" + this.f6730b);
                if (!this.f6730b) {
                    c.this.h.post(new Runnable() { // from class: com.roblox.client.components.c.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            animator.start();
                        }
                    });
                }
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
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.c.2
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
            arrayList.add(a(num, num2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.c.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    c.this.b(view, ((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            }));
        }
        if (num3 != null && num4 != null) {
            arrayList.add(a(num3, num4, new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.components.c.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    c.this.a(view, ((Integer) valueAnimator2.getAnimatedValue()).intValue());
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
