package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f extends u {
    private static final String[] g = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property<Drawable, PointF> h = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: android.support.transition.f.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f523a = new Rect();

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f523a);
            this.f523a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f523a);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f523a);
            return new PointF(this.f523a.left, this.f523a.top);
        }
    };
    private static final Property<a, PointF> i = new Property<a, PointF>(PointF.class, "topLeft") { // from class: android.support.transition.f.3
        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(a aVar, PointF pointF) {
            aVar.a(pointF);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(a aVar) {
            return null;
        }
    };
    private static final Property<a, PointF> j = new Property<a, PointF>(PointF.class, "bottomRight") { // from class: android.support.transition.f.4
        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(a aVar, PointF pointF) {
            aVar.b(pointF);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(a aVar) {
            return null;
        }
    };
    private static final Property<View, PointF> k = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: android.support.transition.f.5
        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            am.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }
    };
    private static final Property<View, PointF> l = new Property<View, PointF>(PointF.class, "topLeft") { // from class: android.support.transition.f.6
        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            am.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }
    };
    private static final Property<View, PointF> m = new Property<View, PointF>(PointF.class, "position") { // from class: android.support.transition.f.7
        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            am.a(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }
    };
    private static s q = new s();
    private int[] n = new int[2];
    private boolean o = false;
    private boolean p = false;

    @Override // android.support.transition.u
    public String[] a() {
        return g;
    }

    private void d(aa aaVar) {
        View view = aaVar.f475b;
        if (android.support.v4.view.s.v(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            aaVar.f474a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            aaVar.f474a.put("android:changeBounds:parent", aaVar.f475b.getParent());
            if (this.p) {
                aaVar.f475b.getLocationInWindow(this.n);
                aaVar.f474a.put("android:changeBounds:windowX", Integer.valueOf(this.n[0]));
                aaVar.f474a.put("android:changeBounds:windowY", Integer.valueOf(this.n[1]));
            }
            if (this.o) {
                aaVar.f474a.put("android:changeBounds:clip", android.support.v4.view.s.x(view));
            }
        }
    }

    @Override // android.support.transition.u
    public void a(aa aaVar) {
        d(aaVar);
    }

    @Override // android.support.transition.u
    public void b(aa aaVar) {
        d(aaVar);
    }

    private boolean a(View view, View view2) {
        if (!this.p) {
            return true;
        }
        aa aaVarB = b(view, true);
        return aaVarB == null ? view == view2 : view2 == aaVarB.f475b;
    }

    @Override // android.support.transition.u
    public Animator a(final ViewGroup viewGroup, aa aaVar, aa aaVar2) {
        ObjectAnimator objectAnimatorA;
        ObjectAnimator objectAnimator;
        Animator animatorA;
        if (aaVar == null || aaVar2 == null) {
            return null;
        }
        Map<String, Object> map = aaVar.f474a;
        Map<String, Object> map2 = aaVar2.f474a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view = aaVar2.f475b;
        if (a(viewGroup2, viewGroup3)) {
            Rect rect = (Rect) aaVar.f474a.get("android:changeBounds:bounds");
            Rect rect2 = (Rect) aaVar2.f474a.get("android:changeBounds:bounds");
            int i2 = rect.left;
            final int i3 = rect2.left;
            int i4 = rect.top;
            final int i5 = rect2.top;
            int i6 = rect.right;
            final int i7 = rect2.right;
            int i8 = rect.bottom;
            final int i9 = rect2.bottom;
            int i10 = i6 - i2;
            int i11 = i8 - i4;
            int i12 = i7 - i3;
            int i13 = i9 - i5;
            Rect rect3 = (Rect) aaVar.f474a.get("android:changeBounds:clip");
            final Rect rect4 = (Rect) aaVar2.f474a.get("android:changeBounds:clip");
            if ((i10 != 0 && i11 != 0) || (i12 != 0 && i13 != 0)) {
                i = (i2 == i3 && i4 == i5) ? 0 : 1;
                if (i6 != i7 || i8 != i9) {
                    i++;
                }
            }
            if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                i++;
            }
            if (i > 0) {
                if (!this.o) {
                    am.a(view, i2, i4, i6, i8);
                    if (i == 2) {
                        if (i10 == i12 && i11 == i13) {
                            animatorA = h.a(view, m, l().a(i2, i4, i3, i5));
                        } else {
                            final a aVar = new a(view);
                            ObjectAnimator objectAnimatorA2 = h.a(aVar, i, l().a(i2, i4, i3, i5));
                            ObjectAnimator objectAnimatorA3 = h.a(aVar, j, l().a(i6, i8, i7, i9));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.f.8
                                private a mViewBounds;

                                {
                                    this.mViewBounds = aVar;
                                }
                            });
                            animatorA = animatorSet;
                        }
                    } else if (i2 != i3 || i4 != i5) {
                        animatorA = h.a(view, l, l().a(i2, i4, i3, i5));
                    } else {
                        animatorA = h.a(view, k, l().a(i6, i8, i7, i9));
                    }
                } else {
                    am.a(view, i2, i4, Math.max(i10, i12) + i2, Math.max(i11, i13) + i4);
                    if (i2 == i3 && i4 == i5) {
                        objectAnimatorA = null;
                    } else {
                        objectAnimatorA = h.a(view, m, l().a(i2, i4, i3, i5));
                    }
                    Rect rect5 = rect3 == null ? new Rect(0, 0, i10, i11) : rect3;
                    Rect rect6 = rect4 == null ? new Rect(0, 0, i12, i13) : rect4;
                    if (rect5.equals(rect6)) {
                        objectAnimator = null;
                    } else {
                        android.support.v4.view.s.a(view, rect5);
                        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", q, rect5, rect6);
                        objectAnimatorOfObject.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.f.9
                            private boolean h;

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                this.h = true;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (!this.h) {
                                    android.support.v4.view.s.a(view, rect4);
                                    am.a(view, i3, i5, i7, i9);
                                }
                            }
                        });
                        objectAnimator = objectAnimatorOfObject;
                    }
                    animatorA = z.a(objectAnimatorA, objectAnimator);
                }
                if (view.getParent() instanceof ViewGroup) {
                    final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                    af.a(viewGroup4, true);
                    a(new v() { // from class: android.support.transition.f.10

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        boolean f524a = false;

                        @Override // android.support.transition.v, android.support.transition.u.c
                        public void a(u uVar) {
                            if (!this.f524a) {
                                af.a(viewGroup4, false);
                            }
                            uVar.b(this);
                        }

                        @Override // android.support.transition.v, android.support.transition.u.c
                        public void b(u uVar) {
                            af.a(viewGroup4, false);
                        }

                        @Override // android.support.transition.v, android.support.transition.u.c
                        public void c(u uVar) {
                            af.a(viewGroup4, true);
                        }
                    });
                    return animatorA;
                }
                return animatorA;
            }
        } else {
            int iIntValue = ((Integer) aaVar.f474a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((Integer) aaVar.f474a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((Integer) aaVar2.f474a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((Integer) aaVar2.f474a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue != iIntValue3 || iIntValue2 != iIntValue4) {
                viewGroup.getLocationInWindow(this.n);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                view.draw(new Canvas(bitmapCreateBitmap));
                final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                final float fC = am.c(view);
                am.a(view, 0.0f);
                am.a(viewGroup).a(bitmapDrawable);
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, n.a(h, l().a(iIntValue - this.n[0], iIntValue2 - this.n[1], iIntValue3 - this.n[0], iIntValue4 - this.n[1])));
                objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.f.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        am.a(viewGroup).b(bitmapDrawable);
                        am.a(view, fC);
                    }
                });
                return objectAnimatorOfPropertyValuesHolder;
            }
        }
        return null;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f537a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f538b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f539c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f540d;
        private View e;
        private int f;
        private int g;

        a(View view) {
            this.e = view;
        }

        void a(PointF pointF) {
            this.f537a = Math.round(pointF.x);
            this.f538b = Math.round(pointF.y);
            this.f++;
            if (this.f == this.g) {
                a();
            }
        }

        void b(PointF pointF) {
            this.f539c = Math.round(pointF.x);
            this.f540d = Math.round(pointF.y);
            this.g++;
            if (this.f == this.g) {
                a();
            }
        }

        private void a() {
            am.a(this.e, this.f537a, this.f538b, this.f539c, this.f540d);
            this.f = 0;
            this.g = 0;
        }
    }
}
