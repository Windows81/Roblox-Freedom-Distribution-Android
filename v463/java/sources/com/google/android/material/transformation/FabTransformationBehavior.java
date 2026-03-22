package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;
import com.google.android.material.a;
import com.google.android.material.a.c;
import com.google.android.material.a.e;
import com.google.android.material.a.h;
import com.google.android.material.a.i;
import com.google.android.material.a.j;
import com.google.android.material.c.d;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f5098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f5099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f5100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f5101d;

    protected abstract a a(Context context, boolean z);

    public FabTransformationBehavior() {
        this.f5098a = new Rect();
        this.f5099b = new RectF();
        this.f5100c = new RectF();
        this.f5101d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5098a = new Rect();
        this.f5099b = new RectF();
        this.f5100c = new RectF();
        this.f5101d = new int[2];
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(CoordinatorLayout.e eVar) {
        if (eVar.h == 0) {
            eVar.h = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    protected AnimatorSet b(final View view, final View view2, final boolean z, boolean z2) {
        a aVarA = a(view2.getContext(), z);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            a(view, view2, z, z2, aVarA, arrayList, arrayList2);
        }
        RectF rectF = this.f5099b;
        a(view, view2, z, z2, aVarA, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        b(view, view2, z, z2, aVarA, arrayList, arrayList2);
        a(view, view2, z, z2, aVarA, fWidth, fHeight, arrayList, arrayList2);
        c(view, view2, z, z2, aVarA, arrayList, arrayList2);
        d(view, view2, z, z2, aVarA, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                    view.setAlpha(0.0f);
                    view.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                view2.setVisibility(4);
                view.setAlpha(1.0f);
                view.setVisibility(0);
            }
        });
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    private void a(View view, View view2, boolean z, boolean z2, a aVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float fL = r.l(view2) - r.l(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-fL);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fL);
        }
        aVar.f5113a.b("elevation").a((Animator) objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    private void a(View view, View view2, boolean z, boolean z2, a aVar, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        i iVarB;
        i iVarB2;
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fA = a(view, view2, aVar.f5114b);
        float fB = b(view, view2, aVar.f5114b);
        if (fA == 0.0f || fB == 0.0f) {
            iVarB = aVar.f5113a.b("translationXLinear");
            iVarB2 = aVar.f5113a.b("translationYLinear");
        } else if ((z && fB < 0.0f) || (!z && fB > 0.0f)) {
            iVarB = aVar.f5113a.b("translationXCurveUpwards");
            iVarB2 = aVar.f5113a.b("translationYCurveUpwards");
        } else {
            iVarB = aVar.f5113a.b("translationXCurveDownwards");
            iVarB2 = aVar.f5113a.b("translationYCurveDownwards");
        }
        i iVar = iVarB;
        i iVar2 = iVarB2;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fA);
                view2.setTranslationY(-fB);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            a(view2, aVar, iVar, iVar2, -fA, -fB, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fA);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fB);
        }
        iVar.a((Animator) objectAnimatorOfFloat);
        iVar2.a((Animator) objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(View view, final View view2, boolean z, boolean z2, a aVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof d) && (view instanceof ImageView)) {
            final d dVar = (d) view2;
            final Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, e.f4782a, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, e.f4782a, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    view2.invalidate();
                }
            });
            aVar.f5113a.b("iconFade").a((Animator) objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    dVar.setCircularRevealOverlayDrawable(drawable);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    dVar.setCircularRevealOverlayDrawable(null);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(View view, View view2, boolean z, boolean z2, a aVar, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animatorA;
        if (view2 instanceof d) {
            final d dVar = (d) view2;
            float fC = c(view, view2, aVar.f5114b);
            float fD = d(view, view2, aVar.f5114b);
            ((FloatingActionButton) view).a(this.f5098a);
            float fWidth = this.f5098a.width() / 2.0f;
            i iVarB = aVar.f5113a.b("expansion");
            if (z) {
                if (!z2) {
                    dVar.setRevealInfo(new d.C0109d(fC, fD, fWidth));
                }
                if (z2) {
                    fWidth = dVar.getRevealInfo().f4916c;
                }
                animatorA = com.google.android.material.c.a.a(dVar, fC, fD, com.google.android.material.e.a.a(fC, fD, 0.0f, 0.0f, f, f2));
                animatorA.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        d.C0109d revealInfo = dVar.getRevealInfo();
                        revealInfo.f4916c = Float.MAX_VALUE;
                        dVar.setRevealInfo(revealInfo);
                    }
                });
                a(view2, iVarB.a(), (int) fC, (int) fD, fWidth, list);
            } else {
                float f3 = dVar.getRevealInfo().f4916c;
                Animator animatorA2 = com.google.android.material.c.a.a(dVar, fC, fD, fWidth);
                int i = (int) fC;
                int i2 = (int) fD;
                a(view2, iVarB.a(), i, i2, f3, list);
                a(view2, iVarB.a(), iVarB.b(), aVar.f5113a.a(), i, i2, fWidth, list);
                animatorA = animatorA2;
            }
            iVarB.a(animatorA);
            list.add(animatorA);
            list2.add(com.google.android.material.c.a.a(dVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(View view, View view2, boolean z, boolean z2, a aVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof d) {
            d dVar = (d) view2;
            int iC = c(view);
            int i = 16777215 & iC;
            if (z) {
                if (!z2) {
                    dVar.setCircularRevealScrimColor(iC);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, d.c.f4913a, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, d.c.f4913a, iC);
            }
            objectAnimatorOfInt.setEvaluator(c.a());
            aVar.f5113a.b("color").a((Animator) objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void d(View view, View view2, boolean z, boolean z2, a aVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupA;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof d) && com.google.android.material.c.c.f4905a == 0) || (viewGroupA = a(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    com.google.android.material.a.d.f4781a.set(viewGroupA, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupA, com.google.android.material.a.d.f4781a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupA, com.google.android.material.a.d.f4781a, 0.0f);
            }
            aVar.f5113a.b("contentFade").a((Animator) objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    private float a(View view, View view2, j jVar) {
        float fCenterX;
        float fCenterX2;
        float f;
        RectF rectF = this.f5099b;
        RectF rectF2 = this.f5100c;
        a(view, rectF);
        a(view2, rectF2);
        int i = jVar.f4794a & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else if (i == 5) {
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        } else {
            f = 0.0f;
            return f + jVar.f4795b;
        }
        f = fCenterX - fCenterX2;
        return f + jVar.f4795b;
    }

    private float b(View view, View view2, j jVar) {
        float fCenterY;
        float fCenterY2;
        float f;
        RectF rectF = this.f5099b;
        RectF rectF2 = this.f5100c;
        a(view, rectF);
        a(view2, rectF2);
        int i = jVar.f4794a & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else if (i == 80) {
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        } else {
            f = 0.0f;
            return f + jVar.f4796c;
        }
        f = fCenterY - fCenterY2;
        return f + jVar.f4796c;
    }

    private void a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f5101d);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private float c(View view, View view2, j jVar) {
        RectF rectF = this.f5099b;
        RectF rectF2 = this.f5100c;
        a(view, rectF);
        a(view2, rectF2);
        rectF2.offset(-a(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float d(View view, View view2, j jVar) {
        RectF rectF = this.f5099b;
        RectF rectF2 = this.f5100c;
        a(view, rectF);
        a(view2, rectF2);
        rectF2.offset(0.0f, -b(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private void a(View view, a aVar, i iVar, i iVar2, float f, float f2, float f3, float f4, RectF rectF) {
        float fA = a(aVar, iVar, f, f3);
        float fA2 = a(aVar, iVar2, f2, f4);
        Rect rect = this.f5098a;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f5099b;
        rectF2.set(rect);
        RectF rectF3 = this.f5100c;
        a(view, rectF3);
        rectF3.offset(fA, fA2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private float a(a aVar, i iVar, float f, float f2) {
        long jA = iVar.a();
        long jB = iVar.b();
        i iVarB = aVar.f5113a.b("expansion");
        return com.google.android.material.a.a.a(f, f2, iVar.c().getInterpolation((((iVarB.a() + iVarB.b()) + 17) - jA) / jB));
    }

    private ViewGroup a(View view) {
        View viewFindViewById = view.findViewById(a.e.mtrl_child_content_container);
        if (viewFindViewById != null) {
            return b(viewFindViewById);
        }
        if ((view instanceof b) || (view instanceof com.google.android.material.transformation.a)) {
            return b(((ViewGroup) view).getChildAt(0));
        }
        return b(view);
    }

    private ViewGroup b(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    private int c(View view) {
        ColorStateList colorStateListS = r.s(view);
        if (colorStateListS != null) {
            return colorStateListS.getColorForState(view.getDrawableState(), colorStateListS.getDefaultColor());
        }
        return 0;
    }

    private void a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    private void a(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
                animatorCreateCircularReveal.setStartDelay(j4);
                animatorCreateCircularReveal.setDuration(j3 - j4);
                list.add(animatorCreateCircularReveal);
            }
        }
    }

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f5113a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f5114b;

        protected a() {
        }
    }
}
