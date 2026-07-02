package com.roblox.client.signup;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.roblox.client.R;
import com.roblox.client.components.RbxLoadingEditText;

/* JADX INFO: loaded from: classes.dex */
public class UsernameSignUpEditText extends RbxLoadingEditText {
    private c f;
    private int g;
    private final View.OnTouchListener h;

    public UsernameSignUpEditText(Context context) {
        super(context);
        this.h = new View.OnTouchListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                Drawable drawable;
                if (motionEvent.getAction() != 1 || (drawable = UsernameSignUpEditText.this.f6675a.getCompoundDrawables()[2]) == null || motionEvent.getRawX() < UsernameSignUpEditText.this.f6675a.getRight() - drawable.getBounds().width()) {
                    return false;
                }
                if (UsernameSignUpEditText.this.f == null) {
                    return true;
                }
                UsernameSignUpEditText.this.f.a();
                return true;
            }
        };
        l();
    }

    public UsernameSignUpEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = new View.OnTouchListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                Drawable drawable;
                if (motionEvent.getAction() != 1 || (drawable = UsernameSignUpEditText.this.f6675a.getCompoundDrawables()[2]) == null || motionEvent.getRawX() < UsernameSignUpEditText.this.f6675a.getRight() - drawable.getBounds().width()) {
                    return false;
                }
                if (UsernameSignUpEditText.this.f == null) {
                    return true;
                }
                UsernameSignUpEditText.this.f.a();
                return true;
            }
        };
        l();
    }

    private void l() {
        this.f6677c = false;
    }

    public void h() {
        this.f6675a.setOnTouchListener(this.h);
        setRightIcon(R.drawable.icon_autogenerate);
    }

    public void i() {
        this.f6675a.setOnTouchListener(null);
        setRightIcon(R.drawable.icon_check_green);
    }

    public void j() {
        this.f6675a.setOnTouchListener(null);
        setRightIcon(R.drawable.icon_autogenerate_disabled);
    }

    public void k() {
        setRightIcon(0);
    }

    public void setGenerateUsernameIconTouchListener(c cVar) {
        this.f = cVar;
    }

    @Override // com.roblox.client.components.RbxEditText
    protected void setRightIcon(int i) {
        if (com.roblox.client.b.aZ() && this.g != i) {
            this.g = i;
            a(a(getContext(), i));
        }
    }

    private void a(final Drawable drawable) {
        Drawable drawable2 = this.f6675a.getCompoundDrawables()[2];
        final int paddingRight = this.f6675a.getPaddingRight();
        if (drawable2 == null) {
            a(drawable, paddingRight);
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f6675a.getPaddingRight(), -(drawable2.getBounds().width() + this.f6675a.getPaddingRight()));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                UsernameSignUpEditText.this.f6675a.setPadding(UsernameSignUpEditText.this.f6675a.getPaddingLeft(), UsernameSignUpEditText.this.f6675a.getPaddingTop(), ((Integer) valueAnimator.getAnimatedValue()).intValue(), UsernameSignUpEditText.this.f6675a.getPaddingBottom());
            }
        });
        valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                UsernameSignUpEditText.this.a(drawable, paddingRight);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        valueAnimatorOfInt.setDuration(100L);
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Drawable drawable, int i) {
        this.f6675a.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        if (drawable != null) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, i);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    UsernameSignUpEditText.this.f6675a.setPadding(UsernameSignUpEditText.this.f6675a.getPaddingLeft(), UsernameSignUpEditText.this.f6675a.getPaddingTop(), ((Integer) valueAnimator.getAnimatedValue()).intValue(), UsernameSignUpEditText.this.f6675a.getPaddingBottom());
                }
            });
            valueAnimatorOfInt.setDuration(100L);
            valueAnimatorOfInt.start();
        }
    }
}
