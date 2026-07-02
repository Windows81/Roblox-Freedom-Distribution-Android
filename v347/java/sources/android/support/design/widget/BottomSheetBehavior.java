package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.a;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.AbsSavedState;
import android.support.v4.widget.q;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.a<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f274d;
    android.support.v4.widget.q e;
    int f;
    WeakReference<V> g;
    WeakReference<View> h;
    int i;
    boolean j;
    private float k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean r;
    private a s;
    private VelocityTracker t;
    private int u;
    private final q.a v;

    public static abstract class a {
        public abstract void a(View view, float f);

        public abstract void a(View view, int i);
    }

    public BottomSheetBehavior() {
        this.f274d = 4;
        this.v = new q.a() { // from class: android.support.design.widget.BottomSheetBehavior.1
            @Override // android.support.v4.widget.q.a
            public boolean a(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.f274d == 1 || BottomSheetBehavior.this.j) {
                    return false;
                }
                if (BottomSheetBehavior.this.f274d == 3 && BottomSheetBehavior.this.i == i && (view2 = BottomSheetBehavior.this.h.get()) != null && view2.canScrollVertically(-1)) {
                    return false;
                }
                return BottomSheetBehavior.this.g != null && BottomSheetBehavior.this.g.get() == view;
            }

            @Override // android.support.v4.widget.q.a
            public void a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.c(i2);
            }

            @Override // android.support.v4.widget.q.a
            public void a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.b(1);
                }
            }

            @Override // android.support.v4.widget.q.a
            public void a(View view, float f, float f2) {
                int i;
                int i2 = 3;
                if (f2 < 0.0f) {
                    i = BottomSheetBehavior.this.f271a;
                } else if (BottomSheetBehavior.this.f273c && BottomSheetBehavior.this.a(view, f2)) {
                    i = BottomSheetBehavior.this.f;
                    i2 = 5;
                } else if (f2 == 0.0f) {
                    int top = view.getTop();
                    if (Math.abs(top - BottomSheetBehavior.this.f271a) < Math.abs(top - BottomSheetBehavior.this.f272b)) {
                        i = BottomSheetBehavior.this.f271a;
                    } else {
                        i = BottomSheetBehavior.this.f272b;
                        i2 = 4;
                    }
                } else {
                    i = BottomSheetBehavior.this.f272b;
                    i2 = 4;
                }
                if (BottomSheetBehavior.this.e.a(view.getLeft(), i)) {
                    BottomSheetBehavior.this.b(2);
                    android.support.v4.view.s.a(view, new b(view, i2));
                } else {
                    BottomSheetBehavior.this.b(i2);
                }
            }

            @Override // android.support.v4.widget.q.a
            public int a(View view, int i, int i2) {
                return android.support.v4.d.a.a(i, BottomSheetBehavior.this.f271a, BottomSheetBehavior.this.f273c ? BottomSheetBehavior.this.f : BottomSheetBehavior.this.f272b);
            }

            @Override // android.support.v4.widget.q.a
            public int b(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.q.a
            public int a(View view) {
                return BottomSheetBehavior.this.f273c ? BottomSheetBehavior.this.f - BottomSheetBehavior.this.f271a : BottomSheetBehavior.this.f272b - BottomSheetBehavior.this.f271a;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f274d = 4;
        this.v = new q.a() { // from class: android.support.design.widget.BottomSheetBehavior.1
            @Override // android.support.v4.widget.q.a
            public boolean a(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.f274d == 1 || BottomSheetBehavior.this.j) {
                    return false;
                }
                if (BottomSheetBehavior.this.f274d == 3 && BottomSheetBehavior.this.i == i && (view2 = BottomSheetBehavior.this.h.get()) != null && view2.canScrollVertically(-1)) {
                    return false;
                }
                return BottomSheetBehavior.this.g != null && BottomSheetBehavior.this.g.get() == view;
            }

            @Override // android.support.v4.widget.q.a
            public void a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.c(i2);
            }

            @Override // android.support.v4.widget.q.a
            public void a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.b(1);
                }
            }

            @Override // android.support.v4.widget.q.a
            public void a(View view, float f, float f2) {
                int i;
                int i2 = 3;
                if (f2 < 0.0f) {
                    i = BottomSheetBehavior.this.f271a;
                } else if (BottomSheetBehavior.this.f273c && BottomSheetBehavior.this.a(view, f2)) {
                    i = BottomSheetBehavior.this.f;
                    i2 = 5;
                } else if (f2 == 0.0f) {
                    int top = view.getTop();
                    if (Math.abs(top - BottomSheetBehavior.this.f271a) < Math.abs(top - BottomSheetBehavior.this.f272b)) {
                        i = BottomSheetBehavior.this.f271a;
                    } else {
                        i = BottomSheetBehavior.this.f272b;
                        i2 = 4;
                    }
                } else {
                    i = BottomSheetBehavior.this.f272b;
                    i2 = 4;
                }
                if (BottomSheetBehavior.this.e.a(view.getLeft(), i)) {
                    BottomSheetBehavior.this.b(2);
                    android.support.v4.view.s.a(view, new b(view, i2));
                } else {
                    BottomSheetBehavior.this.b(i2);
                }
            }

            @Override // android.support.v4.widget.q.a
            public int a(View view, int i, int i2) {
                return android.support.v4.d.a.a(i, BottomSheetBehavior.this.f271a, BottomSheetBehavior.this.f273c ? BottomSheetBehavior.this.f : BottomSheetBehavior.this.f272b);
            }

            @Override // android.support.v4.widget.q.a
            public int b(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.q.a
            public int a(View view) {
                return BottomSheetBehavior.this.f273c ? BottomSheetBehavior.this.f - BottomSheetBehavior.this.f271a : BottomSheetBehavior.this.f272b - BottomSheetBehavior.this.f271a;
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.BottomSheetBehavior_Layout);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(a.j.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue != null && typedValuePeekValue.data == -1) {
            a(typedValuePeekValue.data);
        } else {
            a(typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        a(typedArrayObtainStyledAttributes.getBoolean(a.j.BottomSheetBehavior_Layout_behavior_hideable, false));
        b(typedArrayObtainStyledAttributes.getBoolean(a.j.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        typedArrayObtainStyledAttributes.recycle();
        this.k = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.b(coordinatorLayout, v), this.f274d);
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.a(coordinatorLayout, v, savedState.getSuperState());
        if (savedState.f276a == 1 || savedState.f276a == 2) {
            this.f274d = 4;
        } else {
            this.f274d = savedState.f276a;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        int iMax;
        if (android.support.v4.view.s.o(coordinatorLayout) && !android.support.v4.view.s.o(v)) {
            android.support.v4.view.s.b((View) v, true);
        }
        int top = v.getTop();
        coordinatorLayout.a(v, i);
        this.f = coordinatorLayout.getHeight();
        if (this.m) {
            if (this.n == 0) {
                this.n = coordinatorLayout.getResources().getDimensionPixelSize(a.c.design_bottom_sheet_peek_height_min);
            }
            iMax = Math.max(this.n, this.f - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            iMax = this.l;
        }
        this.f271a = Math.max(0, this.f - v.getHeight());
        this.f272b = Math.max(this.f - iMax, this.f271a);
        if (this.f274d == 3) {
            android.support.v4.view.s.c(v, this.f271a);
        } else if (this.f273c && this.f274d == 5) {
            android.support.v4.view.s.c(v, this.f);
        } else if (this.f274d == 4) {
            android.support.v4.view.s.c(v, this.f272b);
        } else if (this.f274d == 1 || this.f274d == 2) {
            android.support.v4.view.s.c(v, top - v.getTop());
        }
        if (this.e == null) {
            this.e = android.support.v4.widget.q.a(coordinatorLayout, this.v);
        }
        this.g = new WeakReference<>(v);
        this.h = new WeakReference<>(a(v));
        return true;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            this.p = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a();
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                int x = (int) motionEvent.getX();
                this.u = (int) motionEvent.getY();
                View view = this.h != null ? this.h.get() : null;
                if (view != null && coordinatorLayout.a(view, x, this.u)) {
                    this.i = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.j = true;
                }
                this.p = this.i == -1 && !coordinatorLayout.a(v, x, this.u);
                break;
            case 1:
            case 3:
                this.j = false;
                this.i = -1;
                if (this.p) {
                    this.p = false;
                    return false;
                }
                break;
        }
        if (!this.p && this.e.a(motionEvent)) {
            return true;
        }
        View view2 = this.h.get();
        return (actionMasked != 2 || view2 == null || this.p || this.f274d == 1 || coordinatorLayout.a(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || Math.abs(((float) this.u) - motionEvent.getY()) <= ((float) this.e.a())) ? false : true;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f274d == 1 && actionMasked == 0) {
            return true;
        }
        if (this.e != null) {
            this.e.b(motionEvent);
        }
        if (actionMasked == 0) {
            a();
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        if (actionMasked == 2 && !this.p && Math.abs(this.u - motionEvent.getY()) > this.e.a()) {
            this.e.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.p;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        this.q = 0;
        this.r = false;
        return (i & 2) != 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        if (view == this.h.get()) {
            int top = v.getTop();
            int i3 = top - i2;
            if (i2 > 0) {
                if (i3 < this.f271a) {
                    iArr[1] = top - this.f271a;
                    android.support.v4.view.s.c(v, -iArr[1]);
                    b(3);
                } else {
                    iArr[1] = i2;
                    android.support.v4.view.s.c(v, -i2);
                    b(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                if (i3 <= this.f272b || this.f273c) {
                    iArr[1] = i2;
                    android.support.v4.view.s.c(v, -i2);
                    b(1);
                } else {
                    iArr[1] = top - this.f272b;
                    android.support.v4.view.s.c(v, -iArr[1]);
                    b(4);
                }
            }
            c(v.getTop());
            this.q = i2;
            this.r = true;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public void c(CoordinatorLayout coordinatorLayout, V v, View view) {
        int i;
        int i2 = 3;
        if (v.getTop() == this.f271a) {
            b(3);
            return;
        }
        if (this.h != null && view == this.h.get() && this.r) {
            if (this.q > 0) {
                i = this.f271a;
            } else if (this.f273c && a(v, b())) {
                i = this.f;
                i2 = 5;
            } else if (this.q == 0) {
                int top = v.getTop();
                if (Math.abs(top - this.f271a) < Math.abs(top - this.f272b)) {
                    i = this.f271a;
                } else {
                    i = this.f272b;
                    i2 = 4;
                }
            } else {
                i = this.f272b;
                i2 = 4;
            }
            if (this.e.a((View) v, v.getLeft(), i)) {
                b(2);
                android.support.v4.view.s.a(v, new b(v, i2));
            } else {
                b(i2);
            }
            this.r = false;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return view == this.h.get() && (this.f274d != 3 || super.a(coordinatorLayout, v, view, f, f2));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
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
            if (r4 != r2) goto L24
            boolean r2 = r3.m
            if (r2 != 0) goto L3a
            r3.m = r0
        Lb:
            if (r0 == 0) goto L23
            int r0 = r3.f274d
            r1 = 4
            if (r0 != r1) goto L23
            java.lang.ref.WeakReference<V extends android.view.View> r0 = r3.g
            if (r0 == 0) goto L23
            java.lang.ref.WeakReference<V extends android.view.View> r0 = r3.g
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            if (r0 == 0) goto L23
            r0.requestLayout()
        L23:
            return
        L24:
            boolean r2 = r3.m
            if (r2 != 0) goto L2c
            int r2 = r3.l
            if (r2 == r4) goto L3a
        L2c:
            r3.m = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.l = r1
            int r1 = r3.f
            int r1 = r1 - r4
            r3.f272b = r1
            goto Lb
        L3a:
            r0 = r1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.BottomSheetBehavior.a(int):void");
    }

    public void a(boolean z) {
        this.f273c = z;
    }

    public void b(boolean z) {
        this.o = z;
    }

    void b(int i) {
        if (this.f274d != i) {
            this.f274d = i;
            V v = this.g.get();
            if (v != null && this.s != null) {
                this.s.a((View) v, i);
            }
        }
    }

    private void a() {
        this.i = -1;
        if (this.t != null) {
            this.t.recycle();
            this.t = null;
        }
    }

    boolean a(View view, float f) {
        if (this.o) {
            return true;
        }
        return view.getTop() >= this.f272b && Math.abs((((float) view.getTop()) + (0.1f * f)) - ((float) this.f272b)) / ((float) this.l) > 0.5f;
    }

    View a(View view) {
        if (!android.support.v4.view.s.t(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View viewA = a(viewGroup.getChildAt(i));
                    if (viewA != null) {
                        return viewA;
                    }
                }
            }
            return null;
        }
        return view;
    }

    private float b() {
        this.t.computeCurrentVelocity(1000, this.k);
        return this.t.getYVelocity(this.i);
    }

    void c(int i) {
        V v = this.g.get();
        if (v != null && this.s != null) {
            if (i > this.f272b) {
                this.s.a(v, (this.f272b - i) / (this.f - this.f272b));
            } else {
                this.s.a(v, (this.f272b - i) / (this.f272b - this.f271a));
            }
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f278b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f279c;

        b(View view, int i) {
            this.f278b = view;
            this.f279c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.e != null && BottomSheetBehavior.this.e.a(true)) {
                android.support.v4.view.s.a(this.f278b, this);
            } else {
                BottomSheetBehavior.this.b(this.f279c);
            }
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.BottomSheetBehavior.SavedState.1
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
        final int f276a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f276a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f276a = i;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f276a);
        }
    }
}
