package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.a.b;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    View[] mSet;
    int mSpanCount;
    SpanSizeLookup mSpanSizeLookup;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mPendingSpanCountChange = DEBUG;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(getProperties(context, attributeSet, i, i2).spanCount);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.mPendingSpanCountChange = DEBUG;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.mPendingSpanCountChange = DEBUG;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(i);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(DEBUG);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, android.support.v4.view.a.b bVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, bVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(recycler, state, layoutParams2.getViewLayoutPosition());
        if (this.mOrientation == 0) {
            bVar.b(b.C0028b.a(layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), spanGroupIndex, 1, (this.mSpanCount <= 1 || layoutParams2.getSpanSize() != this.mSpanCount) ? DEBUG : true, DEBUG));
        } else {
            bVar.b(b.C0028b.a(spanGroupIndex, 1, layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), (this.mSpanCount <= 1 || layoutParams2.getSpanSize() != this.mSpanCount) ? DEBUG : true, DEBUG));
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout()) {
            cachePreLayoutSpanMapping();
        }
        super.onLayoutChildren(recycler, state);
        clearPreLayoutSpanMappingCache();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSpanCountChange = DEBUG;
    }

    private void clearPreLayoutSpanMappingCache() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    private void cachePreLayoutSpanMapping() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, layoutParams.getSpanSize());
            this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, layoutParams.getSpanIndex());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    public SpanSizeLookup getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    private void updateMeasurements() {
        int height;
        if (getOrientation() == 1) {
            height = (getWidth() - getPaddingRight()) - getPaddingLeft();
        } else {
            height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        }
        calculateItemBorders(height);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            iChooseSize = chooseSize(i, paddingRight + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumWidth());
        } else {
            iChooseSize = chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            iChooseSize2 = chooseSize(i2, paddingTop + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    private void calculateItemBorders(int i) {
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, i);
    }

    static int[] calculateItemBorders(int[] iArr, int i, int i2) {
        int i3;
        int i4 = 0;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    int getSpaceForSpanRange(int i, int i2) {
        return (this.mOrientation == 1 && isLayoutRTL()) ? this.mCachedBorders[this.mSpanCount - i] - this.mCachedBorders[(this.mSpanCount - i) - i2] : this.mCachedBorders[i + i2] - this.mCachedBorders[i];
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.a aVar, int i) {
        super.onAnchorReady(recycler, state, aVar, i);
        updateMeasurements();
        if (state.getItemCount() > 0 && !state.isPreLayout()) {
            ensureAnchorIsInCorrectSpan(recycler, state, aVar, i);
        }
        ensureViewSet();
    }

    private void ensureViewSet() {
        if (this.mSet == null || this.mSet.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollVerticallyBy(i, recycler, state);
    }

    private void ensureAnchorIsInCorrectSpan(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.a aVar, int i) {
        boolean z = i != 1 ? DEBUG : true;
        int spanIndex = getSpanIndex(recycler, state, aVar.f1503a);
        if (z) {
            while (spanIndex > 0 && aVar.f1503a > 0) {
                aVar.f1503a--;
                spanIndex = getSpanIndex(recycler, state, aVar.f1503a);
            }
            return;
        }
        int itemCount = state.getItemCount() - 1;
        int i2 = aVar.f1503a;
        int i3 = spanIndex;
        while (i2 < itemCount) {
            int spanIndex2 = getSpanIndex(recycler, state, i2 + 1);
            if (spanIndex2 <= i3) {
                break;
            }
            i2++;
            i3 = spanIndex2;
        }
        aVar.f1503a = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    @Override // android.support.v7.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View findReferenceChild(android.support.v7.widget.RecyclerView.Recycler r8, android.support.v7.widget.RecyclerView.State r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            r2 = 0
            r7.ensureLayoutState()
            android.support.v7.widget.OrientationHelper r0 = r7.mOrientationHelper
            int r5 = r0.getStartAfterPadding()
            android.support.v7.widget.OrientationHelper r0 = r7.mOrientationHelper
            int r6 = r0.getEndAfterPadding()
            if (r11 <= r10) goto L2f
            r0 = 1
            r1 = r0
        L14:
            r4 = r2
        L15:
            if (r10 == r11) goto L57
            android.view.View r3 = r7.getChildAt(r10)
            int r0 = r7.getPosition(r3)
            if (r0 < 0) goto L5d
            if (r0 >= r12) goto L5d
            int r0 = r7.getSpanIndex(r8, r9, r0)
            if (r0 == 0) goto L32
            r0 = r2
            r3 = r4
        L2b:
            int r10 = r10 + r1
            r2 = r0
            r4 = r3
            goto L15
        L2f:
            r0 = -1
            r1 = r0
            goto L14
        L32:
            android.view.ViewGroup$LayoutParams r0 = r3.getLayoutParams()
            android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
            boolean r0 = r0.isItemRemoved()
            if (r0 == 0) goto L42
            if (r4 != 0) goto L5d
            r0 = r2
            goto L2b
        L42:
            android.support.v7.widget.OrientationHelper r0 = r7.mOrientationHelper
            int r0 = r0.getDecoratedStart(r3)
            if (r0 >= r6) goto L52
            android.support.v7.widget.OrientationHelper r0 = r7.mOrientationHelper
            int r0 = r0.getDecoratedEnd(r3)
            if (r0 >= r5) goto L5a
        L52:
            if (r2 != 0) goto L5d
            r0 = r3
            r3 = r4
            goto L2b
        L57:
            if (r2 == 0) goto L5b
        L59:
            r3 = r2
        L5a:
            return r3
        L5b:
            r2 = r4
            goto L59
        L5d:
            r0 = r2
            r3 = r4
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.GridLayoutManager.findReferenceChild(android.support.v7.widget.RecyclerView$Recycler, android.support.v7.widget.RecyclerView$State, int, int, int):android.view.View");
    }

    private int getSpanGroupIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanGroupIndex(i, this.mSpanCount);
        }
        int iConvertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w(TAG, "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.mSpanSizeLookup.getSpanGroupIndex(iConvertPreLayoutPositionToPostLayout, this.mSpanCount);
    }

    private int getSpanIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
        }
        int i2 = this.mPreLayoutSpanIndexCache.get(i, -1);
        if (i2 == -1) {
            int iConvertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
            if (iConvertPreLayoutPositionToPostLayout == -1) {
                Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                return 0;
            }
            return this.mSpanSizeLookup.getCachedSpanIndex(iConvertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        return i2;
    }

    private int getSpanSize(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(i);
        }
        int i2 = this.mPreLayoutSpanSizeCache.get(i, -1);
        if (i2 == -1) {
            int iConvertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
            if (iConvertPreLayoutPositionToPostLayout == -1) {
                Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                return 1;
            }
            return this.mSpanSizeLookup.getSpanSize(iConvertPreLayoutPositionToPostLayout);
        }
        return i2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LinearLayoutManager.b bVar, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int spanSize = this.mSpanCount;
        for (int i = 0; i < this.mSpanCount && bVar.a(state) && spanSize > 0; i++) {
            int i2 = bVar.f1510d;
            layoutPrefetchRegistry.addPosition(i2, Math.max(0, bVar.g));
            spanSize -= this.mSpanSizeLookup.getSpanSize(i2);
            bVar.f1510d += bVar.e;
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.b bVar, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int iMakeMeasureSpec;
        int childMeasureSpec;
        View viewA;
        int modeInOther = this.mOrientationHelper.getModeInOther();
        boolean z = modeInOther != 1073741824;
        int i4 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (z) {
            updateMeasurements();
        }
        boolean z2 = bVar.e == 1 ? true : DEBUG;
        int i5 = 0;
        int i6 = 0;
        int spanIndex = this.mSpanCount;
        if (!z2) {
            spanIndex = getSpanIndex(recycler, state, bVar.f1510d) + getSpanSize(recycler, state, bVar.f1510d);
        }
        while (i5 < this.mSpanCount && bVar.a(state) && spanIndex > 0) {
            int i7 = bVar.f1510d;
            int spanSize = getSpanSize(recycler, state, i7);
            if (spanSize > this.mSpanCount) {
                throw new IllegalArgumentException("Item at position " + i7 + " requires " + spanSize + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
            }
            spanIndex -= spanSize;
            if (spanIndex < 0 || (viewA = bVar.a(recycler)) == null) {
                break;
            }
            i6 += spanSize;
            this.mSet[i5] = viewA;
            i5++;
        }
        if (i5 == 0) {
            layoutChunkResult.mFinished = true;
            return;
        }
        assignSpans(recycler, state, i5, i6, z2);
        int i8 = 0;
        float f = 0.0f;
        int i9 = 0;
        while (i8 < i5) {
            View view = this.mSet[i8];
            if (bVar.k == null) {
                if (z2) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z2) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.mDecorInsets);
            measureChild(view, modeInOther, DEBUG);
            int decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(view);
            if (decoratedMeasurement > i9) {
                i9 = decoratedMeasurement;
            }
            float decoratedMeasurementInOther = (this.mOrientationHelper.getDecoratedMeasurementInOther(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).mSpanSize;
            if (decoratedMeasurementInOther <= f) {
                decoratedMeasurementInOther = f;
            }
            i8++;
            f = decoratedMeasurementInOther;
        }
        if (z) {
            guessMeasurement(f, i4);
            i9 = 0;
            int i10 = 0;
            while (i10 < i5) {
                View view2 = this.mSet[i10];
                measureChild(view2, 1073741824, true);
                int decoratedMeasurement2 = this.mOrientationHelper.getDecoratedMeasurement(view2);
                if (decoratedMeasurement2 <= i9) {
                    decoratedMeasurement2 = i9;
                }
                i10++;
                i9 = decoratedMeasurement2;
            }
        }
        for (int i11 = 0; i11 < i5; i11++) {
            View view3 = this.mSet[i11];
            if (this.mOrientationHelper.getDecoratedMeasurement(view3) != i9) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.mDecorInsets;
                int i12 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i13 = rect.right + rect.left + layoutParams.leftMargin + layoutParams.rightMargin;
                int spaceForSpanRange = getSpaceForSpanRange(layoutParams.mSpanIndex, layoutParams.mSpanSize);
                if (this.mOrientation == 1) {
                    iMakeMeasureSpec = getChildMeasureSpec(spaceForSpanRange, 1073741824, i13, layoutParams.width, DEBUG);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i12, 1073741824);
                } else {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i13, 1073741824);
                    childMeasureSpec = getChildMeasureSpec(spaceForSpanRange, 1073741824, i12, layoutParams.height, DEBUG);
                }
                measureChildWithDecorationsAndMargin(view3, iMakeMeasureSpec, childMeasureSpec, true);
            }
        }
        layoutChunkResult.mConsumed = i9;
        int i14 = 0;
        if (this.mOrientation == 1) {
            if (bVar.f == -1) {
                i14 = bVar.f1508b;
                i3 = i14 - i9;
                i2 = 0;
                i = 0;
            } else {
                int i15 = bVar.f1508b;
                i14 = i15 + i9;
                i3 = i15;
                i2 = 0;
                i = 0;
            }
        } else if (bVar.f == -1) {
            int i16 = bVar.f1508b;
            i2 = i16;
            i = i16 - i9;
            i3 = 0;
        } else {
            i = bVar.f1508b;
            i2 = i9 + i;
            i3 = 0;
        }
        int decoratedMeasurementInOther2 = i14;
        int paddingTop = i3;
        int decoratedMeasurementInOther3 = i2;
        int paddingLeft = i;
        for (int i17 = 0; i17 < i5; i17++) {
            View view4 = this.mSet[i17];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    decoratedMeasurementInOther3 = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - layoutParams2.mSpanIndex];
                    paddingLeft = decoratedMeasurementInOther3 - this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
                } else {
                    paddingLeft = getPaddingLeft() + this.mCachedBorders[layoutParams2.mSpanIndex];
                    decoratedMeasurementInOther3 = paddingLeft + this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
                }
            } else {
                paddingTop = getPaddingTop() + this.mCachedBorders[layoutParams2.mSpanIndex];
                decoratedMeasurementInOther2 = paddingTop + this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
            }
            layoutDecoratedWithMargins(view4, paddingLeft, paddingTop, decoratedMeasurementInOther3, decoratedMeasurementInOther2);
            if (layoutParams2.isItemRemoved() || layoutParams2.isItemChanged()) {
                layoutChunkResult.mIgnoreConsumed = true;
            }
            layoutChunkResult.mFocusable |= view4.hasFocusable();
        }
        Arrays.fill(this.mSet, (Object) null);
    }

    private void measureChild(View view, int i, boolean z) {
        int childMeasureSpec;
        int childMeasureSpec2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i2 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i3 = layoutParams.rightMargin + rect.right + rect.left + layoutParams.leftMargin;
        int spaceForSpanRange = getSpaceForSpanRange(layoutParams.mSpanIndex, layoutParams.mSpanSize);
        if (this.mOrientation == 1) {
            childMeasureSpec = getChildMeasureSpec(spaceForSpanRange, i, i3, layoutParams.width, DEBUG);
            childMeasureSpec2 = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i2, layoutParams.height, true);
        } else {
            int childMeasureSpec3 = getChildMeasureSpec(spaceForSpanRange, i, i2, layoutParams.height, DEBUG);
            childMeasureSpec = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getWidthMode(), i3, layoutParams.width, true);
            childMeasureSpec2 = childMeasureSpec3;
        }
        measureChildWithDecorationsAndMargin(view, childMeasureSpec, childMeasureSpec2, z);
    }

    private void guessMeasurement(float f, int i) {
        calculateItemBorders(Math.max(Math.round(this.mSpanCount * f), i));
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        boolean zShouldMeasureChild;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            zShouldMeasureChild = shouldReMeasureChild(view, i, i2, layoutParams);
        } else {
            zShouldMeasureChild = shouldMeasureChild(view, i, i2, layoutParams);
        }
        if (zShouldMeasureChild) {
            view.measure(i, i2);
        }
    }

    private void assignSpans(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, boolean z) {
        int i3;
        int i4;
        if (z) {
            i4 = 1;
            i3 = 0;
        } else {
            int i5 = i - 1;
            i = -1;
            i3 = i5;
            i4 = -1;
        }
        int i6 = 0;
        for (int i7 = i3; i7 != i; i7 += i4) {
            View view = this.mSet[i7];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.mSpanSize = getSpanSize(recycler, state, getPosition(view));
            layoutParams.mSpanIndex = i6;
            i6 += layoutParams.mSpanSize;
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void setSpanCount(int i) {
        if (i != this.mSpanCount) {
            this.mPendingSpanCountChange = true;
            if (i < 1) {
                throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
            }
            this.mSpanCount = i;
            this.mSpanSizeLookup.invalidateSpanIndexCache();
            requestLayout();
        }
    }

    public static abstract class SpanSizeLookup {
        final SparseIntArray mSpanIndexCache = new SparseIntArray();
        private boolean mCacheSpanIndices = GridLayoutManager.DEBUG;

        public abstract int getSpanSize(int i);

        public void setSpanIndexCacheEnabled(boolean z) {
            this.mCacheSpanIndices = z;
        }

        public void invalidateSpanIndexCache() {
            this.mSpanIndexCache.clear();
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.mCacheSpanIndices;
        }

        int getCachedSpanIndex(int i, int i2) {
            if (!this.mCacheSpanIndices) {
                return getSpanIndex(i, i2);
            }
            int i3 = this.mSpanIndexCache.get(i, -1);
            if (i3 == -1) {
                int spanIndex = getSpanIndex(i, i2);
                this.mSpanIndexCache.put(i, spanIndex);
                return spanIndex;
            }
            return i3;
        }

        public int getSpanIndex(int i, int i2) {
            int i3;
            int spanSize;
            int iFindReferenceIndexFromCache;
            int spanSize2 = getSpanSize(i);
            if (spanSize2 == i2) {
                return 0;
            }
            if (!this.mCacheSpanIndices || this.mSpanIndexCache.size() <= 0 || (iFindReferenceIndexFromCache = findReferenceIndexFromCache(i)) < 0) {
                i3 = 0;
                spanSize = 0;
            } else {
                spanSize = this.mSpanIndexCache.get(iFindReferenceIndexFromCache) + getSpanSize(iFindReferenceIndexFromCache);
                i3 = iFindReferenceIndexFromCache + 1;
            }
            int i4 = i3;
            while (i4 < i) {
                int spanSize3 = getSpanSize(i4);
                int i5 = spanSize + spanSize3;
                if (i5 == i2) {
                    spanSize3 = 0;
                } else if (i5 <= i2) {
                    spanSize3 = i5;
                }
                i4++;
                spanSize = spanSize3;
            }
            if (spanSize + spanSize2 <= i2) {
                return spanSize;
            }
            return 0;
        }

        int findReferenceIndexFromCache(int i) {
            int i2 = 0;
            int size = this.mSpanIndexCache.size() - 1;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.mSpanIndexCache.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.mSpanIndexCache.size()) {
                return -1;
            }
            return this.mSpanIndexCache.keyAt(i4);
        }

        public int getSpanGroupIndex(int i, int i2) {
            int spanSize = getSpanSize(i);
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                int spanSize2 = getSpanSize(i3);
                int i6 = i5 + spanSize2;
                if (i6 == i2) {
                    i4++;
                    spanSize2 = 0;
                } else if (i6 > i2) {
                    i4++;
                } else {
                    spanSize2 = i6;
                }
                i3++;
                i5 = spanSize2;
            }
            if (i5 + spanSize > i2) {
                return i4 + 1;
            }
            return i4;
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int childCount;
        int i2;
        int childCount2;
        int i3;
        int iMin;
        View view2;
        int iMin2;
        int i4;
        View view3;
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) viewFindContainingItemView.getLayoutParams();
        int i5 = layoutParams.mSpanIndex;
        int i6 = layoutParams.mSpanIndex + layoutParams.mSpanSize;
        if (super.onFocusSearchFailed(view, i, recycler, state) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i) == 1 ? true : DEBUG) != this.mShouldReverseLayout ? true : DEBUG) {
            childCount = getChildCount() - 1;
            i2 = -1;
            childCount2 = -1;
        } else {
            childCount = 0;
            i2 = 1;
            childCount2 = getChildCount();
        }
        boolean z = (this.mOrientation == 1 && isLayoutRTL()) ? true : DEBUG;
        View view4 = null;
        int i7 = -1;
        int i8 = 0;
        View view5 = null;
        int i9 = -1;
        int i10 = 0;
        int spanGroupIndex = getSpanGroupIndex(recycler, state, childCount);
        int i11 = childCount;
        while (i11 != childCount2) {
            int spanGroupIndex2 = getSpanGroupIndex(recycler, state, i11);
            View childAt = getChildAt(i11);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (childAt.hasFocusable() && spanGroupIndex2 != spanGroupIndex) {
                if (view4 != null) {
                    break;
                }
            } else {
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                int i12 = layoutParams2.mSpanIndex;
                int i13 = layoutParams2.mSpanIndex + layoutParams2.mSpanSize;
                if (!childAt.hasFocusable() || i12 != i5 || i13 != i6) {
                    boolean z2 = DEBUG;
                    if ((childAt.hasFocusable() && view4 == null) || (!childAt.hasFocusable() && view5 == null)) {
                        z2 = true;
                    } else {
                        int iMin3 = Math.min(i13, i6) - Math.max(i12, i5);
                        if (childAt.hasFocusable()) {
                            if (iMin3 > i8) {
                                z2 = true;
                            } else if (iMin3 == i8) {
                                if (z == (i12 > i7 ? true : DEBUG)) {
                                    z2 = true;
                                }
                            }
                        } else if (view4 == null && isViewPartiallyVisible(childAt, DEBUG, true)) {
                            if (iMin3 > i10) {
                                z2 = true;
                            } else if (iMin3 == i10) {
                                if (z == (i12 > i9 ? true : DEBUG)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    if (z2) {
                        if (childAt.hasFocusable()) {
                            int i14 = layoutParams2.mSpanIndex;
                            int i15 = i10;
                            i3 = i9;
                            view2 = view5;
                            iMin2 = Math.min(i13, i6) - Math.max(i12, i5);
                            iMin = i15;
                            view3 = childAt;
                            i4 = i14;
                        } else {
                            i3 = layoutParams2.mSpanIndex;
                            iMin = Math.min(i13, i6) - Math.max(i12, i5);
                            view2 = childAt;
                            iMin2 = i8;
                            i4 = i7;
                            view3 = view4;
                        }
                    }
                    i11 += i2;
                    view4 = view3;
                    i8 = iMin2;
                    i7 = i4;
                    view5 = view2;
                    i9 = i3;
                    i10 = iMin;
                } else {
                    return childAt;
                }
            }
            iMin = i10;
            i4 = i7;
            i3 = i9;
            view2 = view5;
            iMin2 = i8;
            view3 = view4;
            i11 += i2;
            view4 = view3;
            i8 = iMin2;
            i7 = i4;
            view5 = view2;
            i9 = i3;
            i10 = iMin;
        }
        if (view4 == null) {
            view4 = view5;
        }
        return view4;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        if (this.mPendingSavedState != null || this.mPendingSpanCountChange) {
            return DEBUG;
        }
        return true;
    }

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            return 1;
        }

        @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanIndex(int i, int i2) {
            return i % i2;
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        int mSpanIndex;
        int mSpanSize;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public int getSpanIndex() {
            return this.mSpanIndex;
        }

        public int getSpanSize() {
            return this.mSpanSize;
        }
    }
}
