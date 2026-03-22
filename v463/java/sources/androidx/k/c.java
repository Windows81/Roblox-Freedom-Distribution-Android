package androidx.k;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends m {
    private static final Property<a, PointF> j;
    private static final Property<a, PointF> k;
    private static final Property<View, PointF> l;
    private static final Property<View, PointF> m;
    private int[] o = new int[2];
    private boolean p = false;
    private boolean q = false;
    private static final String[] h = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property<Drawable, PointF> i = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.k.c.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f1959a = new Rect();

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f1959a);
            this.f1959a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f1959a);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f1959a);
            return new PointF(this.f1959a.left, this.f1959a.top);
        }
    };
    private static final Property<View, PointF> n = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.k.c.7
        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            ad.a(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    };
    private static k r = new k();

    static {
        String str = "topLeft";
        j = new Property<a, PointF>(PointF.class, str) { // from class: androidx.k.c.3
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(a aVar) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(a aVar, PointF pointF) {
                aVar.a(pointF);
            }
        };
        String str2 = "bottomRight";
        k = new Property<a, PointF>(PointF.class, str2) { // from class: androidx.k.c.4
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(a aVar) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(a aVar, PointF pointF) {
                aVar.b(pointF);
            }
        };
        l = new Property<View, PointF>(PointF.class, str2) { // from class: androidx.k.c.5
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(View view, PointF pointF) {
                ad.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
            }
        };
        m = new Property<View, PointF>(PointF.class, str) { // from class: androidx.k.c.6
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void set(View view, PointF pointF) {
                ad.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
            }
        };
    }

    @Override // androidx.k.m
    public String[] a() {
        return h;
    }

    private void d(s sVar) {
        View view = sVar.f2031b;
        if (!androidx.core.h.r.w(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        sVar.f2030a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        sVar.f2030a.put("android:changeBounds:parent", sVar.f2031b.getParent());
        if (this.q) {
            sVar.f2031b.getLocationInWindow(this.o);
            sVar.f2030a.put("android:changeBounds:windowX", Integer.valueOf(this.o[0]));
            sVar.f2030a.put("android:changeBounds:windowY", Integer.valueOf(this.o[1]));
        }
        if (this.p) {
            sVar.f2030a.put("android:changeBounds:clip", androidx.core.h.r.y(view));
        }
    }

    @Override // androidx.k.m
    public void a(s sVar) {
        d(sVar);
    }

    @Override // androidx.k.m
    public void b(s sVar) {
        d(sVar);
    }

    private boolean a(View view, View view2) {
        if (!this.q) {
            return true;
        }
        s sVarB = b(view, true);
        if (sVarB == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == sVarB.f2031b) {
            return true;
        }
        return false;
    }

    @Override // androidx.k.m
    public Animator a(final ViewGroup viewGroup, s sVar, s sVar2) {
        int i2;
        final View view;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorA;
        if (sVar == null || sVar2 == null) {
            return null;
        }
        Map<String, Object> map = sVar.f2030a;
        Map<String, Object> map2 = sVar2.f2030a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = sVar2.f2031b;
        if (a(viewGroup2, viewGroup3)) {
            Rect rect2 = (Rect) sVar.f2030a.get("android:changeBounds:bounds");
            Rect rect3 = (Rect) sVar2.f2030a.get("android:changeBounds:bounds");
            int i4 = rect2.left;
            final int i5 = rect3.left;
            int i6 = rect2.top;
            final int i7 = rect3.top;
            int i8 = rect2.right;
            final int i9 = rect3.right;
            int i10 = rect2.bottom;
            final int i11 = rect3.bottom;
            int i12 = i8 - i4;
            int i13 = i10 - i6;
            int i14 = i9 - i5;
            int i15 = i11 - i7;
            Rect rect4 = (Rect) sVar.f2030a.get("android:changeBounds:clip");
            final Rect rect5 = (Rect) sVar2.f2030a.get("android:changeBounds:clip");
            if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
                i2 = 0;
            } else {
                i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
                if (i8 != i9 || i10 != i11) {
                    i2++;
                }
            }
            if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                i2++;
            }
            if (i2 <= 0) {
                return null;
            }
            if (!this.p) {
                view = view2;
                ad.a(view, i4, i6, i8, i10);
                if (i2 == 2) {
                    if (i12 == i14 && i13 == i15) {
                        animatorA = f.a(view, n, l().a(i4, i6, i5, i7));
                    } else {
                        final a aVar = new a(view);
                        ObjectAnimator objectAnimatorA = f.a(aVar, j, l().a(i4, i6, i5, i7));
                        ObjectAnimator objectAnimatorA2 = f.a(aVar, k, l().a(i8, i10, i9, i11));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(objectAnimatorA, objectAnimatorA2);
                        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.k.c.8
                            private a mViewBounds;

                            {
                                this.mViewBounds = aVar;
                            }
                        });
                        animatorA = animatorSet;
                    }
                } else if (i4 != i5 || i6 != i7) {
                    animatorA = f.a(view, m, l().a(i4, i6, i5, i7));
                } else {
                    animatorA = f.a(view, l, l().a(i8, i10, i9, i11));
                }
            } else {
                view = view2;
                ad.a(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
                ObjectAnimator objectAnimatorA3 = (i4 == i5 && i6 == i7) ? null : f.a(view, n, l().a(i4, i6, i5, i7));
                if (rect4 == null) {
                    i3 = 0;
                    rect = new Rect(0, 0, i12, i13);
                } else {
                    i3 = 0;
                    rect = rect4;
                }
                Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
                if (rect.equals(rect6)) {
                    objectAnimator = null;
                } else {
                    androidx.core.h.r.a(view, rect);
                    k kVar = r;
                    Object[] objArr = new Object[2];
                    objArr[i3] = rect;
                    objArr[1] = rect6;
                    ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", kVar, objArr);
                    objectAnimatorOfObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.k.c.9
                        private boolean h;

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            this.h = true;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (this.h) {
                                return;
                            }
                            androidx.core.h.r.a(view, rect5);
                            ad.a(view, i5, i7, i9, i11);
                        }
                    });
                    objectAnimator = objectAnimatorOfObject;
                }
                animatorA = r.a(objectAnimatorA3, objectAnimator);
            }
            if (view.getParent() instanceof ViewGroup) {
                final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                x.a(viewGroup4, true);
                a(new n() { // from class: androidx.k.c.10

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    boolean f1960a = false;

                    @Override // androidx.k.n, androidx.k.m.c
                    public void a(m mVar) {
                        if (!this.f1960a) {
                            x.a(viewGroup4, false);
                        }
                        mVar.b(this);
                    }

                    @Override // androidx.k.n, androidx.k.m.c
                    public void b(m mVar) {
                        x.a(viewGroup4, false);
                    }

                    @Override // androidx.k.n, androidx.k.m.c
                    public void c(m mVar) {
                        x.a(viewGroup4, true);
                    }
                });
            }
            return animatorA;
        }
        int iIntValue = ((Integer) sVar.f2030a.get("android:changeBounds:windowX")).intValue();
        int iIntValue2 = ((Integer) sVar.f2030a.get("android:changeBounds:windowY")).intValue();
        int iIntValue3 = ((Integer) sVar2.f2030a.get("android:changeBounds:windowX")).intValue();
        int iIntValue4 = ((Integer) sVar2.f2030a.get("android:changeBounds:windowY")).intValue();
        if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
            return null;
        }
        viewGroup.getLocationInWindow(this.o);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
        view2.draw(new Canvas(bitmapCreateBitmap));
        final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
        final float fC = ad.c(view2);
        ad.a(view2, 0.0f);
        ad.a(viewGroup).a(bitmapDrawable);
        g gVarL = l();
        int[] iArr = this.o;
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, i.a(i, gVarL.a(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1])));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: androidx.k.c.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ad.a(viewGroup).b(bitmapDrawable);
                ad.a(view2, fC);
            }
        });
        return objectAnimatorOfPropertyValuesHolder;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1975a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1976b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1977c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1978d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f1979e;
        private int f;
        private int g;

        a(View view) {
            this.f1979e = view;
        }

        void a(PointF pointF) {
            this.f1975a = Math.round(pointF.x);
            this.f1976b = Math.round(pointF.y);
            int i = this.f + 1;
            this.f = i;
            if (i == this.g) {
                a();
            }
        }

        void b(PointF pointF) {
            this.f1977c = Math.round(pointF.x);
            this.f1978d = Math.round(pointF.y);
            int i = this.g + 1;
            this.g = i;
            if (this.f == i) {
                a();
            }
        }

        private void a() {
            ad.a(this.f1979e, this.f1975a, this.f1976b, this.f1977c, this.f1978d);
            this.f = 0;
            this.g = 0;
        }
    }
}
