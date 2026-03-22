package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.roblox.client.o;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LoadingBar extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<ImageView> f5762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5763b;

    public LoadingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5762a = new ArrayList<>(3);
        a();
    }

    private void a() {
        inflate(getContext(), o.g.loading_bar, this);
        this.f5762a.add((ImageView) findViewById(o.f.dotImage1));
        this.f5762a.add((ImageView) findViewById(o.f.dotImage2));
        this.f5762a.add((ImageView) findViewById(o.f.dotImage3));
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0 || this.f5763b) {
            return;
        }
        this.f5763b = true;
        b();
    }

    private void b() {
        int size = this.f5762a.size();
        for (int i = 0; i < size; i++) {
            ImageView imageView = this.f5762a.get(i);
            b bVar = new b();
            a aVar = new a();
            aVar.a(imageView);
            aVar.f5765b = bVar;
            bVar.f5767a = aVar;
            bVar.a(imageView);
            AlphaAnimation alphaAnimationB = b(bVar);
            alphaAnimationB.setStartOffset(i * 400);
            imageView.startAnimation(alphaAnimationB);
        }
    }

    private class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f5764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        b f5765b;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        private a() {
        }

        void a(ImageView imageView) {
            this.f5764a = imageView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f5764a.startAnimation(LoadingBar.this.b(this.f5765b));
        }
    }

    private class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        a f5767a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f5769c;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        private b() {
        }

        void a(ImageView imageView) {
            this.f5769c = imageView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f5769c.startAnimation(LoadingBar.this.a(this.f5767a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AlphaAnimation a(Animation.AnimationListener animationListener) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(800L);
        alphaAnimation.setAnimationListener(animationListener);
        return alphaAnimation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AlphaAnimation b(Animation.AnimationListener animationListener) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(800L);
        alphaAnimation.setAnimationListener(animationListener);
        return alphaAnimation;
    }
}
