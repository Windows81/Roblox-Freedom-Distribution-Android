package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements h.b, android.support.v7.view.menu.p {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private o.a mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private android.support.v7.view.menu.h mMenu;
    h.a mMenuBuilderCallback;
    private int mMinCellSize;
    OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private c mPresenter;
    private boolean mReserveOverflow;

    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (f * 4.0f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    public void setPopupTheme(int i) {
        if (this.mPopupTheme != i) {
            this.mPopupTheme = i;
            if (i == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    public void setPresenter(c cVar) {
        this.mPresenter = cVar;
        this.mPresenter.a(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mPresenter != null) {
            this.mPresenter.b(false);
            if (this.mPresenter.h()) {
                this.mPresenter.e();
                this.mPresenter.d();
            }
        }
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.mFormatItems;
        this.mFormatItems = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.mFormatItems && this.mMenu != null && size != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = size;
            this.mMenu.b(true);
        }
        int childCount = getChildCount();
        if (this.mFormatItems && childCount > 0) {
            onMeasureExactFormat(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0304 A[PHI: r7
  0x0304: PHI (r7v9 float) = (r7v8 float), (r7v17 float), (r7v17 float) binds: [B:72:0x0189, B:79:0x01b2, B:81:0x01c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onMeasureExactFormat(int r35, int r36) {
        /*
            Method dump skipped, instruction units count: 804
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ActionMenuView.onMeasureExactFormat(int, int):void");
    }

    static int measureChildForCells(View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.b();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z2 && i5 < 2) {
                i5 = 2;
            }
        }
        if (!layoutParams.isOverflowButton && z2) {
            z = true;
        }
        layoutParams.expandable = z;
        layoutParams.cellsUsed = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), iMakeMeasureSpec);
        return i5;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int width;
        int paddingLeft;
        if (!this.mFormatItems) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i10 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i11 = 0;
        int i12 = 0;
        int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
        boolean z3 = false;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i13 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() == 8) {
                z2 = z3;
                i8 = i12;
                i7 = paddingRight;
                i9 = i11;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isOverflowButton) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i13)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zIsLayoutRtl) {
                        paddingLeft = layoutParams.leftMargin + getPaddingLeft();
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i14 = i10 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i14, width, measuredHeight + i14);
                    i7 = paddingRight - measuredWidth;
                    z2 = true;
                    i8 = i12;
                    i9 = i11;
                } else {
                    int measuredWidth2 = childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
                    int i15 = i11 + measuredWidth2;
                    int i16 = paddingRight - measuredWidth2;
                    if (hasSupportDividerBeforeChildAt(i13)) {
                        i15 += dividerWidth;
                    }
                    boolean z4 = z3;
                    i7 = i16;
                    i8 = i12 + 1;
                    i9 = i15;
                    z2 = z4;
                }
            }
            i13++;
            i11 = i9;
            paddingRight = i7;
            i12 = i8;
            z3 = z2;
        }
        if (childCount == 1 && !z3) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i17 = ((i3 - i) / 2) - (measuredWidth3 / 2);
            int i18 = i10 - (measuredHeight2 / 2);
            childAt2.layout(i17, i18, measuredWidth3 + i17, measuredHeight2 + i18);
            return;
        }
        int i19 = i12 - (z3 ? 0 : 1);
        int iMax = Math.max(0, i19 > 0 ? paddingRight / i19 : 0);
        if (zIsLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            int i20 = 0;
            while (i20 < childCount) {
                View childAt3 = getChildAt(i20);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() == 8) {
                    i6 = width2;
                } else if (layoutParams2.isOverflowButton) {
                    i6 = width2;
                } else {
                    int i21 = width2 - layoutParams2.rightMargin;
                    int measuredWidth4 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i22 = i10 - (measuredHeight3 / 2);
                    childAt3.layout(i21 - measuredWidth4, i22, i21, measuredHeight3 + i22);
                    i6 = i21 - ((layoutParams2.leftMargin + measuredWidth4) + iMax);
                }
                i20++;
                width2 = i6;
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        int i23 = 0;
        while (i23 < childCount) {
            View childAt4 = getChildAt(i23);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() == 8) {
                i5 = paddingLeft2;
            } else if (layoutParams3.isOverflowButton) {
                i5 = paddingLeft2;
            } else {
                int i24 = paddingLeft2 + layoutParams3.leftMargin;
                int measuredWidth5 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i25 = i10 - (measuredHeight4 / 2);
                childAt4.layout(i24, i25, i24 + measuredWidth5, measuredHeight4 + i25);
                i5 = layoutParams3.rightMargin + measuredWidth5 + iMax + i24;
            }
            i23++;
            paddingLeft2 = i5;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.mPresenter.a(drawable);
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.mPresenter.c();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void setOverflowReserved(boolean z) {
        this.mReserveOverflow = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
            if (layoutParams2.gravity <= 0) {
                layoutParams2.gravity = 16;
                return layoutParams2;
            }
            return layoutParams2;
        }
        return generateDefaultLayoutParams();
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.isOverflowButton = true;
        return layoutParamsGenerateDefaultLayoutParams;
    }

    @Override // android.support.v7.view.menu.h.b
    public boolean invokeItem(android.support.v7.view.menu.j jVar) {
        return this.mMenu.a(jVar, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.support.v7.view.menu.p
    public void initialize(android.support.v7.view.menu.h hVar) {
        this.mMenu = hVar;
    }

    public Menu getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            this.mMenu = new android.support.v7.view.menu.h(context);
            this.mMenu.a(new b());
            this.mPresenter = new c(context);
            this.mPresenter.c(true);
            this.mPresenter.a(this.mActionMenuPresenterCallback != null ? this.mActionMenuPresenterCallback : new a());
            this.mMenu.a(this.mPresenter, this.mPopupContext);
            this.mPresenter.a(this);
        }
        return this.mMenu;
    }

    public void setMenuCallbacks(o.a aVar, h.a aVar2) {
        this.mActionMenuPresenterCallback = aVar;
        this.mMenuBuilderCallback = aVar2;
    }

    public android.support.v7.view.menu.h peekMenu() {
        return this.mMenu;
    }

    public boolean showOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.d();
    }

    public boolean hideOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.e();
    }

    public boolean isOverflowMenuShowing() {
        return this.mPresenter != null && this.mPresenter.h();
    }

    public boolean isOverflowMenuShowPending() {
        return this.mPresenter != null && this.mPresenter.i();
    }

    public void dismissPopupMenus() {
        if (this.mPresenter != null) {
            this.mPresenter.f();
        }
    }

    protected boolean hasSupportDividerBeforeChildAt(int i) {
        boolean zNeedsDividerAfter = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            zNeedsDividerAfter = false | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? zNeedsDividerAfter : ((ActionMenuChildView) childAt2).needsDividerBefore() | zNeedsDividerAfter;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.mPresenter.d(z);
    }

    private class b implements h.a {
        b() {
        }

        @Override // android.support.v7.view.menu.h.a
        public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
            return ActionMenuView.this.mOnMenuItemClickListener != null && ActionMenuView.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
        }

        @Override // android.support.v7.view.menu.h.a
        public void a(android.support.v7.view.menu.h hVar) {
            if (ActionMenuView.this.mMenuBuilderCallback != null) {
                ActionMenuView.this.mMenuBuilderCallback.a(hVar);
            }
        }
    }

    private static class a implements o.a {
        a() {
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            return false;
        }
    }

    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {

        @ViewDebug.ExportedProperty
        public int cellsUsed;

        @ViewDebug.ExportedProperty
        public boolean expandable;
        boolean expanded;

        @ViewDebug.ExportedProperty
        public int extraPixels;

        @ViewDebug.ExportedProperty
        public boolean isOverflowButton;

        @ViewDebug.ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }
    }
}
