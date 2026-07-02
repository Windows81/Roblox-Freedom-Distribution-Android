package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.aa;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class j extends s<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Rect f424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Rect f425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f427d;

    abstract View b(List<View> list);

    public j() {
        this.f424a = new Rect();
        this.f425b = new Rect();
        this.f426c = 0;
    }

    public j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f424a = new Rect();
        this.f425b = new Rect();
        this.f426c = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View viewB;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (viewB = b(coordinatorLayout.c(view))) != null) {
            if (android.support.v4.view.s.o(viewB) && !android.support.v4.view.s.o(view)) {
                android.support.v4.view.s.b(view, true);
                if (android.support.v4.view.s.o(view)) {
                    view.requestLayout();
                    return true;
                }
            }
            int size = View.MeasureSpec.getSize(i3);
            if (size == 0) {
                size = coordinatorLayout.getHeight();
            }
            coordinatorLayout.a(view, i, i2, View.MeasureSpec.makeMeasureSpec(b(viewB) + (size - viewB.getMeasuredHeight()), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }

    @Override // android.support.design.widget.s
    protected void b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View viewB = b(coordinatorLayout.c(view));
        if (viewB != null) {
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) view.getLayoutParams();
            Rect rect = this.f424a;
            rect.set(coordinatorLayout.getPaddingLeft() + dVar.leftMargin, viewB.getBottom() + dVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - dVar.rightMargin, ((coordinatorLayout.getHeight() + viewB.getBottom()) - coordinatorLayout.getPaddingBottom()) - dVar.bottomMargin);
            aa lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && android.support.v4.view.s.o(coordinatorLayout) && !android.support.v4.view.s.o(view)) {
                rect.left += lastWindowInsets.a();
                rect.right -= lastWindowInsets.c();
            }
            Rect rect2 = this.f425b;
            android.support.v4.view.d.a(c(dVar.f292c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int iC = c(viewB);
            view.layout(rect2.left, rect2.top - iC, rect2.right, rect2.bottom - iC);
            this.f426c = rect2.top - viewB.getBottom();
            return;
        }
        super.b(coordinatorLayout, view, i);
        this.f426c = 0;
    }

    float a(View view) {
        return 1.0f;
    }

    final int c(View view) {
        if (this.f427d == 0) {
            return 0;
        }
        return android.support.v4.d.a.a((int) (a(view) * this.f427d), 0, this.f427d);
    }

    private static int c(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    int b(View view) {
        return view.getMeasuredHeight();
    }

    final int a() {
        return this.f426c;
    }

    public final void b(int i) {
        this.f427d = i;
    }

    public final int d() {
        return this.f427d;
    }
}
