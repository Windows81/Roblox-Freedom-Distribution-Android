package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider, ItemTouchHelper.ViewDropHandler {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final LayoutChunkResult mLayoutChunkResult;
    private b mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    public LinearLayoutManager(Context context) {
        this(context, 1, DEBUG);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mReverseLayout = DEBUG;
        this.mShouldReverseLayout = DEBUG;
        this.mStackFromEnd = DEBUG;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        setOrientation(i);
        setReverseLayout(z);
        setAutoMeasureEnabled(true);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mReverseLayout = DEBUG;
        this.mShouldReverseLayout = DEBUG;
        this.mStackFromEnd = DEBUG;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        RecyclerView.LayoutManager.Properties properties = getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
        setAutoMeasureEnabled(true);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState.mAnchorPosition = getPosition(childClosestToEnd);
                return savedState;
            }
            View childClosestToStart = getChildClosestToStart();
            savedState.mAnchorPosition = getPosition(childClosestToStart);
            savedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            return savedState;
        }
        savedState.invalidateAnchor();
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (this.mOrientation == 0) {
            return true;
        }
        return DEBUG;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (this.mOrientation == 1) {
            return true;
        }
        return DEBUG;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd != z) {
            this.mStackFromEnd = z;
            requestLayout();
        }
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation) {
            this.mOrientation = i;
            this.mOrientationHelper = null;
            requestLayout();
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout ? DEBUG : true;
        }
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z != this.mReverseLayout) {
            this.mReverseLayout = z;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // android.support.v7.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return null;
        }
        if (i < getPosition(getChildAt(0))) {
            z = true;
        }
        int i2 = z != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        int i3;
        int i4;
        View viewFindViewByPosition;
        int decoratedStart;
        int i5 = -1;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.f1507a = DEBUG;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        if (!this.mAnchorInfo.f1506d || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            this.mAnchorInfo.a();
            this.mAnchorInfo.f1505c = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recycler, state, this.mAnchorInfo);
            this.mAnchorInfo.f1506d = true;
        } else if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
            this.mAnchorInfo.a(focusedChild);
        }
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.mLayoutState.j >= 0) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        int startAfterPadding = i + this.mOrientationHelper.getStartAfterPadding();
        int endPadding = extraLayoutSpace + this.mOrientationHelper.getEndPadding();
        if (state.isPreLayout() && this.mPendingScrollPosition != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition)) != null) {
            if (this.mShouldReverseLayout) {
                decoratedStart = (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition)) - this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = this.mPendingScrollPositionOffset - (this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding());
            }
            if (decoratedStart > 0) {
                startAfterPadding += decoratedStart;
            } else {
                endPadding -= decoratedStart;
            }
        }
        if (this.mAnchorInfo.f1505c) {
            if (this.mShouldReverseLayout) {
                i5 = 1;
            }
        } else if (!this.mShouldReverseLayout) {
            i5 = 1;
        }
        onAnchorReady(recycler, state, this.mAnchorInfo, i5);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.l = resolveIsInfinite();
        this.mLayoutState.i = state.isPreLayout();
        if (this.mAnchorInfo.f1505c) {
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.h = startAfterPadding;
            fill(recycler, this.mLayoutState, state, DEBUG);
            int i6 = this.mLayoutState.f1508b;
            int i7 = this.mLayoutState.f1510d;
            if (this.mLayoutState.f1509c > 0) {
                endPadding += this.mLayoutState.f1509c;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.h = endPadding;
            this.mLayoutState.f1510d += this.mLayoutState.e;
            fill(recycler, this.mLayoutState, state, DEBUG);
            int i8 = this.mLayoutState.f1508b;
            if (this.mLayoutState.f1509c > 0) {
                int i9 = this.mLayoutState.f1509c;
                updateLayoutStateToFillStart(i7, i6);
                this.mLayoutState.h = i9;
                fill(recycler, this.mLayoutState, state, DEBUG);
                i4 = this.mLayoutState.f1508b;
            } else {
                i4 = i6;
            }
            i3 = i4;
            i2 = i8;
        } else {
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.h = endPadding;
            fill(recycler, this.mLayoutState, state, DEBUG);
            i2 = this.mLayoutState.f1508b;
            int i10 = this.mLayoutState.f1510d;
            if (this.mLayoutState.f1509c > 0) {
                startAfterPadding += this.mLayoutState.f1509c;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.h = startAfterPadding;
            this.mLayoutState.f1510d += this.mLayoutState.e;
            fill(recycler, this.mLayoutState, state, DEBUG);
            i3 = this.mLayoutState.f1508b;
            if (this.mLayoutState.f1509c > 0) {
                int i11 = this.mLayoutState.f1509c;
                updateLayoutStateToFillEnd(i10, i2);
                this.mLayoutState.h = i11;
                fill(recycler, this.mLayoutState, state, DEBUG);
                i2 = this.mLayoutState.f1508b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iFixLayoutEndGap = fixLayoutEndGap(i2, recycler, state, true);
                int i12 = i3 + iFixLayoutEndGap;
                int iFixLayoutStartGap = fixLayoutStartGap(i12, recycler, state, DEBUG);
                i3 = i12 + iFixLayoutStartGap;
                i2 = i2 + iFixLayoutEndGap + iFixLayoutStartGap;
            } else {
                int iFixLayoutStartGap2 = fixLayoutStartGap(i3, recycler, state, true);
                int i13 = i2 + iFixLayoutStartGap2;
                int iFixLayoutEndGap2 = fixLayoutEndGap(i13, recycler, state, DEBUG);
                i3 = i3 + iFixLayoutStartGap2 + iFixLayoutEndGap2;
                i2 = i13 + iFixLayoutEndGap2;
            }
        }
        layoutForPredictiveAnimations(recycler, state, i3, i2);
        if (!state.isPreLayout()) {
            this.mOrientationHelper.onLayoutComplete();
        } else {
            this.mAnchorInfo.a();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.a();
    }

    void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, a aVar, int i) {
    }

    private void layoutForPredictiveAnimations(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int decoratedMeasurement;
        int decoratedMeasurement2;
        if (state.willRunPredictiveAnimations() && getChildCount() != 0 && !state.isPreLayout() && supportsPredictiveItemAnimations()) {
            int i3 = 0;
            int i4 = 0;
            List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
            int size = scrapList.size();
            int position = getPosition(getChildAt(0));
            int i5 = 0;
            while (i5 < size) {
                RecyclerView.ViewHolder viewHolder = scrapList.get(i5);
                if (viewHolder.isRemoved()) {
                    decoratedMeasurement = i4;
                    decoratedMeasurement2 = i3;
                } else {
                    if (((viewHolder.getLayoutPosition() < position ? true : DEBUG) != this.mShouldReverseLayout ? (byte) -1 : (byte) 1) == -1) {
                        decoratedMeasurement2 = this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView) + i3;
                        decoratedMeasurement = i4;
                    } else {
                        decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView) + i4;
                        decoratedMeasurement2 = i3;
                    }
                }
                i5++;
                i3 = decoratedMeasurement2;
                i4 = decoratedMeasurement;
            }
            this.mLayoutState.k = scrapList;
            if (i3 > 0) {
                updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i);
                this.mLayoutState.h = i3;
                this.mLayoutState.f1509c = 0;
                this.mLayoutState.a();
                fill(recycler, this.mLayoutState, state, DEBUG);
            }
            if (i4 > 0) {
                updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i2);
                this.mLayoutState.h = i4;
                this.mLayoutState.f1509c = 0;
                this.mLayoutState.a();
                fill(recycler, this.mLayoutState, state, DEBUG);
            }
            this.mLayoutState.k = null;
        }
    }

    private void updateAnchorInfoForLayout(RecyclerView.Recycler recycler, RecyclerView.State state, a aVar) {
        if (!updateAnchorFromPendingData(state, aVar) && !updateAnchorFromChildren(recycler, state, aVar)) {
            aVar.b();
            aVar.f1503a = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.Recycler recycler, RecyclerView.State state, a aVar) {
        View viewFindReferenceChildClosestToStart;
        int startAfterPadding;
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return DEBUG;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.a(focusedChild, state)) {
            aVar.a(focusedChild);
            return true;
        }
        if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return DEBUG;
        }
        if (aVar.f1505c) {
            viewFindReferenceChildClosestToStart = findReferenceChildClosestToEnd(recycler, state);
        } else {
            viewFindReferenceChildClosestToStart = findReferenceChildClosestToStart(recycler, state);
        }
        if (viewFindReferenceChildClosestToStart == null) {
            return DEBUG;
        }
        aVar.b(viewFindReferenceChildClosestToStart);
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.mOrientationHelper.getDecoratedStart(viewFindReferenceChildClosestToStart) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(viewFindReferenceChildClosestToStart) < this.mOrientationHelper.getStartAfterPadding()) {
                z = true;
            }
            if (z) {
                if (aVar.f1505c) {
                    startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                } else {
                    startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                }
                aVar.f1504b = startAfterPadding;
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.State state, a aVar) {
        int decoratedStart;
        boolean z = DEBUG;
        if (state.isPreLayout() || this.mPendingScrollPosition == -1) {
            return DEBUG;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return DEBUG;
        }
        aVar.f1503a = this.mPendingScrollPosition;
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            aVar.f1505c = this.mPendingSavedState.mAnchorLayoutFromEnd;
            if (aVar.f1505c) {
                aVar.f1504b = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                return true;
            }
            aVar.f1504b = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
            return true;
        }
        if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (viewFindViewByPosition != null) {
                if (this.mOrientationHelper.getDecoratedMeasurement(viewFindViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                    aVar.b();
                    return true;
                }
                if (this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                    aVar.f1504b = this.mOrientationHelper.getStartAfterPadding();
                    aVar.f1505c = DEBUG;
                    return true;
                }
                if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition) < 0) {
                    aVar.f1504b = this.mOrientationHelper.getEndAfterPadding();
                    aVar.f1505c = true;
                    return true;
                }
                if (aVar.f1505c) {
                    decoratedStart = this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition) + this.mOrientationHelper.getTotalSpaceChange();
                } else {
                    decoratedStart = this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition);
                }
                aVar.f1504b = decoratedStart;
                return true;
            }
            if (getChildCount() > 0) {
                if ((this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout) {
                    z = true;
                }
                aVar.f1505c = z;
            }
            aVar.b();
            return true;
        }
        aVar.f1505c = this.mShouldReverseLayout;
        if (this.mShouldReverseLayout) {
            aVar.f1504b = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
            return true;
        }
        aVar.f1504b = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
        return true;
    }

    private int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 > 0) {
            int i2 = -scrollBy(-endAfterPadding2, recycler, state);
            int i3 = i + i2;
            if (z && (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) > 0) {
                this.mOrientationHelper.offsetChildren(endAfterPadding);
                return i2 + endAfterPadding;
            }
            return i2;
        }
        return 0;
    }

    private int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 > 0) {
            int i2 = -scrollBy(startAfterPadding2, recycler, state);
            int i3 = i + i2;
            if (z && (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) > 0) {
                this.mOrientationHelper.offsetChildren(-startAfterPadding);
                return i2 - startAfterPadding;
            }
            return i2;
        }
        return 0;
    }

    private void updateLayoutStateToFillEnd(a aVar) {
        updateLayoutStateToFillEnd(aVar.f1503a, aVar.f1504b);
    }

    private void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.f1509c = this.mOrientationHelper.getEndAfterPadding() - i2;
        this.mLayoutState.e = this.mShouldReverseLayout ? -1 : 1;
        this.mLayoutState.f1510d = i;
        this.mLayoutState.f = 1;
        this.mLayoutState.f1508b = i2;
        this.mLayoutState.g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(a aVar) {
        updateLayoutStateToFillStart(aVar.f1503a, aVar.f1504b);
    }

    private void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.f1509c = i2 - this.mOrientationHelper.getStartAfterPadding();
        this.mLayoutState.f1510d = i;
        this.mLayoutState.e = this.mShouldReverseLayout ? 1 : -1;
        this.mLayoutState.f = -1;
        this.mLayoutState.f1508b = i2;
        this.mLayoutState.g = Integer.MIN_VALUE;
    }

    protected boolean isLayoutRTL() {
        if (getLayoutDirection() == 1) {
            return true;
        }
        return DEBUG;
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        }
    }

    b createLayoutState() {
        return new b();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        OrientationHelper orientationHelper = this.mOrientationHelper;
        View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return v.a(state, orientationHelper, viewFindFirstVisibleChildClosestToStart, findFirstVisibleChildClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        OrientationHelper orientationHelper = this.mOrientationHelper;
        View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return v.a(state, orientationHelper, viewFindFirstVisibleChildClosestToStart, findFirstVisibleChildClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollRange(RecyclerView.State state) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        OrientationHelper orientationHelper = this.mOrientationHelper;
        View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return v.b(state, orientationHelper, viewFindFirstVisibleChildClosestToStart, findFirstVisibleChildClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled);
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    private void updateLayoutState(int i, int i2, boolean z, RecyclerView.State state) {
        int startAfterPadding;
        this.mLayoutState.l = resolveIsInfinite();
        this.mLayoutState.h = getExtraLayoutSpace(state);
        this.mLayoutState.f = i;
        if (i == 1) {
            this.mLayoutState.h += this.mOrientationHelper.getEndPadding();
            View childClosestToEnd = getChildClosestToEnd();
            this.mLayoutState.e = this.mShouldReverseLayout ? -1 : 1;
            this.mLayoutState.f1510d = getPosition(childClosestToEnd) + this.mLayoutState.e;
            this.mLayoutState.f1508b = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.h += this.mOrientationHelper.getStartAfterPadding();
            this.mLayoutState.e = this.mShouldReverseLayout ? 1 : -1;
            this.mLayoutState.f1510d = getPosition(childClosestToStart) + this.mLayoutState.e;
            this.mLayoutState.f1508b = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        this.mLayoutState.f1509c = i2;
        if (z) {
            this.mLayoutState.f1509c -= startAfterPadding;
        }
        this.mLayoutState.g = startAfterPadding;
    }

    boolean resolveIsInfinite() {
        if (this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0) {
            return true;
        }
        return DEBUG;
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.State state, b bVar, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = bVar.f1510d;
        if (i >= 0 && i < state.getItemCount()) {
            layoutPrefetchRegistry.addPosition(i, Math.max(0, bVar.g));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void collectInitialPrefetchPositions(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i2;
        boolean z;
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            z = this.mPendingSavedState.mAnchorLayoutFromEnd;
            i2 = this.mPendingSavedState.mAnchorPosition;
        } else {
            resolveShouldLayoutReverse();
            boolean z2 = this.mShouldReverseLayout;
            if (this.mPendingScrollPosition == -1) {
                i2 = z2 ? i - 1 : 0;
                z = z2;
            } else {
                i2 = this.mPendingScrollPosition;
                z = z2;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i4++) {
            layoutPrefetchRegistry.addPosition(i2, 0);
            i2 += i3;
        }
    }

    public void setInitialPrefetchItemCount(int i) {
        this.mInitialPrefetchItemCount = i;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() != 0 && i != 0) {
            ensureLayoutState();
            updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, state);
            collectPrefetchPositionsForLayoutState(state, this.mLayoutState, layoutPrefetchRegistry);
        }
    }

    int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        this.mLayoutState.f1507a = true;
        ensureLayoutState();
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        updateLayoutState(i2, iAbs, true, state);
        int iFill = this.mLayoutState.g + fill(recycler, this.mLayoutState, state, DEBUG);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i = i2 * iFill;
        }
        this.mOrientationHelper.offsetChildren(-i);
        this.mLayoutState.j = i;
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    removeAndRecycleViewAt(i3, recycler);
                }
                return;
            }
            while (i > i2) {
                removeAndRecycleViewAt(i, recycler);
                i--;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int i) {
        if (i >= 0) {
            int childCount = getChildCount();
            if (this.mShouldReverseLayout) {
                for (int i2 = childCount - 1; i2 >= 0; i2--) {
                    View childAt = getChildAt(i2);
                    if (this.mOrientationHelper.getDecoratedEnd(childAt) > i || this.mOrientationHelper.getTransformedEndWithDecoration(childAt) > i) {
                        recycleChildren(recycler, childCount - 1, i2);
                        return;
                    }
                }
                return;
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (this.mOrientationHelper.getDecoratedEnd(childAt2) > i || this.mOrientationHelper.getTransformedEndWithDecoration(childAt2) > i) {
                    recycleChildren(recycler, 0, i3);
                    return;
                }
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int i) {
        int childCount = getChildCount();
        if (i >= 0) {
            int end = this.mOrientationHelper.getEnd() - i;
            if (this.mShouldReverseLayout) {
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                        recycleChildren(recycler, 0, i2);
                        return;
                    }
                }
                return;
            }
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt2 = getChildAt(i3);
                if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                    recycleChildren(recycler, childCount - 1, i3);
                    return;
                }
            }
        }
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, b bVar) {
        if (bVar.f1507a && !bVar.l) {
            if (bVar.f == -1) {
                recycleViewsFromEnd(recycler, bVar.g);
            } else {
                recycleViewsFromStart(recycler, bVar.g);
            }
        }
    }

    int fill(RecyclerView.Recycler recycler, b bVar, RecyclerView.State state, boolean z) {
        int i = bVar.f1509c;
        if (bVar.g != Integer.MIN_VALUE) {
            if (bVar.f1509c < 0) {
                bVar.g += bVar.f1509c;
            }
            recycleByLayoutState(recycler, bVar);
        }
        int i2 = bVar.f1509c + bVar.h;
        LayoutChunkResult layoutChunkResult = this.mLayoutChunkResult;
        while (true) {
            if ((!bVar.l && i2 <= 0) || !bVar.a(state)) {
                break;
            }
            layoutChunkResult.resetInternal();
            layoutChunk(recycler, state, bVar, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                bVar.f1508b += layoutChunkResult.mConsumed * bVar.f;
                if (!layoutChunkResult.mIgnoreConsumed || this.mLayoutState.k != null || !state.isPreLayout()) {
                    bVar.f1509c -= layoutChunkResult.mConsumed;
                    i2 -= layoutChunkResult.mConsumed;
                }
                if (bVar.g != Integer.MIN_VALUE) {
                    bVar.g += layoutChunkResult.mConsumed;
                    if (bVar.f1509c < 0) {
                        bVar.g += bVar.f1509c;
                    }
                    recycleByLayoutState(recycler, bVar);
                }
                if (z && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - bVar.f1509c;
    }

    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, b bVar, LayoutChunkResult layoutChunkResult) {
        int paddingTop;
        int decoratedMeasurementInOther;
        int paddingLeft;
        int i;
        int decoratedMeasurementInOther2;
        View viewA = bVar.a(recycler);
        if (viewA == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewA.getLayoutParams();
        if (bVar.k == null) {
            if (this.mShouldReverseLayout == (bVar.f == -1)) {
                addView(viewA);
            } else {
                addView(viewA, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (bVar.f == -1)) {
                addDisappearingView(viewA);
            } else {
                addDisappearingView(viewA, 0);
            }
        }
        measureChildWithMargins(viewA, 0, 0);
        layoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(viewA);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther2 = getWidth() - getPaddingRight();
                paddingLeft = decoratedMeasurementInOther2 - this.mOrientationHelper.getDecoratedMeasurementInOther(viewA);
            } else {
                paddingLeft = getPaddingLeft();
                decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(viewA) + paddingLeft;
            }
            if (bVar.f == -1) {
                decoratedMeasurementInOther = bVar.f1508b;
                paddingTop = bVar.f1508b - layoutChunkResult.mConsumed;
                i = decoratedMeasurementInOther2;
            } else {
                paddingTop = bVar.f1508b;
                decoratedMeasurementInOther = layoutChunkResult.mConsumed + bVar.f1508b;
                i = decoratedMeasurementInOther2;
            }
        } else {
            paddingTop = getPaddingTop();
            decoratedMeasurementInOther = paddingTop + this.mOrientationHelper.getDecoratedMeasurementInOther(viewA);
            if (bVar.f == -1) {
                int i2 = bVar.f1508b;
                paddingLeft = bVar.f1508b - layoutChunkResult.mConsumed;
                i = i2;
            } else {
                paddingLeft = bVar.f1508b;
                i = bVar.f1508b + layoutChunkResult.mConsumed;
            }
        }
        layoutDecoratedWithMargins(viewA, paddingLeft, paddingTop, i, decoratedMeasurementInOther);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = viewA.hasFocusable();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    boolean shouldMeasureTwice() {
        if (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) {
            return DEBUG;
        }
        return true;
    }

    int convertFocusDirectionToLayoutDirection(int i) {
        switch (i) {
            case 1:
                return (this.mOrientation == 1 || !isLayoutRTL()) ? -1 : 1;
            case 2:
                return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
            case 17:
                return this.mOrientation != 0 ? Integer.MIN_VALUE : -1;
            case 33:
                return this.mOrientation != 1 ? Integer.MIN_VALUE : -1;
            case 66:
                return this.mOrientation != 0 ? Integer.MIN_VALUE : 1;
            case 130:
                return this.mOrientation == 1 ? 1 : Integer.MIN_VALUE;
            default:
                return Integer.MIN_VALUE;
        }
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z2) : findOneVisibleChild(0, getChildCount(), z, z2);
    }

    private View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z2) : findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    private View findReferenceChildClosestToEnd(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findFirstReferenceChild(recycler, state) : findLastReferenceChild(recycler, state);
    }

    private View findReferenceChildClosestToStart(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findLastReferenceChild(recycler, state) : findFirstReferenceChild(recycler, state);
    }

    private View findFirstReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findReferenceChild(recycler, state, 0, getChildCount(), state.getItemCount());
    }

    private View findLastReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findReferenceChild(recycler, state, getChildCount() - 1, -1, state.getItemCount());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
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
            if (r11 <= r10) goto L36
            r0 = 1
            r1 = r0
        L14:
            r4 = r2
        L15:
            if (r10 == r11) goto L4e
            android.view.View r3 = r7.getChildAt(r10)
            int r0 = r7.getPosition(r3)
            if (r0 < 0) goto L54
            if (r0 >= r12) goto L54
            android.view.ViewGroup$LayoutParams r0 = r3.getLayoutParams()
            android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
            boolean r0 = r0.isItemRemoved()
            if (r0 == 0) goto L39
            if (r4 != 0) goto L54
            r0 = r2
        L32:
            int r10 = r10 + r1
            r2 = r0
            r4 = r3
            goto L15
        L36:
            r0 = -1
            r1 = r0
            goto L14
        L39:
            android.support.v7.widget.OrientationHelper r0 = r7.mOrientationHelper
            int r0 = r0.getDecoratedStart(r3)
            if (r0 >= r6) goto L49
            android.support.v7.widget.OrientationHelper r0 = r7.mOrientationHelper
            int r0 = r0.getDecoratedEnd(r3)
            if (r0 >= r5) goto L51
        L49:
            if (r2 != 0) goto L54
            r0 = r3
            r3 = r4
            goto L32
        L4e:
            if (r2 == 0) goto L52
        L50:
            r3 = r2
        L51:
            return r3
        L52:
            r2 = r4
            goto L50
        L54:
            r0 = r2
            r3 = r4
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutManager.findReferenceChild(android.support.v7.widget.RecyclerView$Recycler, android.support.v7.widget.RecyclerView$State, int, int, int):android.view.View");
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild(recycler, state) : findLastPartiallyOrCompletelyInvisibleChild(recycler, state);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild(recycler, state) : findFirstPartiallyOrCompletelyInvisibleChild(recycler, state);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), DEBUG, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, DEBUG);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, DEBUG, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, DEBUG);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i, i2, i3, i4);
        }
        return this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        byte b2;
        int i3;
        int i4;
        ensureLayoutState();
        if (i2 > i) {
            b2 = 1;
        } else {
            b2 = i2 < i ? (byte) -1 : (byte) 0;
        }
        if (b2 == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < this.mOrientationHelper.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i, i2, i3, i4);
        }
        return this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int iConvertFocusDirectionToLayoutDirection;
        View viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() != 0 && (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) != Integer.MIN_VALUE) {
            ensureLayoutState();
            ensureLayoutState();
            updateLayoutState(iConvertFocusDirectionToLayoutDirection, (int) (MAX_SCROLL_FACTOR * this.mOrientationHelper.getTotalSpace()), DEBUG, state);
            this.mLayoutState.g = Integer.MIN_VALUE;
            this.mLayoutState.f1507a = DEBUG;
            fill(recycler, this.mLayoutState, state, true);
            if (iConvertFocusDirectionToLayoutDirection == -1) {
                viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart(recycler, state);
            } else {
                viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd(recycler, state);
            }
            if (iConvertFocusDirectionToLayoutDirection == -1) {
                childClosestToEnd = getChildClosestToStart();
            } else {
                childClosestToEnd = getChildClosestToEnd();
            }
            if (!childClosestToEnd.hasFocusable()) {
                return viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd;
            }
            if (viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd == null) {
                return null;
            }
            return childClosestToEnd;
        }
        return null;
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt));
        }
        Log.d(TAG, "==============");
    }

    void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() >= 1) {
            int position = getPosition(getChildAt(0));
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
            if (this.mShouldReverseLayout) {
                for (int i = 1; i < getChildCount(); i++) {
                    View childAt = getChildAt(i);
                    int position2 = getPosition(childAt);
                    int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                    if (position2 < position) {
                        logChildren();
                        throw new RuntimeException("detected invalid position. loc invalid? " + (decoratedStart2 < decoratedStart));
                    }
                    if (decoratedStart2 > decoratedStart) {
                        logChildren();
                        throw new RuntimeException("detected invalid location");
                    }
                }
                return;
            }
            for (int i2 = 1; i2 < getChildCount(); i2++) {
                View childAt2 = getChildAt(i2);
                int position3 = getPosition(childAt2);
                int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
                if (position3 < position) {
                    logChildren();
                    throw new RuntimeException("detected invalid position. loc invalid? " + (decoratedStart3 < decoratedStart));
                }
                if (decoratedStart3 < decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        if (this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd) {
            return true;
        }
        return DEBUG;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(View view, View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b2 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b2 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedStart(view2) + this.mOrientationHelper.getDecoratedMeasurement(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
                return;
            }
        }
        if (b2 == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    static class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1508b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1509c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1510d;
        int e;
        int f;
        int g;
        int j;
        boolean l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1507a = true;
        int h = 0;
        boolean i = LinearLayoutManager.DEBUG;
        List<RecyclerView.ViewHolder> k = null;

        b() {
        }

        boolean a(RecyclerView.State state) {
            if (this.f1510d < 0 || this.f1510d >= state.getItemCount()) {
                return LinearLayoutManager.DEBUG;
            }
            return true;
        }

        View a(RecyclerView.Recycler recycler) {
            if (this.k != null) {
                return b();
            }
            View viewForPosition = recycler.getViewForPosition(this.f1510d);
            this.f1510d += this.e;
            return viewForPosition;
        }

        private View b() {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                View view = this.k.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.f1510d == layoutParams.getViewLayoutPosition()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View viewB = b(view);
            if (viewB == null) {
                this.f1510d = -1;
            } else {
                this.f1510d = ((RecyclerView.LayoutParams) viewB.getLayoutParams()).getViewLayoutPosition();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public android.view.View b(android.view.View r8) {
            /*
                r7 = this;
                java.util.List<android.support.v7.widget.RecyclerView$ViewHolder> r0 = r7.k
                int r5 = r0.size()
                r2 = 0
                r1 = 2147483647(0x7fffffff, float:NaN)
                r0 = 0
                r4 = r0
            Lc:
                if (r4 >= r5) goto L47
                java.util.List<android.support.v7.widget.RecyclerView$ViewHolder> r0 = r7.k
                java.lang.Object r0 = r0.get(r4)
                android.support.v7.widget.RecyclerView$ViewHolder r0 = (android.support.v7.widget.RecyclerView.ViewHolder) r0
                android.view.View r3 = r0.itemView
                android.view.ViewGroup$LayoutParams r0 = r3.getLayoutParams()
                android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
                if (r3 == r8) goto L44
                boolean r6 = r0.isItemRemoved()
                if (r6 == 0) goto L2e
                r0 = r1
                r1 = r2
            L28:
                int r2 = r4 + 1
                r4 = r2
                r2 = r1
                r1 = r0
                goto Lc
            L2e:
                int r0 = r0.getViewLayoutPosition()
                int r6 = r7.f1510d
                int r0 = r0 - r6
                int r6 = r7.e
                int r0 = r0 * r6
                if (r0 >= 0) goto L3d
                r0 = r1
                r1 = r2
                goto L28
            L3d:
                if (r0 >= r1) goto L44
                if (r0 != 0) goto L42
            L41:
                return r3
            L42:
                r1 = r3
                goto L28
            L44:
                r0 = r1
                r1 = r2
                goto L28
            L47:
                r3 = r2
                goto L41
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutManager.b.b(android.view.View):android.view.View");
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.LinearLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() != 1 ? LinearLayoutManager.DEBUG : true;
        }

        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }

        boolean hasValidAnchor() {
            if (this.mAnchorPosition >= 0) {
                return true;
            }
            return LinearLayoutManager.DEBUG;
        }

        void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1505c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1506d;

        a() {
            a();
        }

        void a() {
            this.f1503a = -1;
            this.f1504b = Integer.MIN_VALUE;
            this.f1505c = LinearLayoutManager.DEBUG;
            this.f1506d = LinearLayoutManager.DEBUG;
        }

        void b() {
            int startAfterPadding;
            if (this.f1505c) {
                startAfterPadding = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding();
            } else {
                startAfterPadding = LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
            }
            this.f1504b = startAfterPadding;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f1503a + ", mCoordinate=" + this.f1504b + ", mLayoutFromEnd=" + this.f1505c + ", mValid=" + this.f1506d + '}';
        }

        boolean a(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (layoutParams.isItemRemoved() || layoutParams.getViewLayoutPosition() < 0 || layoutParams.getViewLayoutPosition() >= state.getItemCount()) {
                return LinearLayoutManager.DEBUG;
            }
            return true;
        }

        public void a(View view) {
            int totalSpaceChange = LinearLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                b(view);
                return;
            }
            this.f1503a = LinearLayoutManager.this.getPosition(view);
            if (this.f1505c) {
                int endAfterPadding = (LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(view);
                this.f1504b = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.f1504b - LinearLayoutManager.this.mOrientationHelper.getDecoratedMeasurement(view);
                    int startAfterPadding = LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
                    int iMin = decoratedMeasurement - (startAfterPadding + Math.min(LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding, 0));
                    if (iMin < 0) {
                        this.f1504b = Math.min(endAfterPadding, -iMin) + this.f1504b;
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(view);
            int startAfterPadding2 = decoratedStart - LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
            this.f1504b = decoratedStart;
            if (startAfterPadding2 > 0) {
                int endAfterPadding2 = (LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(view))) - (decoratedStart + LinearLayoutManager.this.mOrientationHelper.getDecoratedMeasurement(view));
                if (endAfterPadding2 < 0) {
                    this.f1504b -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        public void b(View view) {
            if (this.f1505c) {
                this.f1504b = LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(view) + LinearLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
            } else {
                this.f1504b = LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(view);
            }
            this.f1503a = LinearLayoutManager.this.getPosition(view);
        }
    }

    protected static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        protected LayoutChunkResult() {
        }

        void resetInternal() {
            this.mConsumed = 0;
            this.mFinished = LinearLayoutManager.DEBUG;
            this.mIgnoreConsumed = LinearLayoutManager.DEBUG;
            this.mFocusable = LinearLayoutManager.DEBUG;
        }
    }
}
