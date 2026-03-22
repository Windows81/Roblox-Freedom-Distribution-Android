package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;
import androidx.customview.a.a;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f4880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f4881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4882c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f4883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4884e;
    androidx.customview.a.a f;
    int g;
    WeakReference<V> h;
    WeakReference<View> i;
    int j;
    boolean k;
    private boolean l;
    private float m;
    private int n;
    private boolean o;
    private int p;
    private int q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean u;
    private a v;
    private VelocityTracker w;
    private int x;
    private Map<View, Integer> y;
    private final a.AbstractC0036a z;

    public static abstract class a {
        public abstract void a(View view, float f);

        public abstract void a(View view, int i);
    }

    public BottomSheetBehavior() {
        this.l = true;
        this.f4884e = 4;
        this.z = new a.AbstractC0036a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // androidx.customview.a.a.AbstractC0036a
            public boolean b(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.f4884e == 1 || BottomSheetBehavior.this.k) {
                    return false;
                }
                return ((BottomSheetBehavior.this.f4884e == 3 && BottomSheetBehavior.this.j == i && (view2 = BottomSheetBehavior.this.i.get()) != null && view2.canScrollVertically(-1)) || BottomSheetBehavior.this.h == null || BottomSheetBehavior.this.h.get() != view) ? false : true;
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public void a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.d(i2);
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public void a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.c(1);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
            @Override // androidx.customview.a.a.AbstractC0036a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void a(android.view.View r8, float r9, float r10) {
                /*
                    Method dump skipped, instruction units count: 248
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass2.a(android.view.View, float, float):void");
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public int b(View view, int i, int i2) {
                return androidx.core.c.a.a(i, BottomSheetBehavior.this.f(), BottomSheetBehavior.this.f4883d ? BottomSheetBehavior.this.g : BottomSheetBehavior.this.f4882c);
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public int a(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public int b(View view) {
                if (BottomSheetBehavior.this.f4883d) {
                    return BottomSheetBehavior.this.g;
                }
                return BottomSheetBehavior.this.f4882c;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = true;
        this.f4884e = 4;
        this.z = new a.AbstractC0036a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // androidx.customview.a.a.AbstractC0036a
            public boolean b(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.f4884e == 1 || BottomSheetBehavior.this.k) {
                    return false;
                }
                return ((BottomSheetBehavior.this.f4884e == 3 && BottomSheetBehavior.this.j == i && (view2 = BottomSheetBehavior.this.i.get()) != null && view2.canScrollVertically(-1)) || BottomSheetBehavior.this.h == null || BottomSheetBehavior.this.h.get() != view) ? false : true;
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public void a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.d(i2);
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public void a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.c(1);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
            @Override // androidx.customview.a.a.AbstractC0036a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void a(android.view.View r8, float r9, float r10) {
                /*
                    Method dump skipped, instruction units count: 248
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass2.a(android.view.View, float, float):void");
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public int b(View view, int i, int i2) {
                return androidx.core.c.a.a(i, BottomSheetBehavior.this.f(), BottomSheetBehavior.this.f4883d ? BottomSheetBehavior.this.g : BottomSheetBehavior.this.f4882c);
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public int a(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.a.a.AbstractC0036a
            public int b(View view) {
                if (BottomSheetBehavior.this.f4883d) {
                    return BottomSheetBehavior.this.g;
                }
                return BottomSheetBehavior.this.f4882c;
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.i.BottomSheetBehavior_Layout);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(a.i.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue != null && typedValuePeekValue.data == -1) {
            a(typedValuePeekValue.data);
        } else {
            a(typedArrayObtainStyledAttributes.getDimensionPixelSize(a.i.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        b(typedArrayObtainStyledAttributes.getBoolean(a.i.BottomSheetBehavior_Layout_behavior_hideable, false));
        a(typedArrayObtainStyledAttributes.getBoolean(a.i.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        c(typedArrayObtainStyledAttributes.getBoolean(a.i.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        typedArrayObtainStyledAttributes.recycle();
        this.m = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Parcelable d(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.d(coordinatorLayout, v), this.f4884e);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.a(coordinatorLayout, v, savedState.getSuperState());
        if (savedState.f4889a == 1 || savedState.f4889a == 2) {
            this.f4884e = 4;
        } else {
            this.f4884e = savedState.f4889a;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (r.p(coordinatorLayout) && !r.p(v)) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.a(v, i);
        this.g = coordinatorLayout.getHeight();
        if (this.o) {
            if (this.p == 0) {
                this.p = coordinatorLayout.getResources().getDimensionPixelSize(a.c.design_bottom_sheet_peek_height_min);
            }
            this.q = Math.max(this.p, this.g - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.q = this.n;
        }
        this.f4880a = Math.max(0, this.g - v.getHeight());
        this.f4881b = this.g / 2;
        c();
        int i2 = this.f4884e;
        if (i2 == 3) {
            r.d(v, f());
        } else if (i2 == 6) {
            r.d(v, this.f4881b);
        } else if (this.f4883d && i2 == 5) {
            r.d(v, this.g);
        } else {
            int i3 = this.f4884e;
            if (i3 == 4) {
                r.d(v, this.f4882c);
            } else if (i3 == 1 || i3 == 2) {
                r.d(v, top - v.getTop());
            }
        }
        if (this.f == null) {
            this.f = androidx.customview.a.a.a(coordinatorLayout, this.z);
        }
        this.h = new WeakReference<>(v);
        this.i = new WeakReference<>(a(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        androidx.customview.a.a aVar;
        if (!v.isShown()) {
            this.s = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            d();
        }
        if (this.w == null) {
            this.w = VelocityTracker.obtain();
        }
        this.w.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.x = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.i;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && coordinatorLayout.a(view, x, this.x)) {
                this.j = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.k = true;
            }
            this.s = this.j == -1 && !coordinatorLayout.a(v, x, this.x);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.k = false;
            this.j = -1;
            if (this.s) {
                this.s = false;
                return false;
            }
        }
        if (!this.s && (aVar = this.f) != null && aVar.a(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.i;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.s || this.f4884e == 1 || coordinatorLayout.a(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f == null || Math.abs(((float) this.x) - motionEvent.getY()) <= ((float) this.f.a())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f4884e == 1 && actionMasked == 0) {
            return true;
        }
        androidx.customview.a.a aVar = this.f;
        if (aVar != null) {
            aVar.b(motionEvent);
        }
        if (actionMasked == 0) {
            d();
        }
        if (this.w == null) {
            this.w = VelocityTracker.obtain();
        }
        this.w.addMovement(motionEvent);
        if (actionMasked == 2 && !this.s && Math.abs(this.x - motionEvent.getY()) > this.f.a()) {
            this.f.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.s;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.t = 0;
        this.u = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 != 1 && view == this.i.get()) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < f()) {
                    iArr[1] = top - f();
                    r.d(v, -iArr[1]);
                    c(3);
                } else {
                    iArr[1] = i2;
                    r.d(v, -i2);
                    c(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i5 = this.f4882c;
                if (i4 <= i5 || this.f4883d) {
                    iArr[1] = i2;
                    r.d(v, -i2);
                    c(1);
                } else {
                    iArr[1] = top - i5;
                    r.d(v, -iArr[1]);
                    c(4);
                }
            }
            d(v.getTop());
            this.t = i2;
            this.u = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int iF;
        int i2 = 3;
        if (v.getTop() == f()) {
            c(3);
            return;
        }
        if (view == this.i.get() && this.u) {
            if (this.t > 0) {
                iF = f();
            } else if (this.f4883d && a(v, e())) {
                iF = this.g;
                i2 = 5;
            } else {
                if (this.t == 0) {
                    int top = v.getTop();
                    if (this.l) {
                        if (Math.abs(top - this.f4880a) < Math.abs(top - this.f4882c)) {
                            iF = this.f4880a;
                        } else {
                            iF = this.f4882c;
                        }
                    } else {
                        int i3 = this.f4881b;
                        if (top < i3) {
                            if (top < Math.abs(top - this.f4882c)) {
                                iF = 0;
                            } else {
                                iF = this.f4881b;
                            }
                        } else if (Math.abs(top - i3) < Math.abs(top - this.f4882c)) {
                            iF = this.f4881b;
                        } else {
                            iF = this.f4882c;
                        }
                        i2 = 6;
                    }
                } else {
                    iF = this.f4882c;
                }
                i2 = 4;
            }
            if (this.f.a((View) v, v.getLeft(), iF)) {
                c(2);
                r.a(v, new b(v, i2));
            } else {
                c(i2);
            }
            this.u = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return view == this.i.get() && (this.f4884e != 3 || super.a(coordinatorLayout, v, view, f, f2));
    }

    public void a(boolean z) {
        if (this.l == z) {
            return;
        }
        this.l = z;
        if (this.h != null) {
            c();
        }
        c((this.l && this.f4884e == 6) ? 3 : this.f4884e);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto Lc
            boolean r4 = r3.o
            if (r4 != 0) goto L15
            r3.o = r0
            goto L24
        Lc:
            boolean r2 = r3.o
            if (r2 != 0) goto L17
            int r2 = r3.n
            if (r2 == r4) goto L15
            goto L17
        L15:
            r0 = 0
            goto L24
        L17:
            r3.o = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.n = r1
            int r1 = r3.g
            int r1 = r1 - r4
            r3.f4882c = r1
        L24:
            if (r0 == 0) goto L3a
            int r4 = r3.f4884e
            r0 = 4
            if (r4 != r0) goto L3a
            java.lang.ref.WeakReference<V extends android.view.View> r4 = r3.h
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L3a
            r4.requestLayout()
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.a(int):void");
    }

    public void b(boolean z) {
        this.f4883d = z;
    }

    public void c(boolean z) {
        this.r = z;
    }

    public void a(a aVar) {
        this.v = aVar;
    }

    public final void b(final int i) {
        if (i == this.f4884e) {
            return;
        }
        WeakReference<V> weakReference = this.h;
        if (weakReference == null) {
            if (i == 4 || i == 3 || i == 6 || (this.f4883d && i == 5)) {
                this.f4884e = i;
                return;
            }
            return;
        }
        final V v = weakReference.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && r.z(v)) {
            v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.a(v, i);
                }
            });
        } else {
            a((View) v, i);
        }
    }

    public final int b() {
        return this.f4884e;
    }

    void c(int i) {
        a aVar;
        if (this.f4884e == i) {
            return;
        }
        this.f4884e = i;
        if (i == 6 || i == 3) {
            d(true);
        } else if (i == 5 || i == 4) {
            d(false);
        }
        V v = this.h.get();
        if (v == null || (aVar = this.v) == null) {
            return;
        }
        aVar.a((View) v, i);
    }

    private void c() {
        if (this.l) {
            this.f4882c = Math.max(this.g - this.q, this.f4880a);
        } else {
            this.f4882c = this.g - this.q;
        }
    }

    private void d() {
        this.j = -1;
        VelocityTracker velocityTracker = this.w;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.w = null;
        }
    }

    boolean a(View view, float f) {
        if (this.r) {
            return true;
        }
        return view.getTop() >= this.f4882c && Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f4882c)) / ((float) this.n) > 0.5f;
    }

    View a(View view) {
        if (r.u(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewA = a(viewGroup.getChildAt(i));
            if (viewA != null) {
                return viewA;
            }
        }
        return null;
    }

    private float e() {
        VelocityTracker velocityTracker = this.w;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.m);
        return this.w.getYVelocity(this.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f() {
        if (this.l) {
            return this.f4880a;
        }
        return 0;
    }

    void a(View view, int i) {
        int iF;
        int i2;
        if (i == 4) {
            iF = this.f4882c;
        } else if (i == 6) {
            int i3 = this.f4881b;
            if (!this.l || i3 > (i2 = this.f4880a)) {
                iF = i3;
            } else {
                iF = i2;
                i = 3;
            }
        } else if (i == 3) {
            iF = f();
        } else if (this.f4883d && i == 5) {
            iF = this.g;
        } else {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        }
        if (this.f.a(view, view.getLeft(), iF)) {
            c(2);
            r.a(view, new b(view, i));
        } else {
            c(i);
        }
    }

    void d(int i) {
        a aVar;
        V v = this.h.get();
        if (v == null || (aVar = this.v) == null) {
            return;
        }
        if (i > this.f4882c) {
            aVar.a(v, (r2 - i) / (this.g - r2));
        } else {
            aVar.a(v, (r2 - i) / (r2 - f()));
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f4891b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f4892c;

        b(View view, int i) {
            this.f4891b = view;
            this.f4892c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.f != null && BottomSheetBehavior.this.f.a(true)) {
                r.a(this.f4891b, this);
            } else {
                BottomSheetBehavior.this.c(this.f4892c);
            }
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f4889a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4889a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f4889a = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4889a);
        }
    }

    public static <V extends View> BottomSheetBehavior<V> b(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.e)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.b bVarB = ((CoordinatorLayout.e) layoutParams).b();
        if (!(bVarB instanceof BottomSheetBehavior)) {
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        return (BottomSheetBehavior) bVarB;
    }

    private void d(boolean z) {
        WeakReference<V> weakReference = this.h;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.y != null) {
                    return;
                } else {
                    this.y = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.h.get()) {
                    if (!z) {
                        Map<View, Integer> map = this.y;
                        if (map != null && map.containsKey(childAt)) {
                            r.b(childAt, this.y.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        r.b(childAt, 4);
                    }
                }
            }
            if (z) {
                return;
            }
            this.y = null;
        }
    }
}
