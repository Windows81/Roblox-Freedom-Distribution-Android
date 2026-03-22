package com.roblox.client.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxProgressButton extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f5824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RbxButton f5825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f5826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f5827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f5828e;
    private d f;
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

    public RbxProgressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5825b = null;
        this.f5826c = null;
        this.f5827d = null;
        this.f5828e = null;
        this.f = null;
        this.g = a.BUTTON;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 150;
        this.m = 200;
        this.n = 25;
        this.o = 16711680;
        this.p = 25;
        this.q = 16711680;
        this.f5824a = null;
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        inflate(getContext(), o.g.rbx_button_progress, this);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.l.RbxProgressButton);
        this.j = typedArrayObtainStyledAttributes.getString(o.l.RbxProgressButton_defButtonText);
        this.k = typedArrayObtainStyledAttributes.getString(o.l.RbxProgressButton_defProgressText);
        if (this.j == null) {
            this.j = "";
        }
        if (this.k == null) {
            this.k = getContext().getString(o.j.CommonUI_Messages_Label_Working);
        }
        this.f5825b = (RbxButton) findViewById(o.f.rbxProgressBtnRbxBtn);
        this.f5826c = (TextView) findViewById(o.f.rbxProgressBtnProgressText);
        this.f5827d = (ProgressBar) findViewById(o.f.rbxProgressBtnProgressBar);
        this.f5828e = (LinearLayout) findViewById(o.f.rbxProgressBtnProgressContainer);
        this.f5825b.setText(this.j);
        this.f5826c.setText(this.k);
        h.a(this.f5826c, getContext(), attributeSet);
        this.f5826c.setTextSize(0, typedArrayObtainStyledAttributes.getDimension(o.l.RbxProgressButton_progressTextSize, 25.0f));
        this.f5826c.setTextColor(typedArrayObtainStyledAttributes.getColor(o.l.RbxProgressButton_progressTextColor, 16711680));
        h.a(this.f5825b, getContext(), attributeSet);
        this.f5825b.setTextSize(0, typedArrayObtainStyledAttributes.getDimension(o.l.RbxProgressButton_buttonTextSize, 25.0f));
        this.f5825b.setTextColor(typedArrayObtainStyledAttributes.getColor(o.l.RbxProgressButton_buttonTextColor, 16711680));
        this.f5825b.setContentDescription(getContentDescription());
        this.f5828e.setVisibility(4);
        i iVar = new i(this, attributeSet);
        this.f5824a = iVar;
        iVar.a(typedArrayObtainStyledAttributes.getColor(o.l.RbxProgressButton_rippleStartColor, getResources().getColor(o.c.RbxGray4)));
        this.f5825b.setBackgroundResource(typedArrayObtainStyledAttributes.getResourceId(o.l.RbxProgressButton_backgroundResource, o.e.rbx_drawable_flat_button_progress_blue));
        setBackgroundResource(typedArrayObtainStyledAttributes.getResourceId(o.l.RbxProgressButton_backgroundResource, o.e.rbx_drawable_flat_button_progress_blue));
        f();
        typedArrayObtainStyledAttributes.recycle();
    }

    public a getCurrentState() {
        return this.g;
    }

    /* JADX INFO: renamed from: com.roblox.client.components.RbxProgressButton$8, reason: invalid class name */
    static /* synthetic */ class AnonymousClass8 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5839a;

        static {
            int[] iArr = new int[b.values().length];
            f5839a = iArr;
            try {
                iArr[b.SHOW_BUTTON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5839a[b.SHOW_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void a(b bVar) {
        int i = AnonymousClass8.f5839a[bVar.ordinal()];
        if (i == 1) {
            a();
        } else {
            if (i != 2) {
                return;
            }
            d();
        }
    }

    public void a(b bVar, int i) {
        int i2 = AnonymousClass8.f5839a[bVar.ordinal()];
        if (i2 == 1) {
            a(i);
        } else {
            if (i2 != 2) {
                return;
            }
            b(i);
        }
    }

    public void a(b bVar, String str) {
        int i = AnonymousClass8.f5839a[bVar.ordinal()];
        if (i == 1) {
            a(str);
        } else {
            if (i != 2) {
                return;
            }
            b(str);
        }
    }

    private void a(String str) {
        this.f5825b.setText(str);
        b();
    }

    private void a(int i) {
        this.f5825b.setText(i);
        b();
    }

    private void a() {
        this.f5825b.setText(this.j);
        b();
    }

    public void setText(String str) {
        this.f5825b.setText(str);
    }

    private void b() {
        if (this.g == a.PROGRESS) {
            this.g = a.ANIMATING;
            final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.g = a.BUTTON;
                    RbxProgressButton.this.f();
                    RbxProgressButton.this.c();
                }
            });
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation2.setDuration(150L);
            this.f5828e.startAnimation(alphaAnimation2);
            alphaAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.f5828e.setVisibility(4);
                    RbxProgressButton.this.f5825b.setVisibility(0);
                    RbxProgressButton.this.f5825b.startAnimation(alphaAnimation);
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
            int i = AnonymousClass8.f5839a[this.h.ordinal()];
            if (i == 1) {
                b();
            } else if (i == 2) {
                e();
            }
            this.h = null;
        }
    }

    private void b(int i) {
        if (this.g == a.PROGRESS) {
            this.i = getResources().getString(i);
        } else {
            this.f5826c.setText(i);
        }
        if (this.i == null) {
            this.i = getResources().getString(o.j.CommonUI_Messages_Label_Working_InProgress);
        }
        e();
    }

    private void b(String str) {
        if (this.g == a.PROGRESS) {
            this.i = str;
        } else {
            this.f5826c.setText(str);
        }
        e();
    }

    private void d() {
        if (this.g == a.PROGRESS) {
            this.i = this.k;
        } else {
            this.f5826c.setText(this.k);
        }
        e();
    }

    private void e() {
        TextView textView;
        String str;
        if (this.g == a.BUTTON) {
            this.g = a.ANIMATING;
            final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.g = a.PROGRESS;
                    RbxProgressButton.this.c();
                }
            });
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation2.setDuration(150L);
            this.f5825b.startAnimation(alphaAnimation2);
            alphaAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.4
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.f5825b.setVisibility(4);
                    RbxProgressButton.this.f5828e.setVisibility(0);
                    RbxProgressButton.this.f5828e.startAnimation(alphaAnimation);
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
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.g = a.PROGRESS;
                    RbxProgressButton.this.c();
                }
            });
            AlphaAnimation alphaAnimation4 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation4.setDuration(150L);
            this.f5826c.startAnimation(alphaAnimation4);
            alphaAnimation4.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxProgressButton.6
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RbxProgressButton.this.f5826c.setText(RbxProgressButton.this.i != null ? RbxProgressButton.this.i : RbxProgressButton.this.k);
                    RbxProgressButton.this.i = null;
                    RbxProgressButton.this.f5826c.startAnimation(alphaAnimation3);
                }
            });
            return;
        }
        if (this.g != a.ANIMATING || (textView = this.f5826c) == null || (str = this.i) == null || str.equals(textView)) {
            return;
        }
        b(b.SHOW_PROGRESS);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f5824a.a(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f5825b.setEnabled(z);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.f5824a.a(canvas);
    }

    public void setOnRbxClickedListener(d dVar) {
        this.f = dVar;
    }

    public d getOnRbxClickedListener() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f5825b.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.components.RbxProgressButton.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RbxProgressButton.this.g != a.BUTTON || RbxProgressButton.this.f == null) {
                    return;
                }
                RbxProgressButton.this.f.a(view);
            }
        });
    }
}
