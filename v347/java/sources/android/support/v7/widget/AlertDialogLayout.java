package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class AlertDialogLayout extends LinearLayoutCompat {
    public AlertDialogLayout(Context context) {
        super(context);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!tryOnMeasure(i, i2)) {
            super.onMeasure(i, i2);
        }
    }

    private boolean tryOnMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int iCombineMeasuredStates;
        int i6;
        int i7;
        int iCombineMeasuredStates2;
        int iMakeMeasureSpec;
        View view;
        View view2 = null;
        View view3 = null;
        int childCount = getChildCount();
        int i8 = 0;
        View view4 = null;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 8) {
                childAt = view3;
                view = view2;
            } else {
                int id = childAt.getId();
                if (id == a.f.topPanel) {
                    View view5 = view3;
                    view = childAt;
                    childAt = view5;
                } else if (id == a.f.buttonPanel) {
                    view = view2;
                } else {
                    if ((id != a.f.contentPanel && id != a.f.customPanel) || view4 != null) {
                        return false;
                    }
                    view4 = childAt;
                    childAt = view3;
                    view = view2;
                }
            }
            i8++;
            view2 = view;
            view3 = childAt;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int iCombineMeasuredStates3 = 0;
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view2 != null) {
            view2.measure(i, 0);
            paddingBottom += view2.getMeasuredHeight();
            iCombineMeasuredStates3 = View.combineMeasuredStates(0, view2.getMeasuredState());
        }
        int iResolveMinimumHeight = 0;
        if (view3 == null) {
            i3 = 0;
        } else {
            view3.measure(i, 0);
            iResolveMinimumHeight = resolveMinimumHeight(view3);
            int measuredHeight = view3.getMeasuredHeight() - iResolveMinimumHeight;
            paddingBottom += iResolveMinimumHeight;
            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, view3.getMeasuredState());
            i3 = measuredHeight;
        }
        if (view4 == null) {
            i4 = 0;
        } else {
            if (mode == 0) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode);
            }
            view4.measure(i, iMakeMeasureSpec);
            int measuredHeight2 = view4.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, view4.getMeasuredState());
            i4 = measuredHeight2;
        }
        int i9 = size - paddingBottom;
        if (view3 != null) {
            int i10 = paddingBottom - iResolveMinimumHeight;
            int iMin = Math.min(i9, i3);
            if (iMin > 0) {
                i9 -= iMin;
                iResolveMinimumHeight += iMin;
            }
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(iResolveMinimumHeight, 1073741824));
            int measuredHeight3 = view3.getMeasuredHeight() + i10;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates3, view3.getMeasuredState());
            int i11 = i9;
            i6 = measuredHeight3;
            i5 = i11;
        } else {
            i5 = i9;
            iCombineMeasuredStates = iCombineMeasuredStates3;
            i6 = paddingBottom;
        }
        if (view4 == null || i5 <= 0) {
            i7 = i6;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
        } else {
            int i12 = i5 - i5;
            view4.measure(i, View.MeasureSpec.makeMeasureSpec(i5 + i4, mode));
            int measuredHeight4 = (i6 - i4) + view4.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, view4.getMeasuredState());
            i7 = measuredHeight4;
        }
        int iMax = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8) {
                iMax = Math.max(iMax, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(iMax + getPaddingLeft() + getPaddingRight(), i, iCombineMeasuredStates2), View.resolveSizeAndState(i7, i2, 0));
        if (mode2 != 1073741824) {
            forceUniformWidth(childCount, i2);
        }
        return true;
    }

    private void forceUniformWidth(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, iMakeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private static int resolveMinimumHeight(View view) {
        int i = android.support.v4.view.s.i(view);
        if (i <= 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.getChildCount() == 1) {
                    return resolveMinimumHeight(viewGroup.getChildAt(0));
                }
            }
            return 0;
        }
        return i;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int paddingLeft = getPaddingLeft();
        int i6 = i3 - i;
        int paddingRight = i6 - getPaddingRight();
        int paddingRight2 = (i6 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i7 = gravity & 8388615;
        switch (gravity & 112) {
            case 16:
                paddingTop = (((i4 - i2) - measuredHeight) / 2) + getPaddingTop();
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - measuredHeight;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        int i8 = paddingTop;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                int i10 = layoutParams.gravity;
                if (i10 < 0) {
                    i10 = i7;
                }
                switch (android.support.v4.view.d.a(i10, android.support.v4.view.s.e(this)) & 7) {
                    case 1:
                        i5 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                        break;
                    case 5:
                        i5 = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                        break;
                    default:
                        i5 = paddingLeft + layoutParams.leftMargin;
                        break;
                }
                int i11 = layoutParams.topMargin + (hasDividerBeforeChildAt(i9) ? i8 + intrinsicHeight : i8);
                setChildFrame(childAt, i5, i11, measuredWidth, measuredHeight2);
                i8 = i11 + layoutParams.bottomMargin + measuredHeight2;
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }
}
