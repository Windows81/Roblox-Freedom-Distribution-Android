package com.roblox.client.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.roblox.client.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RbxProgressButton extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    o f6703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RbxButton f6704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f6705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f6706d;
    private LinearLayout e;
    private g f;
    private a g;
    private b h;
    private String i;
    private String j;
    private String k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;

    public enum a {
        BUTTON,
        ANIMATING,
        PROGRESS
    }

    public enum b {
        SHOW_BUTTON,
        SHOW_PROGRESS
    }

    public RbxProgressButton(Context context) {
        super(context);
        this.f6704b = null;
        this.f6705c = null;
        this.f6706d = null;
        this.e = null;
        this.f = null;
        this.g = a.BUTTON;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 150;
        this.m = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.n = 25;
        this.o = 16711680;
        this.p = 25;
        this.q = 16711680;
        this.f6703a = null;
    }

    public RbxProgressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6704b = null;
        this.f6705c = null;
        this.f6706d = null;
        this.e = null;
        this.f = null;
        this.g = a.BUTTON;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 150;
        this.m = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.n = 25;
        this.o = 16711680;
        this.p = 25;
        this.q = 16711680;
        this.f6703a = null;
        a(attributeSet);
    }

    public RbxProgressButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6704b = null;
        this.f6705c = null;
        this.f6706d = null;
        this.e = null;
        this.f = null;
        this.g = a.BUTTON;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 150;
        this.m = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.n = 25;
        this.o = 16711680;
        this.p = 25;
        this.q = 16711680;
        this.f6703a = null;
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        inflate(getContext(), 2131361937, this);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.b.RbxProgressButton);
        this.j = typedArrayObtainStyledAttributes.getString(3);
        this.k = typedArrayObtainStyledAttributes.getString(4);
        if (this.j == null) {
            this.j = "";
        }
        if (this.k == null) {
            this.k = getContext().getString(h.a.CommonUI_Messages_Label_Working);
        }
        this.f6704b = (RbxButton) findViewById(2131231084);
        this.f6705c = (TextView) findViewById(2131231083);
        this.f6706d = (ProgressBar) findViewById(2131231081);
        this.e = (LinearLayout) findViewById(2131231082);
        this.f6704b.setText(this.j);
        this.f6705c.setText(this.k);
        m.a(this.f6705c, getContext(), attributeSet);
        this.f6705c.setTextSize(0, typedArrayObtainStyledAttributes.getDimension(6, 25.0f));
        this.f6705c.setTextColor(typedArrayObtainStyledAttributes.getColor(5, 16711680));
        m.a(this.f6704b, getContext(), attributeSet);
        this.f6704b.setTextSize(0, typedArrayObtainStyledAttributes.getDimension(2, 25.0f));
        this.f6704b.setTextColor(typedArrayObtainStyledAttributes.getColor(1, 16711680));
        this.f6704b.setContentDescription(getContentDescription());
        this.e.setVisibility(4);
        this.f6703a = new o(this, attributeSet);
        this.f6703a.a(typedArrayObtainStyledAttributes.getColor(7, getResources().getColor(2131034123)));
        this.f6704b.setBackgroundResource(typedArrayObtainStyledAttributes.getResourceId(0, 2131167203));
        setBackgroundResource(typedArrayObtainStyledAttributes.getResourceId(0, 2131167203));
        f();
        typedArrayObtainStyledAttributes.recycle();
    }

    public a getCurrentState() {
        return this.g;
    }

    public void a(b bVar) {
        switch (bVar) {
            case SHOW_BUTTON:
                a();
                break;
            case SHOW_PROGRESS:
                d();
                break;
        }
    }

    public void a(b bVar, int i) {
        switch (bVar) {
            case SHOW_BUTTON:
                a(i);
                break;
            case SHOW_PROGRESS:
                b(i);
                break;
        }
    }

    private void a(int i) {
        this.f6704b.setText(i);
        b();
    }

    private void a() {
        this.f6704b.setText(this.j);
        b();
    }

    private void b() {
        if (this.g == a.PROGRESS) {
            this.g = a.ANIMATING;
            final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.g = a.BUTTON;
                    RbxProgressButton.this.f();
                    RbxProgressButton.this.c();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation2.setDuration(150L);
            this.e.startAnimation(alphaAnimation2);
            alphaAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.e.setVisibility(4);
                    RbxProgressButton.this.f6704b.setVisibility(0);
                    RbxProgressButton.this.f6704b.startAnimation(alphaAnimation);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            return;
        }
        if (this.g == a.ANIMATING) {
            b(b.SHOW_BUTTON);
        }
    }

    private void b(b bVar) {
        this.h = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.h != null) {
            switch (this.h) {
                case SHOW_BUTTON:
                    b();
                    break;
                case SHOW_PROGRESS:
                    e();
                    break;
            }
            this.h = null;
        }
    }

    private void b(int i) {
        if (this.g == a.PROGRESS) {
            this.i = getResources().getString(i);
        } else {
            this.f6705c.setText(i);
        }
        if (this.i == null) {
            this.i = getResources().getString(h.a.CommonUI_Messages_Label_Working_InProgress);
        }
        e();
    }

    private void d() {
        if (this.g == a.PROGRESS) {
            this.i = this.k;
        } else {
            this.f6705c.setText(this.k);
        }
        e();
    }

    private void e() {
        if (this.g == a.BUTTON) {
            this.g = a.ANIMATING;
            final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.g = a.PROGRESS;
                    RbxProgressButton.this.c();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation2.setDuration(150L);
            this.f6704b.startAnimation(alphaAnimation2);
            alphaAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.4
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.f6704b.setVisibility(4);
                    RbxProgressButton.this.e.setVisibility(0);
                    RbxProgressButton.this.e.startAnimation(alphaAnimation);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            return;
        }
        if (this.g == a.PROGRESS) {
            this.g = a.ANIMATING;
            final AlphaAnimation alphaAnimation3 = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation3.setDuration(200L);
            alphaAnimation3.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.5
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.g = a.PROGRESS;
                    RbxProgressButton.this.c();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            AlphaAnimation alphaAnimation4 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation4.setDuration(150L);
            this.f6705c.startAnimation(alphaAnimation4);
            alphaAnimation4.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.6
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.f6705c.setText(RbxProgressButton.this.i != null ? RbxProgressButton.this.i : RbxProgressButton.this.k);
                    RbxProgressButton.this.i = null;
                    RbxProgressButton.this.f6705c.startAnimation(alphaAnimation3);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            return;
        }
        if (this.g == a.ANIMATING && this.f6705c != null && this.i != null && !this.i.equals(this.f6705c)) {
            b(b.SHOW_PROGRESS);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f6703a.a(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.f6703a.a(canvas);
    }

    public void setOnRbxClickedListener(g gVar) {
        this.f = gVar;
    }

    public g getOnRbxClickedListener() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f6704b.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxProgressButton.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RbxProgressButton.this.g == a.BUTTON && RbxProgressButton.this.f != null) {
                    RbxProgressButton.this.f.a(view);
                }
            }
        });
    }
}
