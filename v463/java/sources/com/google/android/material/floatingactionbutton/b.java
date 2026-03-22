package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.internal.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends a {
    private InsetDrawable x;

    @Override // com.google.android.material.floatingactionbutton.a
    void g() {
    }

    @Override // com.google.android.material.floatingactionbutton.a
    boolean m() {
        return false;
    }

    b(g gVar, com.google.android.material.h.b bVar) {
        super(gVar, bVar);
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void b(ColorStateList colorStateList) {
        if (this.h instanceof RippleDrawable) {
            ((RippleDrawable) this.h).setColor(com.google.android.material.g.a.a(colorStateList));
        } else {
            super.b(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.v.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(p, a(f, f3));
            stateListAnimator.addState(q, a(f, f2));
            stateListAnimator.addState(r, a(f, f2));
            stateListAnimator.addState(s, a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.v, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.v, (Property<g, Float>) View.TRANSLATION_Z, this.v.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.v, (Property<g, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f4931a);
            stateListAnimator.addState(t, animatorSet);
            stateListAnimator.addState(u, a(0.0f, 0.0f));
            this.v.setStateListAnimator(stateListAnimator);
        }
        if (this.w.b()) {
            j();
        }
    }

    private Animator a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.v, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.v, (Property<g, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f4931a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.a
    public float a() {
        return this.v.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void i() {
        j();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void b(Rect rect) {
        if (this.w.b()) {
            this.x = new InsetDrawable(this.h, rect.left, rect.top, rect.right, rect.bottom);
            this.w.a(this.x);
        } else {
            this.w.a(this.h);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.v.isEnabled()) {
                this.v.setElevation(this.k);
                if (this.v.isPressed()) {
                    this.v.setTranslationZ(this.m);
                    return;
                } else if (this.v.isFocused() || this.v.isHovered()) {
                    this.v.setTranslationZ(this.l);
                    return;
                } else {
                    this.v.setTranslationZ(0.0f);
                    return;
                }
            }
            this.v.setElevation(0.0f);
            this.v.setTranslationZ(0.0f);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void a(Rect rect) {
        if (this.w.b()) {
            float fA = this.w.a();
            float fA2 = a() + this.m;
            int iCeil = (int) Math.ceil(com.google.android.material.h.a.b(fA2, fA, false));
            int iCeil2 = (int) Math.ceil(com.google.android.material.h.a.a(fA2, fA, false));
            rect.set(iCeil, iCeil2, iCeil, iCeil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
