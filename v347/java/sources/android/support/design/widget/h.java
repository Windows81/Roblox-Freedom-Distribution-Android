package android.support.design.widget;

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
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class h extends g {
    private InsetDrawable p;

    h(w wVar, l lVar) {
        super(wVar, lVar);
    }

    @Override // android.support.design.widget.g
    void a(int i) {
        if (this.e instanceof RippleDrawable) {
            ((RippleDrawable) this.e).setColor(ColorStateList.valueOf(i));
        } else {
            super.a(i);
        }
    }

    @Override // android.support.design.widget.g
    void a(float f, float f2) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.n.isEnabled()) {
                this.n.setElevation(f);
                if (this.n.isFocused() || this.n.isPressed()) {
                    this.n.setTranslationZ(f2);
                } else {
                    this.n.setTranslationZ(0.0f);
                }
            } else {
                this.n.setElevation(0.0f);
                this.n.setTranslationZ(0.0f);
            }
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ObjectAnimator.ofFloat(this.n, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.n, (Property<w, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
            animatorSet.setInterpolator(f398a);
            stateListAnimator.addState(j, animatorSet);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.play(ObjectAnimator.ofFloat(this.n, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.n, (Property<w, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
            animatorSet2.setInterpolator(f398a);
            stateListAnimator.addState(k, animatorSet2);
            AnimatorSet animatorSet3 = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.n, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.n, (Property<w, Float>) View.TRANSLATION_Z, this.n.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.n, (Property<w, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet3.playSequentially((Animator[]) arrayList.toArray(new ObjectAnimator[0]));
            animatorSet3.setInterpolator(f398a);
            stateListAnimator.addState(l, animatorSet3);
            AnimatorSet animatorSet4 = new AnimatorSet();
            animatorSet4.play(ObjectAnimator.ofFloat(this.n, "elevation", 0.0f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.n, (Property<w, Float>) View.TRANSLATION_Z, 0.0f).setDuration(0L));
            animatorSet4.setInterpolator(f398a);
            stateListAnimator.addState(m, animatorSet4);
            this.n.setStateListAnimator(stateListAnimator);
        }
        if (this.o.b()) {
            e();
        }
    }

    @Override // android.support.design.widget.g
    public float a() {
        return this.n.getElevation();
    }

    @Override // android.support.design.widget.g
    void d() {
        e();
    }

    @Override // android.support.design.widget.g
    void b(Rect rect) {
        if (this.o.b()) {
            this.p = new InsetDrawable(this.e, rect.left, rect.top, rect.right, rect.bottom);
            this.o.a(this.p);
        } else {
            this.o.a(this.e);
        }
    }

    @Override // android.support.design.widget.g
    void a(int[] iArr) {
    }

    @Override // android.support.design.widget.g
    void b() {
    }

    @Override // android.support.design.widget.g
    boolean h() {
        return false;
    }

    @Override // android.support.design.widget.g
    void a(Rect rect) {
        if (this.o.b()) {
            float fA = this.o.a();
            float fA2 = a() + this.i;
            int iCeil = (int) Math.ceil(k.b(fA2, fA, false));
            int iCeil2 = (int) Math.ceil(k.a(fA2, fA, false));
            rect.set(iCeil, iCeil2, iCeil, iCeil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
