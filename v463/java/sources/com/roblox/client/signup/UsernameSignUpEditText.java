package com.roblox.client.signup;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.roblox.client.components.RbxLoadingEditText;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class UsernameSignUpEditText extends RbxLoadingEditText {
    private b h;
    private int i;
    private final View.OnClickListener j;

    public UsernameSignUpEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new View.OnClickListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UsernameSignUpEditText.this.h != null) {
                    UsernameSignUpEditText.this.h.a();
                }
            }
        };
        l();
    }

    private void l() {
        this.f5793d = false;
    }

    public void h() {
        setRightDrawableClickListener(this.j);
        setRightIcon(o.e.icon_autogenerate);
    }

    public void i() {
        setRightDrawableClickListener(null);
        setRightIcon(o.e.icon_check_green);
    }

    public void j() {
        setRightDrawableClickListener(null);
        setRightIcon(o.e.icon_autogenerate_disabled);
    }

    public void k() {
        setRightIcon(0);
    }

    public void setGenerateUsernameIconTouchListener(b bVar) {
        this.h = bVar;
    }

    @Override // com.roblox.client.components.RbxEditText
    protected void setRightIcon(int i) {
        if (com.roblox.client.b.ap() && this.i != i) {
            this.i = i;
            a(a(getContext(), i));
        }
    }

    private void a(final Drawable drawable) {
        Drawable drawable2 = this.f5790a.getCompoundDrawables()[2];
        final int paddingRight = this.f5790a.getPaddingRight();
        if (drawable2 == null) {
            a(drawable, paddingRight);
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f5790a.getPaddingRight(), -(this.f5790a.getPaddingRight() + drawable2.getBounds().width()));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                UsernameSignUpEditText.this.f5790a.setPadding(UsernameSignUpEditText.this.f5790a.getPaddingLeft(), UsernameSignUpEditText.this.f5790a.getPaddingTop(), ((Integer) valueAnimator.getAnimatedValue()).intValue(), UsernameSignUpEditText.this.f5790a.getPaddingBottom());
            }
        });
        valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                UsernameSignUpEditText.this.a(drawable, paddingRight);
            }
        });
        valueAnimatorOfInt.setDuration(100L);
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Drawable drawable, int i) {
        this.f5790a.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        if (drawable == null) {
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, i);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.roblox.client.signup.UsernameSignUpEditText.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                UsernameSignUpEditText.this.f5790a.setPadding(UsernameSignUpEditText.this.f5790a.getPaddingLeft(), UsernameSignUpEditText.this.f5790a.getPaddingTop(), ((Integer) valueAnimator.getAnimatedValue()).intValue(), UsernameSignUpEditText.this.f5790a.getPaddingBottom());
            }
        });
        valueAnimatorOfInt.setDuration(100L);
        valueAnimatorOfInt.start();
    }
}
