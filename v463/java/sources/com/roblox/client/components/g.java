package com.roblox.client.components;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {
    private static AlphaAnimation a(final View view, final float f, final float f2, int i) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setDuration(i);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.g.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setAlpha(f);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setAlpha(f2);
            }
        });
        return alphaAnimation;
    }

    public static AlphaAnimation a(View view) {
        return a(view, 1.0f, 0.35f, 200);
    }

    public static AlphaAnimation b(View view) {
        return a(view, 0.35f, 1.0f, 200);
    }

    public static void a(View view, int i, float f, float f2, long j) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setDuration(j);
        view.setAnimation(alphaAnimation);
        view.setVisibility(i);
    }
}
