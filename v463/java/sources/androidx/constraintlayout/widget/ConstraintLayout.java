package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import androidx.constraintlayout.a.a.i;
import androidx.constraintlayout.widget.g;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SparseArray<View> f1201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    androidx.constraintlayout.a.a.g f1202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1205e;
    int f;
    private ArrayList<b> g;
    private final ArrayList<androidx.constraintlayout.a.a.f> h;
    private int i;
    private int j;
    private int k;
    private int l;
    private boolean m;
    private int n;
    private c o;
    private int p;
    private HashMap<String, Integer> q;
    private int r;
    private int s;
    private androidx.constraintlayout.a.f t;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void a(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.q == null) {
                this.q = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.q.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public Object a(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.q;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.q.get(str);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1201a = new SparseArray<>();
        this.g = new ArrayList<>(4);
        this.h = new ArrayList<>(100);
        this.f1202b = new androidx.constraintlayout.a.a.g();
        this.i = 0;
        this.j = 0;
        this.k = Integer.MAX_VALUE;
        this.l = Integer.MAX_VALUE;
        this.m = true;
        this.n = 7;
        this.o = null;
        this.p = -1;
        this.q = new HashMap<>();
        this.r = -1;
        this.s = -1;
        this.f1203c = -1;
        this.f1204d = -1;
        this.f1205e = 0;
        this.f = 0;
        b(attributeSet);
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f1201a.remove(getId());
        super.setId(i);
        this.f1201a.put(getId(), this);
    }

    private void b(AttributeSet attributeSet) {
        this.f1202b.a(this);
        this.f1201a.put(getId(), this);
        this.o = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, g.b.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == g.b.ConstraintLayout_Layout_android_minWidth) {
                    this.i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.i);
                } else if (index == g.b.ConstraintLayout_Layout_android_minHeight) {
                    this.j = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.j);
                } else if (index == g.b.ConstraintLayout_Layout_android_maxWidth) {
                    this.k = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.k);
                } else if (index == g.b.ConstraintLayout_Layout_android_maxHeight) {
                    this.l = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.l);
                } else if (index == g.b.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.n = typedArrayObtainStyledAttributes.getInt(index, this.n);
                } else if (index == g.b.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        c cVar = new c();
                        this.o = cVar;
                        cVar.a(getContext(), resourceId);
                    } catch (Resources.NotFoundException unused) {
                        this.o = null;
                    }
                    this.p = resourceId;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1202b.a(this.n);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        androidx.constraintlayout.a.a.f fVarA = a(view);
        if ((view instanceof e) && !(fVarA instanceof i)) {
            a aVar = (a) view.getLayoutParams();
            aVar.al = new i();
            aVar.Y = true;
            ((i) aVar.al).a(aVar.S);
        }
        if (view instanceof b) {
            b bVar = (b) view;
            bVar.a();
            ((a) view.getLayoutParams()).Z = true;
            if (!this.g.contains(bVar)) {
                this.g.add(bVar);
            }
        }
        this.f1201a.put(view.getId(), view);
        this.m = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f1201a.remove(view.getId());
        androidx.constraintlayout.a.a.f fVarA = a(view);
        this.f1202b.c(fVarA);
        this.g.remove(view);
        this.h.remove(fVarA);
        this.m = true;
    }

    public void setMinWidth(int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        requestLayout();
    }

    public int getMinWidth() {
        return this.i;
    }

    public int getMinHeight() {
        return this.j;
    }

    public void setMaxWidth(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        requestLayout();
    }

    public void setMaxHeight(int i) {
        if (i == this.l) {
            return;
        }
        this.l = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.k;
    }

    public int getMaxHeight() {
        return this.l;
    }

    private void b() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            this.h.clear();
            c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v0, types: [androidx.constraintlayout.widget.ConstraintLayout] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v62 */
    private void c() {
        int i;
        int i2;
        int i3;
        float f;
        float f2;
        androidx.constraintlayout.a.a.f fVarB;
        androidx.constraintlayout.a.a.f fVarB2;
        androidx.constraintlayout.a.a.f fVarB3;
        androidx.constraintlayout.a.a.f fVarB4;
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        ?? r3 = 0;
        if (zIsInEditMode) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    a(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    b(childAt.getId()).a(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            androidx.constraintlayout.a.a.f fVarA = a(getChildAt(i5));
            if (fVarA != null) {
                fVarA.f();
            }
        }
        if (this.p != -1) {
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt2 = getChildAt(i6);
                if (childAt2.getId() == this.p && (childAt2 instanceof d)) {
                    this.o = ((d) childAt2).getConstraintSet();
                }
            }
        }
        c cVar = this.o;
        if (cVar != null) {
            cVar.a((ConstraintLayout) this);
        }
        this.f1202b.U();
        int size = this.g.size();
        if (size > 0) {
            for (int i7 = 0; i7 < size; i7++) {
                this.g.get(i7).a((ConstraintLayout) this);
            }
        }
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt3 = getChildAt(i8);
            if (childAt3 instanceof f) {
                ((f) childAt3).a(this);
            }
        }
        int i9 = 0;
        while (i9 < childCount) {
            View childAt4 = getChildAt(i9);
            androidx.constraintlayout.a.a.f fVarA2 = a(childAt4);
            if (fVarA2 != null) {
                a aVar = (a) childAt4.getLayoutParams();
                aVar.a();
                if (aVar.am) {
                    aVar.am = r3;
                } else if (zIsInEditMode) {
                    try {
                        String resourceName2 = getResources().getResourceName(childAt4.getId());
                        a(r3, resourceName2, Integer.valueOf(childAt4.getId()));
                        b(childAt4.getId()).a(resourceName2.substring(resourceName2.indexOf("id/") + 3));
                    } catch (Resources.NotFoundException unused2) {
                    }
                }
                fVarA2.e(childAt4.getVisibility());
                if (aVar.aa) {
                    fVarA2.e(8);
                }
                fVarA2.a(childAt4);
                this.f1202b.b(fVarA2);
                if (!aVar.W || !aVar.V) {
                    this.h.add(fVarA2);
                }
                if (aVar.Y) {
                    i iVar = (i) fVarA2;
                    int i10 = aVar.ai;
                    int i11 = aVar.aj;
                    float f3 = aVar.ak;
                    if (Build.VERSION.SDK_INT < 17) {
                        i10 = aVar.f1206a;
                        i11 = aVar.f1207b;
                        f3 = aVar.f1208c;
                    }
                    if (f3 != -1.0f) {
                        iVar.e(f3);
                    } else if (i10 != -1) {
                        iVar.u(i10);
                    } else if (i11 != -1) {
                        iVar.v(i11);
                    }
                } else if (aVar.f1209d != -1 || aVar.f1210e != -1 || aVar.f != -1 || aVar.g != -1 || aVar.q != -1 || aVar.p != -1 || aVar.r != -1 || aVar.s != -1 || aVar.h != -1 || aVar.i != -1 || aVar.j != -1 || aVar.k != -1 || aVar.l != -1 || aVar.Q != -1 || aVar.R != -1 || aVar.m != -1 || aVar.width == -1 || aVar.height == -1) {
                    int i12 = aVar.ab;
                    int i13 = aVar.ac;
                    int i14 = aVar.ad;
                    int i15 = aVar.ae;
                    int i16 = aVar.af;
                    int i17 = aVar.ag;
                    float f4 = aVar.ah;
                    if (Build.VERSION.SDK_INT < 17) {
                        int i18 = aVar.f1209d;
                        int i19 = aVar.f1210e;
                        int i20 = aVar.f;
                        i15 = aVar.g;
                        int i21 = aVar.t;
                        int i22 = aVar.v;
                        float f5 = aVar.z;
                        if (i18 == -1 && i19 == -1) {
                            if (aVar.q != -1) {
                                i18 = aVar.q;
                            } else if (aVar.p != -1) {
                                i19 = aVar.p;
                            }
                        }
                        int i23 = i19;
                        i12 = i18;
                        if (i20 == -1 && i15 == -1) {
                            if (aVar.r != -1) {
                                i20 = aVar.r;
                            } else if (aVar.s != -1) {
                                i15 = aVar.s;
                            }
                        }
                        i3 = i21;
                        i2 = i22;
                        f = f5;
                        i13 = i23;
                        i = i20;
                    } else {
                        i = i14;
                        i2 = i17;
                        i3 = i16;
                        f = f4;
                    }
                    int i24 = i15;
                    if (aVar.m != -1) {
                        androidx.constraintlayout.a.a.f fVarB5 = b(aVar.m);
                        if (fVarB5 != null) {
                            fVarA2.a(fVarB5, aVar.o, aVar.n);
                        }
                    } else {
                        if (i12 != -1) {
                            androidx.constraintlayout.a.a.f fVarB6 = b(i12);
                            if (fVarB6 != null) {
                                f2 = f;
                                fVarA2.a(e.c.LEFT, fVarB6, e.c.LEFT, aVar.leftMargin, i3);
                            } else {
                                f2 = f;
                            }
                        } else {
                            f2 = f;
                            if (i13 != -1 && (fVarB = b(i13)) != null) {
                                fVarA2.a(e.c.LEFT, fVarB, e.c.RIGHT, aVar.leftMargin, i3);
                            }
                        }
                        if (i != -1) {
                            androidx.constraintlayout.a.a.f fVarB7 = b(i);
                            if (fVarB7 != null) {
                                fVarA2.a(e.c.RIGHT, fVarB7, e.c.LEFT, aVar.rightMargin, i2);
                            }
                        } else if (i24 != -1 && (fVarB2 = b(i24)) != null) {
                            fVarA2.a(e.c.RIGHT, fVarB2, e.c.RIGHT, aVar.rightMargin, i2);
                        }
                        if (aVar.h != -1) {
                            androidx.constraintlayout.a.a.f fVarB8 = b(aVar.h);
                            if (fVarB8 != null) {
                                fVarA2.a(e.c.TOP, fVarB8, e.c.TOP, aVar.topMargin, aVar.u);
                            }
                        } else if (aVar.i != -1 && (fVarB3 = b(aVar.i)) != null) {
                            fVarA2.a(e.c.TOP, fVarB3, e.c.BOTTOM, aVar.topMargin, aVar.u);
                        }
                        if (aVar.j != -1) {
                            androidx.constraintlayout.a.a.f fVarB9 = b(aVar.j);
                            if (fVarB9 != null) {
                                fVarA2.a(e.c.BOTTOM, fVarB9, e.c.TOP, aVar.bottomMargin, aVar.w);
                            }
                        } else if (aVar.k != -1 && (fVarB4 = b(aVar.k)) != null) {
                            fVarA2.a(e.c.BOTTOM, fVarB4, e.c.BOTTOM, aVar.bottomMargin, aVar.w);
                        }
                        if (aVar.l != -1) {
                            View view = this.f1201a.get(aVar.l);
                            androidx.constraintlayout.a.a.f fVarB10 = b(aVar.l);
                            if (fVarB10 != null && view != null && (view.getLayoutParams() instanceof a)) {
                                a aVar2 = (a) view.getLayoutParams();
                                aVar.X = true;
                                aVar2.X = true;
                                fVarA2.a(e.c.BASELINE).a(fVarB10.a(e.c.BASELINE), 0, -1, e.b.STRONG, 0, true);
                                fVarA2.a(e.c.TOP).i();
                                fVarA2.a(e.c.BOTTOM).i();
                            }
                        }
                        float f6 = f2;
                        if (f6 >= 0.0f && f6 != 0.5f) {
                            fVarA2.a(f6);
                        }
                        if (aVar.A >= 0.0f && aVar.A != 0.5f) {
                            fVarA2.b(aVar.A);
                        }
                    }
                    if (zIsInEditMode && (aVar.Q != -1 || aVar.R != -1)) {
                        fVarA2.a(aVar.Q, aVar.R);
                    }
                    if (!aVar.V) {
                        if (aVar.width == -1) {
                            fVarA2.a(f.a.MATCH_PARENT);
                            fVarA2.a(e.c.LEFT).f1121d = aVar.leftMargin;
                            fVarA2.a(e.c.RIGHT).f1121d = aVar.rightMargin;
                        } else {
                            fVarA2.a(f.a.MATCH_CONSTRAINT);
                            fVarA2.j(0);
                        }
                    } else {
                        fVarA2.a(f.a.FIXED);
                        fVarA2.j(aVar.width);
                    }
                    if (!aVar.W) {
                        if (aVar.height == -1) {
                            fVarA2.b(f.a.MATCH_PARENT);
                            fVarA2.a(e.c.TOP).f1121d = aVar.topMargin;
                            fVarA2.a(e.c.BOTTOM).f1121d = aVar.bottomMargin;
                            r3 = 0;
                        } else {
                            fVarA2.b(f.a.MATCH_CONSTRAINT);
                            r3 = 0;
                            fVarA2.k(0);
                        }
                    } else {
                        r3 = 0;
                        fVarA2.b(f.a.FIXED);
                        fVarA2.k(aVar.height);
                    }
                    if (aVar.B != null) {
                        fVarA2.b(aVar.B);
                    }
                    fVarA2.c(aVar.E);
                    fVarA2.d(aVar.F);
                    fVarA2.r(aVar.G);
                    fVarA2.s(aVar.H);
                    fVarA2.a(aVar.I, aVar.K, aVar.M, aVar.O);
                    fVarA2.b(aVar.J, aVar.L, aVar.N, aVar.P);
                }
            }
            i9++;
            r3 = r3;
        }
    }

    private final androidx.constraintlayout.a.a.f b(int i) {
        if (i == 0) {
            return this.f1202b;
        }
        View viewFindViewById = this.f1201a.get(i);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.f1202b;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((a) viewFindViewById.getLayoutParams()).al;
    }

    public final androidx.constraintlayout.a.a.f a(View view) {
        if (view == this) {
            return this.f1202b;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).al;
    }

    private void a(int i, int i2) {
        boolean z;
        boolean z2;
        int baseline;
        int childMeasureSpec;
        int childMeasureSpec2;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                androidx.constraintlayout.a.a.f fVar = aVar.al;
                if (!aVar.Y && !aVar.Z) {
                    fVar.e(childAt.getVisibility());
                    int measuredWidth = aVar.width;
                    int measuredHeight = aVar.height;
                    if (aVar.V || aVar.W || (!aVar.V && aVar.I == 1) || aVar.width == -1 || (!aVar.W && (aVar.J == 1 || aVar.height == -1))) {
                        if (measuredWidth == 0) {
                            childMeasureSpec = getChildMeasureSpec(i, paddingLeft, -2);
                            z = true;
                        } else if (measuredWidth == -1) {
                            childMeasureSpec = getChildMeasureSpec(i, paddingLeft, -1);
                            z = false;
                        } else {
                            z = measuredWidth == -2;
                            childMeasureSpec = getChildMeasureSpec(i, paddingLeft, measuredWidth);
                        }
                        if (measuredHeight == 0) {
                            childMeasureSpec2 = getChildMeasureSpec(i2, paddingTop, -2);
                            z2 = true;
                        } else if (measuredHeight == -1) {
                            childMeasureSpec2 = getChildMeasureSpec(i2, paddingTop, -1);
                            z2 = false;
                        } else {
                            z2 = measuredHeight == -2;
                            childMeasureSpec2 = getChildMeasureSpec(i2, paddingTop, measuredHeight);
                        }
                        childAt.measure(childMeasureSpec, childMeasureSpec2);
                        androidx.constraintlayout.a.f fVar2 = this.t;
                        if (fVar2 != null) {
                            fVar2.f1184a++;
                        }
                        fVar.b(measuredWidth == -2);
                        fVar.c(measuredHeight == -2);
                        measuredWidth = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                    } else {
                        z = false;
                        z2 = false;
                    }
                    fVar.j(measuredWidth);
                    fVar.k(measuredHeight);
                    if (z) {
                        fVar.n(measuredWidth);
                    }
                    if (z2) {
                        fVar.o(measuredHeight);
                    }
                    if (aVar.X && (baseline = childAt.getBaseline()) != -1) {
                        fVar.q(baseline);
                    }
                }
            }
        }
    }

    private void d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof f) {
                ((f) childAt).b(this);
            }
        }
        int size = this.g.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                this.g.get(i2).c(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02cd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 744
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0133  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 977
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    private void c(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        f.a aVar = f.a.FIXED;
        f.a aVar2 = f.a.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                aVar = f.a.WRAP_CONTENT;
            } else if (mode == 1073741824) {
                size = Math.min(this.k, size) - paddingLeft;
            }
            size = 0;
        } else {
            aVar = f.a.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                aVar2 = f.a.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = Math.min(this.l, size2) - paddingTop;
            }
            size2 = 0;
        } else {
            aVar2 = f.a.WRAP_CONTENT;
        }
        this.f1202b.l(0);
        this.f1202b.m(0);
        this.f1202b.a(aVar);
        this.f1202b.j(size);
        this.f1202b.b(aVar2);
        this.f1202b.k(size2);
        this.f1202b.l((this.i - getPaddingLeft()) - getPaddingRight());
        this.f1202b.m((this.j - getPaddingTop()) - getPaddingBottom());
    }

    protected void a(String str) {
        this.f1202b.N();
        androidx.constraintlayout.a.f fVar = this.t;
        if (fVar != null) {
            fVar.f1186c++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            a aVar = (a) childAt.getLayoutParams();
            androidx.constraintlayout.a.a.f fVar = aVar.al;
            if ((childAt.getVisibility() != 8 || aVar.Y || aVar.Z || zIsInEditMode) && !aVar.aa) {
                int iT = fVar.t();
                int iU = fVar.u();
                int iP = fVar.p() + iT;
                int iR = fVar.r() + iU;
                childAt.layout(iT, iU, iP, iR);
                if ((childAt instanceof f) && (content = ((f) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iT, iU, iP, iR);
                }
            }
        }
        int size = this.g.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.g.get(i6).b(this);
            }
        }
    }

    public void setOptimizationLevel(int i) {
        this.f1202b.a(i);
    }

    public int getOptimizationLevel() {
        return this.f1202b.J();
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void setConstraintSet(c cVar) {
        this.o = cVar;
    }

    public View a(int i) {
        return this.f1201a.get(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i2 = Integer.parseInt(strArrSplit[0]);
                        int i3 = Integer.parseInt(strArrSplit[1]);
                        int i4 = Integer.parseInt(strArrSplit[2]);
                        int i5 = (int) ((i2 / 1080.0f) * width);
                        int i6 = (int) ((i3 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i5;
                        float f2 = i6;
                        float f3 = i5 + ((int) ((i4 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i6 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public static class a extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        float C;
        int D;
        public float E;
        public float F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public float O;
        public float P;
        public int Q;
        public int R;
        public int S;
        public boolean T;
        public boolean U;
        boolean V;
        boolean W;
        boolean X;
        boolean Y;
        boolean Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1206a;
        boolean aa;
        int ab;
        int ac;
        int ad;
        int ae;
        int af;
        int ag;
        float ah;
        int ai;
        int aj;
        float ak;
        androidx.constraintlayout.a.a.f al;
        public boolean am;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1207b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1208c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1209d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1210e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a, reason: collision with other inner class name */
        private static class C0021a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f1211a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1211a = sparseIntArray;
                sparseIntArray.append(g.b.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f1211a.append(g.b.ConstraintLayout_Layout_android_orientation, 1);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f1211a.append(g.b.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            int i;
            super(context, attributeSet);
            this.f1206a = -1;
            this.f1207b = -1;
            this.f1208c = -1.0f;
            this.f1209d = -1;
            this.f1210e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = -1;
            this.ac = -1;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = 0.5f;
            this.al = new androidx.constraintlayout.a.a.f();
            this.am = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.b.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                int i3 = C0021a.f1211a.get(index);
                switch (i3) {
                    case 1:
                        this.S = typedArrayObtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId == -1) {
                            this.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f = typedArrayObtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f;
                        if (f < 0.0f) {
                            this.o = (360.0f - f) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f1206a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1206a);
                        break;
                    case 6:
                        this.f1207b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1207b);
                        break;
                    case 7:
                        this.f1208c = typedArrayObtainStyledAttributes.getFloat(index, this.f1208c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1209d);
                        this.f1209d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1209d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1210e);
                        this.f1210e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1210e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 == -1) {
                            this.p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 == -1) {
                            this.q = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 == -1) {
                            this.r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 == -1) {
                            this.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.T = typedArrayObtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 28:
                        this.U = typedArrayObtainStyledAttributes.getBoolean(index, this.U);
                        break;
                    case 29:
                        this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        int i4 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.I = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i5 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.J = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                            }
                        }
                        break;
                    case 35:
                        this.O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.O));
                        break;
                    case 36:
                        try {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                            }
                        }
                        break;
                    case 38:
                        this.P = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.P));
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = Float.NaN;
                                this.D = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int iIndexOf = this.B.indexOf(44);
                                    if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String strSubstring = this.B.substring(0, iIndexOf);
                                        if (strSubstring.equalsIgnoreCase("W")) {
                                            this.D = 0;
                                        } else if (strSubstring.equalsIgnoreCase("H")) {
                                            this.D = 1;
                                        }
                                        i = iIndexOf + 1;
                                    }
                                    int iIndexOf2 = this.B.indexOf(58);
                                    if (iIndexOf2 >= 0 && iIndexOf2 < length - 1) {
                                        String strSubstring2 = this.B.substring(i, iIndexOf2);
                                        String strSubstring3 = this.B.substring(iIndexOf2 + 1);
                                        if (strSubstring2.length() > 0 && strSubstring3.length() > 0) {
                                            try {
                                                float f2 = Float.parseFloat(strSubstring2);
                                                float f3 = Float.parseFloat(strSubstring3);
                                                if (f2 > 0.0f && f3 > 0.0f) {
                                                    if (this.D == 1) {
                                                        this.C = Math.abs(f3 / f2);
                                                    } else {
                                                        this.C = Math.abs(f2 / f3);
                                                    }
                                                }
                                            } catch (NumberFormatException unused5) {
                                            }
                                        }
                                    } else {
                                        String strSubstring4 = this.B.substring(i);
                                        if (strSubstring4.length() > 0) {
                                            this.C = Float.parseFloat(strSubstring4);
                                        }
                                    }
                                }
                                break;
                            case 45:
                                this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 46:
                                this.F = typedArrayObtainStyledAttributes.getFloat(index, this.F);
                                break;
                            case 47:
                                this.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.H = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                            case 50:
                                this.R = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.R);
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            if (this.width == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            if (this.height == -2 && this.U) {
                this.W = false;
                this.J = 1;
            }
            if (this.width == 0 || this.width == -1) {
                this.V = false;
                if (this.width == 0 && this.I == 1) {
                    this.width = -2;
                    this.T = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.W = false;
                if (this.height == 0 && this.J == 1) {
                    this.height = -2;
                    this.U = true;
                }
            }
            if (this.f1208c == -1.0f && this.f1206a == -1 && this.f1207b == -1) {
                return;
            }
            this.Y = true;
            this.V = true;
            this.W = true;
            if (!(this.al instanceof i)) {
                this.al = new i();
            }
            ((i) this.al).a(this.S);
        }

        public a(int i, int i2) {
            super(i, i2);
            this.f1206a = -1;
            this.f1207b = -1;
            this.f1208c = -1.0f;
            this.f1209d = -1;
            this.f1210e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = -1;
            this.ac = -1;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = 0.5f;
            this.al = new androidx.constraintlayout.a.a.f();
            this.am = false;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1206a = -1;
            this.f1207b = -1;
            this.f1208c = -1.0f;
            this.f1209d = -1;
            this.f1210e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = -1;
            this.ac = -1;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = 0.5f;
            this.al = new androidx.constraintlayout.a.a.f();
            this.am = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void resolveLayoutDirection(int r7) {
            /*
                Method dump skipped, instruction units count: 265
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.resolveLayoutDirection(int):void");
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.m = true;
        this.r = -1;
        this.s = -1;
        this.f1203c = -1;
        this.f1204d = -1;
        this.f1205e = 0;
        this.f = 0;
    }
}
