package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class LoadingBar extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<ImageView> f6648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6649b;

    public LoadingBar(Context context) {
        super(context);
        this.f6648a = new ArrayList<>(3);
        a();
    }

    public LoadingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6648a = new ArrayList<>(3);
        a();
    }

    public LoadingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6648a = new ArrayList<>(3);
        a();
    }

    private void a() {
        inflate(getContext(), 2131361912, this);
        this.f6648a.add((ImageView) findViewById(2131230872));
        this.f6648a.add((ImageView) findViewById(2131230873));
        this.f6648a.add((ImageView) findViewById(2131230874));
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0 && !this.f6649b) {
            this.f6649b = true;
            b();
        }
    }

    private void b() {
        int size = this.f6648a.size();
        for (int i = 0; i < size; i++) {
            ImageView imageView = this.f6648a.get(i);
            b bVar = new b();
            a aVar = new a();
            aVar.a(imageView);
            aVar.f6651b = bVar;
            bVar.f6653a = aVar;
            bVar.a(imageView);
            AlphaAnimation alphaAnimationB = b(bVar);
            alphaAnimationB.setStartOffset(i * 400);
            imageView.startAnimation(alphaAnimationB);
        }
    }

    private class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f6650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        b f6651b;

        private a() {
        }

        void a(ImageView imageView) {
            this.f6650a = imageView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f6650a.startAnimation(LoadingBar.this.b(this.f6651b));
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    private class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        a f6653a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f6655c;

        private b() {
        }

        void a(ImageView imageView) {
            this.f6655c = imageView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f6655c.startAnimation(LoadingBar.this.a(this.f6653a));
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
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
