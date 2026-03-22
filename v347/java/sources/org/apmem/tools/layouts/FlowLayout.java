package org.apmem.tools.layouts;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.apmem.tools.layouts.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class FlowLayout extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<b> f8223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final org.apmem.tools.layouts.a f8224b;

    public FlowLayout(Context context) {
        super(context);
        this.f8223a = new ArrayList();
        this.f8224b = new org.apmem.tools.layouts.a(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8223a = new ArrayList();
        this.f8224b = new org.apmem.tools.layouts.a(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8223a = new ArrayList();
        this.f8224b = new org.apmem.tools.layouts.a(context, attributeSet);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        b bVar;
        int size = (View.MeasureSpec.getSize(i) - getPaddingRight()) - getPaddingLeft();
        int size2 = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = this.f8224b.a() == 0 ? size : size2;
        if (this.f8224b.a() != 0) {
            size2 = size;
        }
        if (this.f8224b.a() != 0) {
            mode = mode2;
        }
        if (this.f8224b.a() == 0) {
        }
        this.f8223a.clear();
        b bVar2 = new b(i5);
        this.f8223a.add(bVar2);
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                bVar = bVar2;
            } else {
                a aVar = (a) childAt.getLayoutParams();
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), aVar.width), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), aVar.height));
                aVar.j = this.f8224b.a();
                if (this.f8224b.a() == 0) {
                    aVar.b(childAt.getMeasuredWidth());
                    aVar.c(childAt.getMeasuredHeight());
                } else {
                    aVar.b(childAt.getMeasuredHeight());
                    aVar.c(childAt.getMeasuredWidth());
                }
                if (aVar.k() || !(mode == 0 || bVar2.b(childAt))) {
                    bVar = new b(i5);
                    if (this.f8224b.a() == 1 && this.f8224b.e() == 1) {
                        this.f8223a.add(0, bVar);
                    } else {
                        this.f8223a.add(bVar);
                    }
                } else {
                    bVar = bVar2;
                }
                if (this.f8224b.a() == 0 && this.f8224b.e() == 1) {
                    bVar.a(0, childAt);
                } else {
                    bVar.a(childAt);
                }
            }
            i6++;
            bVar2 = bVar;
        }
        a(this.f8223a);
        int size3 = this.f8223a.size();
        int iMax = 0;
        for (int i7 = 0; i7 < size3; i7++) {
            iMax = Math.max(iMax, this.f8223a.get(i7).c());
        }
        int iB = bVar2.b() + bVar2.a();
        a(this.f8223a, a(mode, i5, iMax), a(mode2, size2, iB));
        for (int i8 = 0; i8 < size3; i8++) {
            b bVar3 = this.f8223a.get(i8);
            b(bVar3);
            a(bVar3);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f8224b.a() == 0) {
            i3 = paddingLeft + iMax;
            i4 = paddingTop + iB;
        } else {
            i3 = paddingLeft + iB;
            i4 = paddingTop + iMax;
        }
        setMeasuredDimension(resolveSize(i3, i), resolveSize(i4, i2));
    }

    private int a(int i, int i2, int i3) {
        switch (i) {
            case Integer.MIN_VALUE:
                return Math.min(i3, i2);
            case 0:
            default:
                return i3;
            case 1073741824:
                return i2;
        }
    }

    private void a(List<b> list) {
        int size = list.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            b bVar = list.get(i);
            bVar.a(i2);
            int iB = i2 + bVar.b();
            List<View> listE = bVar.e();
            int size2 = listE.size();
            int iG = 0;
            for (int i3 = 0; i3 < size2; i3++) {
                a aVar = (a) listE.get(i3).getLayoutParams();
                aVar.a(iG);
                iG += aVar.g() + aVar.d();
            }
            i++;
            i2 = iB;
        }
    }

    private void a(b bVar) {
        List<View> listE = bVar.e();
        int size = listE.size();
        for (int i = 0; i < size; i++) {
            View view = listE.get(i);
            a aVar = (a) view.getLayoutParams();
            if (this.f8224b.a() == 0) {
                aVar.a(getPaddingLeft() + bVar.d() + aVar.c(), getPaddingTop() + bVar.a() + aVar.f());
                view.measure(View.MeasureSpec.makeMeasureSpec(aVar.d(), 1073741824), View.MeasureSpec.makeMeasureSpec(aVar.e(), 1073741824));
            } else {
                aVar.a(getPaddingLeft() + bVar.a() + aVar.f(), getPaddingTop() + bVar.d() + aVar.c());
                view.measure(View.MeasureSpec.makeMeasureSpec(aVar.e(), 1073741824), View.MeasureSpec.makeMeasureSpec(aVar.d(), 1073741824));
            }
        }
    }

    private void a(List<b> list, int i, int i2) {
        int size = list.size();
        if (size > 0) {
            b bVar = list.get(size - 1);
            int iA = i2 - (bVar.a() + bVar.b());
            int i3 = iA < 0 ? 0 : iA;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                b bVar2 = list.get(i5);
                int iA2 = a((a) null);
                int iRound = Math.round((1 * i3) / size);
                int iC = bVar2.c();
                int iB = bVar2.b();
                Rect rect = new Rect();
                rect.top = i4;
                rect.left = 0;
                rect.right = i;
                rect.bottom = iB + iRound + i4;
                Rect rect2 = new Rect();
                Gravity.apply(iA2, iC, iB, rect, rect2);
                i4 += iRound;
                bVar2.b(bVar2.d() + rect2.left);
                bVar2.a(bVar2.a() + rect2.top);
                bVar2.d(rect2.width());
                bVar2.c(rect2.height());
            }
        }
    }

    private void b(b bVar) {
        int iRound;
        List<View> listE = bVar.e();
        int size = listE.size();
        if (size > 0) {
            float f = 0.0f;
            int i = 0;
            while (i < size) {
                float fB = f + b((a) listE.get(i).getLayoutParams());
                i++;
                f = fB;
            }
            a aVar = (a) listE.get(size - 1).getLayoutParams();
            int iC = bVar.c() - (aVar.c() + (aVar.d() + aVar.g()));
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                a aVar2 = (a) listE.get(i2).getLayoutParams();
                float fB2 = b(aVar2);
                int iA = a(aVar2);
                if (f == 0.0f) {
                    iRound = iC / size;
                } else {
                    iRound = Math.round((fB2 * iC) / f);
                }
                int iD = aVar2.d() + aVar2.g();
                int iE = aVar2.e() + aVar2.h();
                Rect rect = new Rect();
                rect.top = 0;
                rect.left = i3;
                rect.right = iD + iRound + i3;
                rect.bottom = bVar.b();
                Rect rect2 = new Rect();
                Gravity.apply(iA, iD, iE, rect, rect2);
                aVar2.a(rect2.left + aVar2.c());
                aVar2.d(rect2.top);
                aVar2.b(rect2.width() - aVar2.g());
                aVar2.c(rect2.height() - aVar2.h());
                i2++;
                i3 = iRound + i3;
            }
        }
    }

    private int a(a aVar) {
        int iD = this.f8224b.d();
        int iA = a((aVar == null || !aVar.a()) ? iD : aVar.i());
        int iA2 = a(iD);
        if ((iA & 7) == 0) {
            iA |= iA2 & 7;
        }
        if ((iA & 112) == 0) {
            iA |= iA2 & 112;
        }
        if ((iA & 7) == 0) {
            iA |= 3;
        }
        if ((iA & 112) == 0) {
            return iA | 48;
        }
        return iA;
    }

    private int a(int i) {
        if (this.f8224b.a() == 1 && (i & 8388608) == 0) {
            i = (((i & 7) >> 0) << 4) | 0 | (((i & 112) >> 4) << 0);
        }
        if (this.f8224b.e() != 1 || (i & 8388608) == 0) {
            return i;
        }
        return ((i & 3) == 3 ? 5 : 0) | 0 | ((i & 5) != 5 ? 0 : 3);
    }

    private float b(a aVar) {
        return aVar.b() ? aVar.j() : this.f8224b.c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            a aVar = (a) childAt.getLayoutParams();
            childAt.layout(aVar.h + aVar.leftMargin, aVar.i + aVar.topMargin, aVar.h + aVar.leftMargin + childAt.getMeasuredWidth(), aVar.topMargin + aVar.i + childAt.getMeasuredHeight());
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean zDrawChild = super.drawChild(canvas, view, j);
        a(canvas, view);
        return zDrawChild;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    private void a(Canvas canvas, View view) {
        if (b()) {
            Paint paintB = b(-256);
            Paint paintB2 = b(-65536);
            a aVar = (a) view.getLayoutParams();
            if (aVar.rightMargin > 0) {
                float right = view.getRight();
                float height = (view.getHeight() / 2.0f) + view.getTop();
                canvas.drawLine(right, height, right + aVar.rightMargin, height, paintB);
                canvas.drawLine((aVar.rightMargin + right) - 4.0f, height - 4.0f, right + aVar.rightMargin, height, paintB);
                canvas.drawLine((aVar.rightMargin + right) - 4.0f, height + 4.0f, right + aVar.rightMargin, height, paintB);
            }
            if (aVar.leftMargin > 0) {
                float left = view.getLeft();
                float height2 = (view.getHeight() / 2.0f) + view.getTop();
                canvas.drawLine(left, height2, left - aVar.leftMargin, height2, paintB);
                canvas.drawLine((left - aVar.leftMargin) + 4.0f, height2 - 4.0f, left - aVar.leftMargin, height2, paintB);
                canvas.drawLine((left - aVar.leftMargin) + 4.0f, height2 + 4.0f, left - aVar.leftMargin, height2, paintB);
            }
            if (aVar.bottomMargin > 0) {
                float width = (view.getWidth() / 2.0f) + view.getLeft();
                float bottom = view.getBottom();
                canvas.drawLine(width, bottom, width, bottom + aVar.bottomMargin, paintB);
                canvas.drawLine(width - 4.0f, (aVar.bottomMargin + bottom) - 4.0f, width, bottom + aVar.bottomMargin, paintB);
                canvas.drawLine(width + 4.0f, (aVar.bottomMargin + bottom) - 4.0f, width, bottom + aVar.bottomMargin, paintB);
            }
            if (aVar.topMargin > 0) {
                float width2 = (view.getWidth() / 2.0f) + view.getLeft();
                float top = view.getTop();
                canvas.drawLine(width2, top, width2, top - aVar.topMargin, paintB);
                canvas.drawLine(width2 - 4.0f, (top - aVar.topMargin) + 4.0f, width2, top - aVar.topMargin, paintB);
                canvas.drawLine(width2 + 4.0f, (top - aVar.topMargin) + 4.0f, width2, top - aVar.topMargin, paintB);
            }
            if (aVar.k()) {
                if (this.f8224b.a() == 0) {
                    float left2 = view.getLeft();
                    float top2 = view.getTop() + (view.getHeight() / 2.0f);
                    canvas.drawLine(left2, top2 - 6.0f, left2, top2 + 6.0f, paintB2);
                } else {
                    float left3 = view.getLeft() + (view.getWidth() / 2.0f);
                    float top3 = view.getTop();
                    canvas.drawLine(left3 - 6.0f, top3, 6.0f + left3, top3, paintB2);
                }
            }
        }
    }

    private Paint b(int i) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(2.0f);
        return paint;
    }

    public int getOrientation() {
        return this.f8224b.a();
    }

    public void setOrientation(int i) {
        this.f8224b.a(i);
        requestLayout();
    }

    public boolean b() {
        return this.f8224b.b() || c();
    }

    public void setDebugDraw(boolean z) {
        this.f8224b.a(z);
        invalidate();
    }

    private boolean c() {
        try {
            Method declaredMethod = ViewGroup.class.getDeclaredMethod("debugDraw", (Class[]) null);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(this, null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public float getWeightDefault() {
        return this.f8224b.c();
    }

    public void setWeightDefault(float f) {
        this.f8224b.a(f);
        requestLayout();
    }

    public int getGravity() {
        return this.f8224b.d();
    }

    public void setGravity(int i) {
        this.f8224b.b(i);
        requestLayout();
    }

    @Override // android.view.View, android.view.ViewParent
    public int getLayoutDirection() {
        if (this.f8224b == null) {
            return 0;
        }
        return this.f8224b.e();
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        this.f8224b.c(i);
        requestLayout();
    }

    public static class a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "NONE"), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        private boolean f8225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f8227c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8228d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f8225a = false;
            this.f8226b = 0;
            this.f8227c = -1.0f;
            a(context, attributeSet);
        }

        public a(int i, int i2) {
            super(i, i2);
            this.f8225a = false;
            this.f8226b = 0;
            this.f8227c = -1.0f;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f8225a = false;
            this.f8226b = 0;
            this.f8227c = -1.0f;
        }

        public boolean a() {
            return this.f8226b != 0;
        }

        public boolean b() {
            return this.f8227c >= 0.0f;
        }

        private void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.FlowLayout_LayoutParams);
            try {
                this.f8225a = typedArrayObtainStyledAttributes.getBoolean(c.a.FlowLayout_LayoutParams_layout_newLine, false);
                this.f8226b = typedArrayObtainStyledAttributes.getInt(c.a.FlowLayout_LayoutParams_android_layout_gravity, 0);
                this.f8227c = typedArrayObtainStyledAttributes.getFloat(c.a.FlowLayout_LayoutParams_layout_weight, -1.0f);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }

        void a(int i, int i2) {
            this.h = i;
            this.i = i2;
        }

        int c() {
            return this.f8228d;
        }

        void a(int i) {
            this.f8228d = i;
        }

        int d() {
            return this.e;
        }

        void b(int i) {
            this.e = i;
        }

        int e() {
            return this.f;
        }

        void c(int i) {
            this.f = i;
        }

        int f() {
            return this.g;
        }

        void d(int i) {
            this.g = i;
        }

        int g() {
            return this.j == 0 ? this.leftMargin + this.rightMargin : this.topMargin + this.bottomMargin;
        }

        int h() {
            return this.j == 0 ? this.topMargin + this.bottomMargin : this.leftMargin + this.rightMargin;
        }

        public int i() {
            return this.f8226b;
        }

        public float j() {
            return this.f8227c;
        }

        public boolean k() {
            return this.f8225a;
        }
    }
}
