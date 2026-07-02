package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.a.b;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "StaggeredGridLManager";
    public static final int VERTICAL = 1;
    private int mFullSizeSpec;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;
    private final r mLayoutState;
    private int mOrientation;
    private SavedState mPendingSavedState;
    private int[] mPrefetchDistances;
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;
    OrientationHelper mSecondaryOrientation;
    private int mSizePerSpan;
    b[] mSpans;
    private int mSpanCount = -1;
    boolean mReverseLayout = DEBUG;
    boolean mShouldReverseLayout = DEBUG;
    int mPendingScrollPosition = -1;
    int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    LazySpanLookup mLazySpanLookup = new LazySpanLookup();
    private int mGapStrategy = 2;
    private final Rect mTmpRect = new Rect();
    private final a mAnchorInfo = new a();
    private boolean mLaidOutInvalidFullSpan = DEBUG;
    private boolean mSmoothScrollbarEnabled = true;
    private final Runnable mCheckForGapsRunnable = new Runnable() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.checkForGaps();
        }
    };

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties properties = getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        setAutoMeasureEnabled(this.mGapStrategy != 0);
        this.mLayoutState = new r();
        createOrientationHelpers();
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.mOrientation = i2;
        setSpanCount(i);
        setAutoMeasureEnabled(this.mGapStrategy != 0);
        this.mLayoutState = new r();
        createOrientationHelpers();
    }

    private void createOrientationHelpers() {
        this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
    }

    boolean checkForGaps() {
        int firstChildPosition;
        int lastChildPosition;
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return DEBUG;
        }
        if (this.mShouldReverseLayout) {
            firstChildPosition = getLastChildPosition();
            lastChildPosition = getFirstChildPosition();
        } else {
            firstChildPosition = getFirstChildPosition();
            lastChildPosition = getLastChildPosition();
        }
        if (firstChildPosition == 0 && hasGapsToFix() != null) {
            this.mLazySpanLookup.a();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return DEBUG;
        }
        int i = this.mShouldReverseLayout ? -1 : 1;
        LazySpanLookup.FullSpanItem fullSpanItemA = this.mLazySpanLookup.a(firstChildPosition, lastChildPosition + 1, i, true);
        if (fullSpanItemA == null) {
            this.mLaidOutInvalidFullSpan = DEBUG;
            this.mLazySpanLookup.a(lastChildPosition + 1);
            return DEBUG;
        }
        LazySpanLookup.FullSpanItem fullSpanItemA2 = this.mLazySpanLookup.a(firstChildPosition, fullSpanItemA.f1576a, i * (-1), true);
        if (fullSpanItemA2 == null) {
            this.mLazySpanLookup.a(fullSpanItemA.f1576a);
        } else {
            this.mLazySpanLookup.a(fullSpanItemA2.f1576a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            checkForGaps();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].e();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View hasGapsToFix() {
        /*
            r12 = this;
            r0 = -1
            r5 = 0
            r3 = 1
            int r1 = r12.getChildCount()
            int r1 = r1 + (-1)
            java.util.BitSet r9 = new java.util.BitSet
            int r2 = r12.mSpanCount
            r9.<init>(r2)
            int r2 = r12.mSpanCount
            r9.set(r5, r2, r3)
            int r2 = r12.mOrientation
            if (r2 != r3) goto L49
            boolean r2 = r12.isLayoutRTL()
            if (r2 == 0) goto L49
            r2 = r3
        L20:
            boolean r4 = r12.mShouldReverseLayout
            if (r4 == 0) goto L4b
            r8 = r0
        L25:
            if (r1 >= r8) goto L50
            r4 = r3
        L28:
            r7 = r1
        L29:
            if (r7 == r8) goto Lb5
            android.view.View r6 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r0 = r6.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$LayoutParams r0 = (android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams) r0
            android.support.v7.widget.StaggeredGridLayoutManager$b r1 = r0.mSpan
            int r1 = r1.e
            boolean r1 = r9.get(r1)
            if (r1 == 0) goto L59
            android.support.v7.widget.StaggeredGridLayoutManager$b r1 = r0.mSpan
            boolean r1 = r12.checkSpanForGap(r1)
            if (r1 == 0) goto L52
            r0 = r6
        L48:
            return r0
        L49:
            r2 = r0
            goto L20
        L4b:
            int r1 = r1 + 1
            r8 = r1
            r1 = r5
            goto L25
        L50:
            r4 = r0
            goto L28
        L52:
            android.support.v7.widget.StaggeredGridLayoutManager$b r1 = r0.mSpan
            int r1 = r1.e
            r9.clear(r1)
        L59:
            boolean r1 = r0.mFullSpan
            if (r1 == 0) goto L61
        L5d:
            int r0 = r7 + r4
            r7 = r0
            goto L29
        L61:
            int r1 = r7 + r4
            if (r1 == r8) goto L5d
            int r1 = r7 + r4
            android.view.View r10 = r12.getChildAt(r1)
            boolean r1 = r12.mShouldReverseLayout
            if (r1 == 0) goto L9d
            android.support.v7.widget.OrientationHelper r1 = r12.mPrimaryOrientation
            int r1 = r1.getDecoratedEnd(r6)
            android.support.v7.widget.OrientationHelper r11 = r12.mPrimaryOrientation
            int r11 = r11.getDecoratedEnd(r10)
            if (r1 >= r11) goto L7f
            r0 = r6
            goto L48
        L7f:
            if (r1 != r11) goto Lb7
            r1 = r3
        L82:
            if (r1 == 0) goto L5d
            android.view.ViewGroup$LayoutParams r1 = r10.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$LayoutParams r1 = (android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams) r1
            android.support.v7.widget.StaggeredGridLayoutManager$b r0 = r0.mSpan
            int r0 = r0.e
            android.support.v7.widget.StaggeredGridLayoutManager$b r1 = r1.mSpan
            int r1 = r1.e
            int r0 = r0 - r1
            if (r0 >= 0) goto Lb1
            r1 = r3
        L96:
            if (r2 >= 0) goto Lb3
            r0 = r3
        L99:
            if (r1 == r0) goto L5d
            r0 = r6
            goto L48
        L9d:
            android.support.v7.widget.OrientationHelper r1 = r12.mPrimaryOrientation
            int r1 = r1.getDecoratedStart(r6)
            android.support.v7.widget.OrientationHelper r11 = r12.mPrimaryOrientation
            int r11 = r11.getDecoratedStart(r10)
            if (r1 <= r11) goto Lad
            r0 = r6
            goto L48
        Lad:
            if (r1 != r11) goto Lb7
            r1 = r3
            goto L82
        Lb1:
            r1 = r5
            goto L96
        Lb3:
            r0 = r5
            goto L99
        Lb5:
            r0 = 0
            goto L48
        Lb7:
            r1 = r5
            goto L82
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.hasGapsToFix():android.view.View");
    }

    private boolean checkSpanForGap(b bVar) {
        if (this.mShouldReverseLayout) {
            if (bVar.d() < this.mPrimaryOrientation.getEndAfterPadding()) {
                if (bVar.c(bVar.f1584a.get(bVar.f1584a.size() - 1)).mFullSpan) {
                    return DEBUG;
                }
                return true;
            }
        } else if (bVar.b() > this.mPrimaryOrientation.getStartAfterPadding()) {
            return bVar.c(bVar.f1584a.get(0)).mFullSpan ? false : true;
        }
        return DEBUG;
    }

    public void setSpanCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.mSpanCount) {
            invalidateSpanAssignments();
            this.mSpanCount = i;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new b[this.mSpanCount];
            for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                this.mSpans[i2] = new b(i2);
            }
            requestLayout();
        }
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation) {
            this.mOrientation = i;
            OrientationHelper orientationHelper = this.mPrimaryOrientation;
            this.mPrimaryOrientation = this.mSecondaryOrientation;
            this.mSecondaryOrientation = orientationHelper;
            requestLayout();
        }
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mPendingSavedState != null && this.mPendingSavedState.mReverseLayout != z) {
            this.mPendingSavedState.mReverseLayout = z;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    public void setGapStrategy(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.mGapStrategy) {
            if (i != 0 && i != 2) {
                throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
            }
            this.mGapStrategy = i;
            setAutoMeasureEnabled(this.mGapStrategy != 0 ? true : DEBUG);
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.a();
        requestLayout();
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout ? DEBUG : true;
        }
    }

    boolean isLayoutRTL() {
        if (getLayoutDirection() == 1) {
            return true;
        }
        return DEBUG;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            iChooseSize = chooseSize(i, paddingRight + (this.mSizePerSpan * this.mSpanCount), getMinimumWidth());
        } else {
            iChooseSize = chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            iChooseSize2 = chooseSize(i2, paddingTop + (this.mSizePerSpan * this.mSpanCount), getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        onLayoutChildren(recycler, state, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onLayoutChildren(android.support.v7.widget.RecyclerView.Recycler r9, android.support.v7.widget.RecyclerView.State r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.onLayoutChildren(android.support.v7.widget.RecyclerView$Recycler, android.support.v7.widget.RecyclerView$State, boolean):void");
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.a();
    }

    private void repositionToWrapContentIfNecessary() {
        float fMax;
        if (this.mSecondaryOrientation.getMode() != 1073741824) {
            float f = 0.0f;
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = getChildAt(i);
                float decoratedMeasurement = this.mSecondaryOrientation.getDecoratedMeasurement(childAt);
                if (decoratedMeasurement < f) {
                    fMax = f;
                } else {
                    fMax = Math.max(f, ((LayoutParams) childAt.getLayoutParams()).isFullSpan() ? (1.0f * decoratedMeasurement) / this.mSpanCount : decoratedMeasurement);
                }
                i++;
                f = fMax;
            }
            int i2 = this.mSizePerSpan;
            int iRound = Math.round(this.mSpanCount * f);
            if (this.mSecondaryOrientation.getMode() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.mSecondaryOrientation.getTotalSpace());
            }
            updateMeasureSpecs(iRound);
            if (this.mSizePerSpan != i2) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt2 = getChildAt(i3);
                    LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
                    if (!layoutParams.mFullSpan) {
                        if (isLayoutRTL() && this.mOrientation == 1) {
                            childAt2.offsetLeftAndRight(((-((this.mSpanCount - 1) - layoutParams.mSpan.e)) * this.mSizePerSpan) - ((-((this.mSpanCount - 1) - layoutParams.mSpan.e)) * i2));
                        } else {
                            int i4 = layoutParams.mSpan.e * this.mSizePerSpan;
                            int i5 = layoutParams.mSpan.e * i2;
                            if (this.mOrientation == 1) {
                                childAt2.offsetLeftAndRight(i4 - i5);
                            } else {
                                childAt2.offsetTopAndBottom(i4 - i5);
                            }
                        }
                    }
                }
            }
        }
    }

    private void applyPendingSavedState(a aVar) {
        if (this.mPendingSavedState.mSpanOffsetsSize > 0) {
            if (this.mPendingSavedState.mSpanOffsetsSize == this.mSpanCount) {
                for (int i = 0; i < this.mSpanCount; i++) {
                    this.mSpans[i].e();
                    int startAfterPadding = this.mPendingSavedState.mSpanOffsets[i];
                    if (startAfterPadding != Integer.MIN_VALUE) {
                        if (this.mPendingSavedState.mAnchorLayoutFromEnd) {
                            startAfterPadding += this.mPrimaryOrientation.getEndAfterPadding();
                        } else {
                            startAfterPadding += this.mPrimaryOrientation.getStartAfterPadding();
                        }
                    }
                    this.mSpans[i].c(startAfterPadding);
                }
            } else {
                this.mPendingSavedState.invalidateSpanInfo();
                this.mPendingSavedState.mAnchorPosition = this.mPendingSavedState.mVisibleAnchorPosition;
            }
        }
        this.mLastLayoutRTL = this.mPendingSavedState.mLastLayoutRTL;
        setReverseLayout(this.mPendingSavedState.mReverseLayout);
        resolveShouldLayoutReverse();
        if (this.mPendingSavedState.mAnchorPosition != -1) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            aVar.f1582c = this.mPendingSavedState.mAnchorLayoutFromEnd;
        } else {
            aVar.f1582c = this.mShouldReverseLayout;
        }
        if (this.mPendingSavedState.mSpanLookupSize > 1) {
            this.mLazySpanLookup.f1574a = this.mPendingSavedState.mSpanLookup;
            this.mLazySpanLookup.f1575b = this.mPendingSavedState.mFullSpanItems;
        }
    }

    void updateAnchorInfoForLayout(RecyclerView.State state, a aVar) {
        if (!updateAnchorFromPendingData(state, aVar) && !updateAnchorFromChildren(state, aVar)) {
            aVar.b();
            aVar.f1580a = 0;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.State state, a aVar) {
        int iFindFirstReferenceChildPosition;
        if (this.mLastLayoutFromEnd) {
            iFindFirstReferenceChildPosition = findLastReferenceChildPosition(state.getItemCount());
        } else {
            iFindFirstReferenceChildPosition = findFirstReferenceChildPosition(state.getItemCount());
        }
        aVar.f1580a = iFindFirstReferenceChildPosition;
        aVar.f1581b = Integer.MIN_VALUE;
        return true;
    }

    boolean updateAnchorFromPendingData(RecyclerView.State state, a aVar) {
        int startAfterPadding;
        boolean z = DEBUG;
        if (state.isPreLayout() || this.mPendingScrollPosition == -1) {
            return DEBUG;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return DEBUG;
        }
        if (this.mPendingSavedState == null || this.mPendingSavedState.mAnchorPosition == -1 || this.mPendingSavedState.mSpanOffsetsSize < 1) {
            View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (viewFindViewByPosition != null) {
                aVar.f1580a = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    if (aVar.f1582c) {
                        aVar.f1581b = (this.mPrimaryOrientation.getEndAfterPadding() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedEnd(viewFindViewByPosition);
                        return true;
                    }
                    aVar.f1581b = (this.mPrimaryOrientation.getStartAfterPadding() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedStart(viewFindViewByPosition);
                    return true;
                }
                if (this.mPrimaryOrientation.getDecoratedMeasurement(viewFindViewByPosition) > this.mPrimaryOrientation.getTotalSpace()) {
                    if (aVar.f1582c) {
                        startAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
                    } else {
                        startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
                    }
                    aVar.f1581b = startAfterPadding;
                    return true;
                }
                int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(viewFindViewByPosition) - this.mPrimaryOrientation.getStartAfterPadding();
                if (decoratedStart < 0) {
                    aVar.f1581b = -decoratedStart;
                    return true;
                }
                int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd(viewFindViewByPosition);
                if (endAfterPadding < 0) {
                    aVar.f1581b = endAfterPadding;
                    return true;
                }
                aVar.f1581b = Integer.MIN_VALUE;
                return true;
            }
            aVar.f1580a = this.mPendingScrollPosition;
            if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                if (calculateScrollDirectionForPosition(aVar.f1580a) == 1) {
                    z = true;
                }
                aVar.f1582c = z;
                aVar.b();
            } else {
                aVar.a(this.mPendingScrollPositionOffset);
            }
            aVar.f1583d = true;
            return true;
        }
        aVar.f1581b = Integer.MIN_VALUE;
        aVar.f1580a = this.mPendingScrollPosition;
        return true;
    }

    void updateMeasureSpecs(int i) {
        this.mSizePerSpan = i / this.mSpanCount;
        this.mFullSizeSpec = View.MeasureSpec.makeMeasureSpec(i, this.mSecondaryOrientation.getMode());
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        if (this.mPendingSavedState == null) {
            return true;
        }
        return DEBUG;
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].j();
        }
        return iArr;
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].l();
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].m();
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].o();
        }
        return iArr;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return v.a(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(this.mSmoothScrollbarEnabled ? false : true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return v.a(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(this.mSmoothScrollbarEnabled ? false : true), this, this.mSmoothScrollbarEnabled);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return v.b(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(this.mSmoothScrollbarEnabled ? false : true), this, this.mSmoothScrollbarEnabled);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    private void measureChildWithDecorationsAndMargin(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.mFullSpan) {
            if (this.mOrientation == 1) {
                measureChildWithDecorationsAndMargin(view, this.mFullSizeSpec, getChildMeasureSpec(getHeight(), getHeightMode(), 0, layoutParams.height, true), z);
                return;
            } else {
                measureChildWithDecorationsAndMargin(view, getChildMeasureSpec(getWidth(), getWidthMode(), 0, layoutParams.width, true), this.mFullSizeSpec, z);
                return;
            }
        }
        if (this.mOrientation == 1) {
            measureChildWithDecorationsAndMargin(view, getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, layoutParams.width, DEBUG), getChildMeasureSpec(getHeight(), getHeightMode(), 0, layoutParams.height, true), z);
        } else {
            measureChildWithDecorationsAndMargin(view, getChildMeasureSpec(getWidth(), getWidthMode(), 0, layoutParams.width, true), getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, layoutParams.height, DEBUG), z);
        }
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        boolean zShouldMeasureChild;
        calculateItemDecorationsForChild(view, this.mTmpRect);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iUpdateSpecWithExtra = updateSpecWithExtra(i, layoutParams.leftMargin + this.mTmpRect.left, layoutParams.rightMargin + this.mTmpRect.right);
        int iUpdateSpecWithExtra2 = updateSpecWithExtra(i2, layoutParams.topMargin + this.mTmpRect.top, layoutParams.bottomMargin + this.mTmpRect.bottom);
        if (z) {
            zShouldMeasureChild = shouldReMeasureChild(view, iUpdateSpecWithExtra, iUpdateSpecWithExtra2, layoutParams);
        } else {
            zShouldMeasureChild = shouldMeasureChild(view, iUpdateSpecWithExtra, iUpdateSpecWithExtra2, layoutParams);
        }
        if (zShouldMeasureChild) {
            view.measure(iUpdateSpecWithExtra, iUpdateSpecWithExtra2);
        }
    }

    private int updateSpecWithExtra(int i, int i2, int i3) {
        if (i2 != 0 || i3 != 0) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
            }
            return i;
        }
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int iA;
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.mReverseLayout;
        savedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        savedState.mLastLayoutRTL = this.mLastLayoutRTL;
        if (this.mLazySpanLookup != null && this.mLazySpanLookup.f1574a != null) {
            savedState.mSpanLookup = this.mLazySpanLookup.f1574a;
            savedState.mSpanLookupSize = savedState.mSpanLookup.length;
            savedState.mFullSpanItems = this.mLazySpanLookup.f1575b;
        } else {
            savedState.mSpanLookupSize = 0;
        }
        if (getChildCount() > 0) {
            savedState.mAnchorPosition = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
            savedState.mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
            savedState.mSpanOffsetsSize = this.mSpanCount;
            savedState.mSpanOffsets = new int[this.mSpanCount];
            for (int i = 0; i < this.mSpanCount; i++) {
                if (this.mLastLayoutFromEnd) {
                    iA = this.mSpans[i].b(Integer.MIN_VALUE);
                    if (iA != Integer.MIN_VALUE) {
                        iA -= this.mPrimaryOrientation.getEndAfterPadding();
                    }
                } else {
                    iA = this.mSpans[i].a(Integer.MIN_VALUE);
                    if (iA != Integer.MIN_VALUE) {
                        iA -= this.mPrimaryOrientation.getStartAfterPadding();
                    }
                }
                savedState.mSpanOffsets[i] = iA;
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
        }
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, android.support.v4.view.a.b bVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, bVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.mOrientation == 0) {
            bVar.b(b.C0028b.a(layoutParams2.getSpanIndex(), layoutParams2.mFullSpan ? this.mSpanCount : 1, -1, -1, layoutParams2.mFullSpan, DEBUG));
        } else {
            bVar.b(b.C0028b.a(-1, -1, layoutParams2.getSpanIndex(), layoutParams2.mFullSpan ? this.mSpanCount : 1, layoutParams2.mFullSpan, DEBUG));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewFindFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(DEBUG);
            View viewFindFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(DEBUG);
            if (viewFindFirstVisibleItemClosestToStart != null && viewFindFirstVisibleItemClosestToEnd != null) {
                int position = getPosition(viewFindFirstVisibleItemClosestToStart);
                int position2 = getPosition(viewFindFirstVisibleItemClosestToEnd);
                if (position < position2) {
                    accessibilityEvent.setFromIndex(position);
                    accessibilityEvent.setToIndex(position2);
                } else {
                    accessibilityEvent.setFromIndex(position2);
                    accessibilityEvent.setToIndex(position);
                }
            }
        }
    }

    int findFirstVisibleItemPositionInt() {
        View viewFindFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true) : findFirstVisibleItemClosestToStart(true);
        if (viewFindFirstVisibleItemClosestToEnd == null) {
            return -1;
        }
        return getPosition(viewFindFirstVisibleItemClosestToEnd);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mOrientation == 0 ? this.mSpanCount : super.getRowCountForAccessibility(recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mOrientation == 1 ? this.mSpanCount : super.getColumnCountForAccessibility(recycler, state);
    }

    View findFirstVisibleItemClosestToStart(boolean z) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart < startAfterPadding && z) {
                    if (view == null) {
                        view = childAt;
                    }
                } else {
                    return childAt;
                }
            }
        }
        return view;
    }

    View findFirstVisibleItemClosestToEnd(boolean z) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            int decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd > endAfterPadding && z) {
                    if (view == null) {
                        view = childAt;
                    }
                } else {
                    return childAt;
                }
            }
        }
        return view;
    }

    private void fixEndGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int maxEnd = getMaxEnd(Integer.MIN_VALUE);
        if (maxEnd != Integer.MIN_VALUE && (endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - maxEnd) > 0) {
            int i = endAfterPadding - (-scrollBy(-endAfterPadding, recycler, state));
            if (z && i > 0) {
                this.mPrimaryOrientation.offsetChildren(i);
            }
        }
    }

    private void fixStartGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int minStart = getMinStart(Integer.MAX_VALUE);
        if (minStart != Integer.MAX_VALUE && (startAfterPadding = minStart - this.mPrimaryOrientation.getStartAfterPadding()) > 0) {
            int iScrollBy = startAfterPadding - scrollBy(startAfterPadding, recycler, state);
            if (z && iScrollBy > 0) {
                this.mPrimaryOrientation.offsetChildren(-iScrollBy);
            }
        }
    }

    private void updateLayoutState(int i, RecyclerView.State state) {
        int totalSpace;
        int totalSpace2;
        int targetScrollPosition;
        boolean z = DEBUG;
        this.mLayoutState.f1711b = 0;
        this.mLayoutState.f1712c = i;
        if (!isSmoothScrolling() || (targetScrollPosition = state.getTargetScrollPosition()) == -1) {
            totalSpace = 0;
            totalSpace2 = 0;
        } else {
            if (this.mShouldReverseLayout == (targetScrollPosition < i)) {
                totalSpace = this.mPrimaryOrientation.getTotalSpace();
                totalSpace2 = 0;
            } else {
                totalSpace2 = this.mPrimaryOrientation.getTotalSpace();
                totalSpace = 0;
            }
        }
        if (getClipToPadding()) {
            this.mLayoutState.f = this.mPrimaryOrientation.getStartAfterPadding() - totalSpace2;
            this.mLayoutState.g = totalSpace + this.mPrimaryOrientation.getEndAfterPadding();
        } else {
            this.mLayoutState.g = totalSpace + this.mPrimaryOrientation.getEnd();
            this.mLayoutState.f = -totalSpace2;
        }
        this.mLayoutState.h = DEBUG;
        this.mLayoutState.f1710a = true;
        r rVar = this.mLayoutState;
        if (this.mPrimaryOrientation.getMode() == 0 && this.mPrimaryOrientation.getEnd() == 0) {
            z = true;
        }
        rVar.i = z;
    }

    private void setLayoutStateDirection(int i) {
        this.mLayoutState.e = i;
        this.mLayoutState.f1713d = this.mShouldReverseLayout != (i == -1 ? true : DEBUG) ? -1 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            this.mSpans[i2].d(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            this.mSpans[i2].d(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        handleUpdate(i, i2, 2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        handleUpdate(i, i2, 1);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.a();
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        handleUpdate(i, i2, 8);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        handleUpdate(i, i2, 4);
    }

    private void handleUpdate(int i, int i2, int i3) {
        int i4;
        int i5;
        int lastChildPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
        if (i3 == 8) {
            if (i < i2) {
                i4 = i2 + 1;
                i5 = i;
            } else {
                i4 = i + 1;
                i5 = i2;
            }
        } else {
            i4 = i + i2;
            i5 = i;
        }
        this.mLazySpanLookup.b(i5);
        switch (i3) {
            case 1:
                this.mLazySpanLookup.b(i, i2);
                break;
            case 2:
                this.mLazySpanLookup.a(i, i2);
                break;
            case 8:
                this.mLazySpanLookup.a(i, 1);
                this.mLazySpanLookup.b(i2, 1);
                break;
        }
        if (i4 > lastChildPosition) {
            if (i5 <= (this.mShouldReverseLayout ? getFirstChildPosition() : getLastChildPosition())) {
                requestLayout();
            }
        }
    }

    private int fill(RecyclerView.Recycler recycler, r rVar, RecyclerView.State state) {
        int i;
        int startAfterPadding;
        int maxEnd;
        b bVar;
        int decoratedMeasurement;
        int decoratedMeasurement2;
        int decoratedMeasurement3;
        int decoratedMeasurement4;
        boolean z;
        this.mRemainingSpans.set(0, this.mSpanCount, true);
        if (this.mLayoutState.i) {
            if (rVar.e == 1) {
                i = Integer.MAX_VALUE;
            } else {
                i = Integer.MIN_VALUE;
            }
        } else if (rVar.e == 1) {
            i = rVar.g + rVar.f1711b;
        } else {
            i = rVar.f - rVar.f1711b;
        }
        updateAllRemainingSpans(rVar.e, i);
        if (this.mShouldReverseLayout) {
            startAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        } else {
            startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        }
        boolean z2 = DEBUG;
        while (rVar.a(state) && (this.mLayoutState.i || !this.mRemainingSpans.isEmpty())) {
            View viewA = rVar.a(recycler);
            LayoutParams layoutParams = (LayoutParams) viewA.getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            int iC = this.mLazySpanLookup.c(viewLayoutPosition);
            boolean z3 = iC == -1;
            if (z3) {
                b nextSpan = layoutParams.mFullSpan ? this.mSpans[0] : getNextSpan(rVar);
                this.mLazySpanLookup.a(viewLayoutPosition, nextSpan);
                bVar = nextSpan;
            } else {
                bVar = this.mSpans[iC];
            }
            layoutParams.mSpan = bVar;
            if (rVar.e == 1) {
                addView(viewA);
            } else {
                addView(viewA, 0);
            }
            measureChildWithDecorationsAndMargin(viewA, layoutParams, DEBUG);
            if (rVar.e == 1) {
                int maxEnd2 = layoutParams.mFullSpan ? getMaxEnd(startAfterPadding) : bVar.b(startAfterPadding);
                decoratedMeasurement2 = maxEnd2 + this.mPrimaryOrientation.getDecoratedMeasurement(viewA);
                if (z3 && layoutParams.mFullSpan) {
                    LazySpanLookup.FullSpanItem fullSpanItemCreateFullSpanItemFromEnd = createFullSpanItemFromEnd(maxEnd2);
                    fullSpanItemCreateFullSpanItemFromEnd.f1577b = -1;
                    fullSpanItemCreateFullSpanItemFromEnd.f1576a = viewLayoutPosition;
                    this.mLazySpanLookup.a(fullSpanItemCreateFullSpanItemFromEnd);
                    decoratedMeasurement = maxEnd2;
                } else {
                    decoratedMeasurement = maxEnd2;
                }
            } else {
                int minStart = layoutParams.mFullSpan ? getMinStart(startAfterPadding) : bVar.a(startAfterPadding);
                decoratedMeasurement = minStart - this.mPrimaryOrientation.getDecoratedMeasurement(viewA);
                if (z3 && layoutParams.mFullSpan) {
                    LazySpanLookup.FullSpanItem fullSpanItemCreateFullSpanItemFromStart = createFullSpanItemFromStart(minStart);
                    fullSpanItemCreateFullSpanItemFromStart.f1577b = 1;
                    fullSpanItemCreateFullSpanItemFromStart.f1576a = viewLayoutPosition;
                    this.mLazySpanLookup.a(fullSpanItemCreateFullSpanItemFromStart);
                }
                decoratedMeasurement2 = minStart;
            }
            if (layoutParams.mFullSpan && rVar.f1713d == -1) {
                if (z3) {
                    this.mLaidOutInvalidFullSpan = true;
                } else {
                    if (rVar.e == 1) {
                        z = !areAllEndsEqual() ? true : DEBUG;
                    } else {
                        z = !areAllStartsEqual() ? true : DEBUG;
                    }
                    if (z) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.mLazySpanLookup.f(viewLayoutPosition);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f1579d = true;
                        }
                        this.mLaidOutInvalidFullSpan = true;
                    }
                }
            }
            attachViewToSpans(viewA, layoutParams, rVar);
            if (isLayoutRTL() && this.mOrientation == 1) {
                int endAfterPadding = layoutParams.mFullSpan ? this.mSecondaryOrientation.getEndAfterPadding() : this.mSecondaryOrientation.getEndAfterPadding() - (((this.mSpanCount - 1) - bVar.e) * this.mSizePerSpan);
                decoratedMeasurement4 = endAfterPadding - this.mSecondaryOrientation.getDecoratedMeasurement(viewA);
                decoratedMeasurement3 = endAfterPadding;
            } else {
                int startAfterPadding2 = layoutParams.mFullSpan ? this.mSecondaryOrientation.getStartAfterPadding() : (bVar.e * this.mSizePerSpan) + this.mSecondaryOrientation.getStartAfterPadding();
                decoratedMeasurement3 = startAfterPadding2 + this.mSecondaryOrientation.getDecoratedMeasurement(viewA);
                decoratedMeasurement4 = startAfterPadding2;
            }
            if (this.mOrientation == 1) {
                layoutDecoratedWithMargins(viewA, decoratedMeasurement4, decoratedMeasurement, decoratedMeasurement3, decoratedMeasurement2);
            } else {
                layoutDecoratedWithMargins(viewA, decoratedMeasurement, decoratedMeasurement4, decoratedMeasurement2, decoratedMeasurement3);
            }
            if (layoutParams.mFullSpan) {
                updateAllRemainingSpans(this.mLayoutState.e, i);
            } else {
                updateRemainingSpans(bVar, this.mLayoutState.e, i);
            }
            recycle(recycler, this.mLayoutState);
            if (this.mLayoutState.h && viewA.hasFocusable()) {
                if (layoutParams.mFullSpan) {
                    this.mRemainingSpans.clear();
                } else {
                    this.mRemainingSpans.set(bVar.e, DEBUG);
                }
            }
            z2 = true;
        }
        if (!z2) {
            recycle(recycler, this.mLayoutState);
        }
        if (this.mLayoutState.e == -1) {
            maxEnd = this.mPrimaryOrientation.getStartAfterPadding() - getMinStart(this.mPrimaryOrientation.getStartAfterPadding());
        } else {
            maxEnd = getMaxEnd(this.mPrimaryOrientation.getEndAfterPadding()) - this.mPrimaryOrientation.getEndAfterPadding();
        }
        if (maxEnd > 0) {
            return Math.min(rVar.f1711b, maxEnd);
        }
        return 0;
    }

    private LazySpanLookup.FullSpanItem createFullSpanItemFromEnd(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f1578c = new int[this.mSpanCount];
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            fullSpanItem.f1578c[i2] = i - this.mSpans[i2].b(i);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem createFullSpanItemFromStart(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f1578c = new int[this.mSpanCount];
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            fullSpanItem.f1578c[i2] = this.mSpans[i2].a(i) - i;
        }
        return fullSpanItem;
    }

    private void attachViewToSpans(View view, LayoutParams layoutParams, r rVar) {
        if (rVar.e == 1) {
            if (layoutParams.mFullSpan) {
                appendViewToAllSpans(view);
                return;
            } else {
                layoutParams.mSpan.b(view);
                return;
            }
        }
        if (layoutParams.mFullSpan) {
            prependViewToAllSpans(view);
        } else {
            layoutParams.mSpan.a(view);
        }
    }

    private void recycle(RecyclerView.Recycler recycler, r rVar) {
        int iMin;
        int iMin2;
        if (rVar.f1710a && !rVar.i) {
            if (rVar.f1711b == 0) {
                if (rVar.e == -1) {
                    recycleFromEnd(recycler, rVar.g);
                    return;
                } else {
                    recycleFromStart(recycler, rVar.f);
                    return;
                }
            }
            if (rVar.e == -1) {
                int maxStart = rVar.f - getMaxStart(rVar.f);
                if (maxStart < 0) {
                    iMin2 = rVar.g;
                } else {
                    iMin2 = rVar.g - Math.min(maxStart, rVar.f1711b);
                }
                recycleFromEnd(recycler, iMin2);
                return;
            }
            int minEnd = getMinEnd(rVar.g) - rVar.g;
            if (minEnd < 0) {
                iMin = rVar.f;
            } else {
                iMin = Math.min(minEnd, rVar.f1711b) + rVar.f;
            }
            recycleFromStart(recycler, iMin);
        }
    }

    private void appendViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].b(view);
        }
    }

    private void prependViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].a(view);
        }
    }

    private void updateAllRemainingSpans(int i, int i2) {
        for (int i3 = 0; i3 < this.mSpanCount; i3++) {
            if (!this.mSpans[i3].f1584a.isEmpty()) {
                updateRemainingSpans(this.mSpans[i3], i, i2);
            }
        }
    }

    private void updateRemainingSpans(b bVar, int i, int i2) {
        int i3 = bVar.i();
        if (i == -1) {
            if (i3 + bVar.b() <= i2) {
                this.mRemainingSpans.set(bVar.e, DEBUG);
            }
        } else if (bVar.d() - i3 >= i2) {
            this.mRemainingSpans.set(bVar.e, DEBUG);
        }
    }

    private int getMaxStart(int i) {
        int iA = this.mSpans[0].a(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int iA2 = this.mSpans[i2].a(i);
            if (iA2 > iA) {
                iA = iA2;
            }
        }
        return iA;
    }

    private int getMinStart(int i) {
        int iA = this.mSpans[0].a(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int iA2 = this.mSpans[i2].a(i);
            if (iA2 < iA) {
                iA = iA2;
            }
        }
        return iA;
    }

    boolean areAllEndsEqual() {
        int iB = this.mSpans[0].b(Integer.MIN_VALUE);
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpans[i].b(Integer.MIN_VALUE) != iB) {
                return DEBUG;
            }
        }
        return true;
    }

    boolean areAllStartsEqual() {
        int iA = this.mSpans[0].a(Integer.MIN_VALUE);
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpans[i].a(Integer.MIN_VALUE) != iA) {
                return DEBUG;
            }
        }
        return true;
    }

    private int getMaxEnd(int i) {
        int iB = this.mSpans[0].b(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int iB2 = this.mSpans[i2].b(i);
            if (iB2 > iB) {
                iB = iB2;
            }
        }
        return iB;
    }

    private int getMinEnd(int i) {
        int iB = this.mSpans[0].b(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int iB2 = this.mSpans[i2].b(i);
            if (iB2 < iB) {
                iB = iB2;
            }
        }
        return iB;
    }

    private void recycleFromStart(RecyclerView.Recycler recycler, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) <= i && this.mPrimaryOrientation.getTransformedEndWithDecoration(childAt) <= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                        if (this.mSpans[i2].f1584a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                        this.mSpans[i3].h();
                    }
                } else if (layoutParams.mSpan.f1584a.size() != 1) {
                    layoutParams.mSpan.h();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private void recycleFromEnd(RecyclerView.Recycler recycler, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.getDecoratedStart(childAt) >= i && this.mPrimaryOrientation.getTransformedStartWithDecoration(childAt) >= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                        if (this.mSpans[i2].f1584a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                        this.mSpans[i3].g();
                    }
                } else if (layoutParams.mSpan.f1584a.size() != 1) {
                    layoutParams.mSpan.g();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private boolean preferLastSpan(int i) {
        if (this.mOrientation == 0) {
            if ((i == -1) != this.mShouldReverseLayout) {
                return true;
            }
            return DEBUG;
        }
        if (((i == -1) == this.mShouldReverseLayout) != isLayoutRTL()) {
            return DEBUG;
        }
        return true;
    }

    private b getNextSpan(r rVar) {
        int i;
        int i2;
        b bVar;
        b bVar2;
        b bVar3 = null;
        int i3 = -1;
        if (preferLastSpan(rVar.e)) {
            i = this.mSpanCount - 1;
            i2 = -1;
        } else {
            i = 0;
            i2 = this.mSpanCount;
            i3 = 1;
        }
        if (rVar.e == 1) {
            int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
            int i4 = i;
            int i5 = Integer.MAX_VALUE;
            while (i4 != i2) {
                b bVar4 = this.mSpans[i4];
                int iB = bVar4.b(startAfterPadding);
                if (iB < i5) {
                    bVar2 = bVar4;
                } else {
                    iB = i5;
                    bVar2 = bVar3;
                }
                i4 += i3;
                bVar3 = bVar2;
                i5 = iB;
            }
        } else {
            int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
            int i6 = i;
            int i7 = Integer.MIN_VALUE;
            while (i6 != i2) {
                b bVar5 = this.mSpans[i6];
                int iA = bVar5.a(endAfterPadding);
                if (iA > i7) {
                    bVar = bVar5;
                } else {
                    iA = i7;
                    bVar = bVar3;
                }
                i6 += i3;
                bVar3 = bVar;
                i7 = iA;
            }
        }
        return bVar3;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (this.mOrientation == 1) {
            return true;
        }
        return DEBUG;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (this.mOrientation == 0) {
            return true;
        }
        return DEBUG;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(i, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(i, recycler, state);
    }

    private int calculateScrollDirectionForPosition(int i) {
        if (getChildCount() == 0) {
            return this.mShouldReverseLayout ? 1 : -1;
        }
        return (i < getFirstChildPosition() ? true : DEBUG) == this.mShouldReverseLayout ? 1 : -1;
    }

    @Override // android.support.v7.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        int iCalculateScrollDirectionForPosition = calculateScrollDirectionForPosition(i);
        PointF pointF = new PointF();
        if (iCalculateScrollDirectionForPosition == 0) {
            return null;
        }
        if (this.mOrientation == 0) {
            pointF.x = iCalculateScrollDirectionForPosition;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = iCalculateScrollDirectionForPosition;
        return pointF;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        if (this.mPendingSavedState != null && this.mPendingSavedState.mAnchorPosition != i) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int iB;
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() != 0 && i != 0) {
            prepareLayoutStateForDelta(i, state);
            if (this.mPrefetchDistances == null || this.mPrefetchDistances.length < this.mSpanCount) {
                this.mPrefetchDistances = new int[this.mSpanCount];
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.mSpanCount; i4++) {
                if (this.mLayoutState.f1713d == -1) {
                    iB = this.mLayoutState.f - this.mSpans[i4].a(this.mLayoutState.f);
                } else {
                    iB = this.mSpans[i4].b(this.mLayoutState.g) - this.mLayoutState.g;
                }
                if (iB >= 0) {
                    this.mPrefetchDistances[i3] = iB;
                    i3++;
                }
            }
            Arrays.sort(this.mPrefetchDistances, 0, i3);
            for (int i5 = 0; i5 < i3 && this.mLayoutState.a(state); i5++) {
                layoutPrefetchRegistry.addPosition(this.mLayoutState.f1712c, this.mPrefetchDistances[i5]);
                this.mLayoutState.f1712c += this.mLayoutState.f1713d;
            }
        }
    }

    void prepareLayoutStateForDelta(int i, RecyclerView.State state) {
        int i2;
        int firstChildPosition;
        if (i > 0) {
            firstChildPosition = getLastChildPosition();
            i2 = 1;
        } else {
            i2 = -1;
            firstChildPosition = getFirstChildPosition();
        }
        this.mLayoutState.f1710a = true;
        updateLayoutState(firstChildPosition, state);
        setLayoutStateDirection(i2);
        this.mLayoutState.f1712c = this.mLayoutState.f1713d + firstChildPosition;
        this.mLayoutState.f1711b = Math.abs(i);
    }

    int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        prepareLayoutStateForDelta(i, state);
        int iFill = fill(recycler, this.mLayoutState, state);
        if (this.mLayoutState.f1711b >= iFill) {
            i = i < 0 ? -iFill : iFill;
        }
        this.mPrimaryOrientation.offsetChildren(-i);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        this.mLayoutState.f1711b = 0;
        recycle(recycler, this.mLayoutState);
        return i;
    }

    int getLastChildPosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    private int findFirstReferenceChildPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    private int findLastReferenceChildPosition(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
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

    public int getOrientation() {
        return this.mOrientation;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View viewFindContainingItemView;
        int firstChildPosition;
        int iN;
        int iN2;
        int iN3;
        View viewA;
        if (getChildCount() != 0 && (viewFindContainingItemView = findContainingItemView(view)) != null) {
            resolveShouldLayoutReverse();
            int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i);
            if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
                return null;
            }
            LayoutParams layoutParams = (LayoutParams) viewFindContainingItemView.getLayoutParams();
            boolean z = layoutParams.mFullSpan;
            b bVar = layoutParams.mSpan;
            if (iConvertFocusDirectionToLayoutDirection == 1) {
                firstChildPosition = getLastChildPosition();
            } else {
                firstChildPosition = getFirstChildPosition();
            }
            updateLayoutState(firstChildPosition, state);
            setLayoutStateDirection(iConvertFocusDirectionToLayoutDirection);
            this.mLayoutState.f1712c = this.mLayoutState.f1713d + firstChildPosition;
            this.mLayoutState.f1711b = (int) (MAX_SCROLL_FACTOR * this.mPrimaryOrientation.getTotalSpace());
            this.mLayoutState.h = true;
            this.mLayoutState.f1710a = DEBUG;
            fill(recycler, this.mLayoutState, state);
            this.mLastLayoutFromEnd = this.mShouldReverseLayout;
            if (!z && (viewA = bVar.a(firstChildPosition, iConvertFocusDirectionToLayoutDirection)) != null && viewA != viewFindContainingItemView) {
                return viewA;
            }
            if (preferLastSpan(iConvertFocusDirectionToLayoutDirection)) {
                for (int i2 = this.mSpanCount - 1; i2 >= 0; i2--) {
                    View viewA2 = this.mSpans[i2].a(firstChildPosition, iConvertFocusDirectionToLayoutDirection);
                    if (viewA2 != null && viewA2 != viewFindContainingItemView) {
                        return viewA2;
                    }
                }
            } else {
                for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                    View viewA3 = this.mSpans[i3].a(firstChildPosition, iConvertFocusDirectionToLayoutDirection);
                    if (viewA3 != null && viewA3 != viewFindContainingItemView) {
                        return viewA3;
                    }
                }
            }
            boolean z2 = (!this.mReverseLayout) == (iConvertFocusDirectionToLayoutDirection == -1);
            if (!z) {
                if (z2) {
                    iN3 = bVar.k();
                } else {
                    iN3 = bVar.n();
                }
                View viewFindViewByPosition = findViewByPosition(iN3);
                if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                    return viewFindViewByPosition;
                }
            }
            if (preferLastSpan(iConvertFocusDirectionToLayoutDirection)) {
                for (int i4 = this.mSpanCount - 1; i4 >= 0; i4--) {
                    if (i4 != bVar.e) {
                        if (z2) {
                            iN2 = this.mSpans[i4].k();
                        } else {
                            iN2 = this.mSpans[i4].n();
                        }
                        View viewFindViewByPosition2 = findViewByPosition(iN2);
                        if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                            return viewFindViewByPosition2;
                        }
                    }
                }
            } else {
                for (int i5 = 0; i5 < this.mSpanCount; i5++) {
                    if (z2) {
                        iN = this.mSpans[i5].k();
                    } else {
                        iN = this.mSpans[i5].n();
                    }
                    View viewFindViewByPosition3 = findViewByPosition(iN);
                    if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                        return viewFindViewByPosition3;
                    }
                }
            }
            return null;
        }
        return null;
    }

    private int convertFocusDirectionToLayoutDirection(int i) {
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

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        boolean mFullSpan;
        b mSpan;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public void setFullSpan(boolean z) {
            this.mFullSpan = z;
        }

        public boolean isFullSpan() {
            return this.mFullSpan;
        }

        public final int getSpanIndex() {
            if (this.mSpan == null) {
                return -1;
            }
            return this.mSpan.e;
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList<View> f1584a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1585b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1586c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1587d = 0;
        final int e;

        b(int i) {
            this.e = i;
        }

        int a(int i) {
            if (this.f1585b != Integer.MIN_VALUE) {
                return this.f1585b;
            }
            if (this.f1584a.size() != 0) {
                a();
                return this.f1585b;
            }
            return i;
        }

        void a() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = this.f1584a.get(0);
            LayoutParams layoutParamsC = c(view);
            this.f1585b = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
            if (layoutParamsC.mFullSpan && (fullSpanItemF = StaggeredGridLayoutManager.this.mLazySpanLookup.f(layoutParamsC.getViewLayoutPosition())) != null && fullSpanItemF.f1577b == -1) {
                this.f1585b -= fullSpanItemF.a(this.e);
            }
        }

        int b() {
            if (this.f1585b != Integer.MIN_VALUE) {
                return this.f1585b;
            }
            a();
            return this.f1585b;
        }

        int b(int i) {
            if (this.f1586c != Integer.MIN_VALUE) {
                return this.f1586c;
            }
            if (this.f1584a.size() != 0) {
                c();
                return this.f1586c;
            }
            return i;
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = this.f1584a.get(this.f1584a.size() - 1);
            LayoutParams layoutParamsC = c(view);
            this.f1586c = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
            if (!layoutParamsC.mFullSpan || (fullSpanItemF = StaggeredGridLayoutManager.this.mLazySpanLookup.f(layoutParamsC.getViewLayoutPosition())) == null || fullSpanItemF.f1577b != 1) {
                return;
            }
            this.f1586c = fullSpanItemF.a(this.e) + this.f1586c;
        }

        int d() {
            if (this.f1586c != Integer.MIN_VALUE) {
                return this.f1586c;
            }
            c();
            return this.f1586c;
        }

        void a(View view) {
            LayoutParams layoutParamsC = c(view);
            layoutParamsC.mSpan = this;
            this.f1584a.add(0, view);
            this.f1585b = Integer.MIN_VALUE;
            if (this.f1584a.size() == 1) {
                this.f1586c = Integer.MIN_VALUE;
            }
            if (layoutParamsC.isItemRemoved() || layoutParamsC.isItemChanged()) {
                this.f1587d += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
        }

        void b(View view) {
            LayoutParams layoutParamsC = c(view);
            layoutParamsC.mSpan = this;
            this.f1584a.add(view);
            this.f1586c = Integer.MIN_VALUE;
            if (this.f1584a.size() == 1) {
                this.f1585b = Integer.MIN_VALUE;
            }
            if (layoutParamsC.isItemRemoved() || layoutParamsC.isItemChanged()) {
                this.f1587d += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
        }

        void a(boolean z, int i) {
            int iA;
            if (z) {
                iA = b(Integer.MIN_VALUE);
            } else {
                iA = a(Integer.MIN_VALUE);
            }
            e();
            if (iA != Integer.MIN_VALUE) {
                if (!z || iA >= StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding()) {
                    if (z || iA <= StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding()) {
                        if (i != Integer.MIN_VALUE) {
                            iA += i;
                        }
                        this.f1586c = iA;
                        this.f1585b = iA;
                    }
                }
            }
        }

        void e() {
            this.f1584a.clear();
            f();
            this.f1587d = 0;
        }

        void f() {
            this.f1585b = Integer.MIN_VALUE;
            this.f1586c = Integer.MIN_VALUE;
        }

        void c(int i) {
            this.f1585b = i;
            this.f1586c = i;
        }

        void g() {
            int size = this.f1584a.size();
            View viewRemove = this.f1584a.remove(size - 1);
            LayoutParams layoutParamsC = c(viewRemove);
            layoutParamsC.mSpan = null;
            if (layoutParamsC.isItemRemoved() || layoutParamsC.isItemChanged()) {
                this.f1587d -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(viewRemove);
            }
            if (size == 1) {
                this.f1585b = Integer.MIN_VALUE;
            }
            this.f1586c = Integer.MIN_VALUE;
        }

        void h() {
            View viewRemove = this.f1584a.remove(0);
            LayoutParams layoutParamsC = c(viewRemove);
            layoutParamsC.mSpan = null;
            if (this.f1584a.size() == 0) {
                this.f1586c = Integer.MIN_VALUE;
            }
            if (layoutParamsC.isItemRemoved() || layoutParamsC.isItemChanged()) {
                this.f1587d -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(viewRemove);
            }
            this.f1585b = Integer.MIN_VALUE;
        }

        public int i() {
            return this.f1587d;
        }

        LayoutParams c(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        void d(int i) {
            if (this.f1585b != Integer.MIN_VALUE) {
                this.f1585b += i;
            }
            if (this.f1586c != Integer.MIN_VALUE) {
                this.f1586c += i;
            }
        }

        public int j() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return a(this.f1584a.size() - 1, -1, StaggeredGridLayoutManager.DEBUG);
            }
            return a(0, this.f1584a.size(), StaggeredGridLayoutManager.DEBUG);
        }

        public int k() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? b(this.f1584a.size() - 1, -1, true) : b(0, this.f1584a.size(), true);
        }

        public int l() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? a(this.f1584a.size() - 1, -1, true) : a(0, this.f1584a.size(), true);
        }

        public int m() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return a(0, this.f1584a.size(), StaggeredGridLayoutManager.DEBUG);
            }
            return a(this.f1584a.size() - 1, -1, StaggeredGridLayoutManager.DEBUG);
        }

        public int n() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return b(0, this.f1584a.size(), true);
            }
            return b(this.f1584a.size() - 1, -1, true);
        }

        public int o() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return a(0, this.f1584a.size(), true);
            }
            return a(this.f1584a.size() - 1, -1, true);
        }

        int a(int i, int i2, boolean z, boolean z2, boolean z3) {
            boolean z4;
            boolean z5;
            int startAfterPadding = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
            int endAfterPadding = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f1584a.get(i);
                int decoratedStart = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
                int decoratedEnd = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
                if (z3) {
                    z4 = decoratedStart <= endAfterPadding;
                } else {
                    z4 = decoratedStart < endAfterPadding;
                }
                if (z3) {
                    z5 = decoratedEnd >= startAfterPadding ? true : StaggeredGridLayoutManager.DEBUG;
                } else {
                    z5 = decoratedEnd > startAfterPadding ? true : StaggeredGridLayoutManager.DEBUG;
                }
                if (z4 && z5) {
                    if (z && z2) {
                        if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        int a(int i, int i2, boolean z) {
            return a(i, i2, z, true, StaggeredGridLayoutManager.DEBUG);
        }

        int b(int i, int i2, boolean z) {
            return a(i, i2, StaggeredGridLayoutManager.DEBUG, StaggeredGridLayoutManager.DEBUG, z);
        }

        public View a(int i, int i2) {
            View view = null;
            if (i2 == -1) {
                int size = this.f1584a.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = this.f1584a.get(i3);
                    if ((StaggeredGridLayoutManager.this.mReverseLayout && StaggeredGridLayoutManager.this.getPosition(view2) <= i) || ((!StaggeredGridLayoutManager.this.mReverseLayout && StaggeredGridLayoutManager.this.getPosition(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
                return view;
            }
            int size2 = this.f1584a.size() - 1;
            while (size2 >= 0) {
                View view3 = this.f1584a.get(size2);
                if (StaggeredGridLayoutManager.this.mReverseLayout && StaggeredGridLayoutManager.this.getPosition(view3) >= i) {
                    break;
                }
                if (!StaggeredGridLayoutManager.this.mReverseLayout && StaggeredGridLayoutManager.this.getPosition(view3) <= i) {
                    return view;
                }
                if (!view3.hasFocusable()) {
                    break;
                }
                size2--;
                view = view3;
            }
            return view;
        }
    }

    static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f1574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<FullSpanItem> f1575b;

        LazySpanLookup() {
        }

        int a(int i) {
            if (this.f1575b != null) {
                for (int size = this.f1575b.size() - 1; size >= 0; size--) {
                    if (this.f1575b.get(size).f1576a >= i) {
                        this.f1575b.remove(size);
                    }
                }
            }
            return b(i);
        }

        int b(int i) {
            if (this.f1574a == null || i >= this.f1574a.length) {
                return -1;
            }
            int iG = g(i);
            if (iG == -1) {
                Arrays.fill(this.f1574a, i, this.f1574a.length, -1);
                return this.f1574a.length;
            }
            Arrays.fill(this.f1574a, i, iG + 1, -1);
            return iG + 1;
        }

        int c(int i) {
            if (this.f1574a == null || i >= this.f1574a.length) {
                return -1;
            }
            return this.f1574a[i];
        }

        void a(int i, b bVar) {
            e(i);
            this.f1574a[i] = bVar.e;
        }

        int d(int i) {
            int length = this.f1574a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        void e(int i) {
            if (this.f1574a == null) {
                this.f1574a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f1574a, -1);
            } else if (i >= this.f1574a.length) {
                int[] iArr = this.f1574a;
                this.f1574a = new int[d(i)];
                System.arraycopy(iArr, 0, this.f1574a, 0, iArr.length);
                Arrays.fill(this.f1574a, iArr.length, this.f1574a.length, -1);
            }
        }

        void a() {
            if (this.f1574a != null) {
                Arrays.fill(this.f1574a, -1);
            }
            this.f1575b = null;
        }

        void a(int i, int i2) {
            if (this.f1574a != null && i < this.f1574a.length) {
                e(i + i2);
                System.arraycopy(this.f1574a, i + i2, this.f1574a, i, (this.f1574a.length - i) - i2);
                Arrays.fill(this.f1574a, this.f1574a.length - i2, this.f1574a.length, -1);
                c(i, i2);
            }
        }

        private void c(int i, int i2) {
            if (this.f1575b != null) {
                int i3 = i + i2;
                for (int size = this.f1575b.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f1575b.get(size);
                    if (fullSpanItem.f1576a >= i) {
                        if (fullSpanItem.f1576a < i3) {
                            this.f1575b.remove(size);
                        } else {
                            fullSpanItem.f1576a -= i2;
                        }
                    }
                }
            }
        }

        void b(int i, int i2) {
            if (this.f1574a != null && i < this.f1574a.length) {
                e(i + i2);
                System.arraycopy(this.f1574a, i, this.f1574a, i + i2, (this.f1574a.length - i) - i2);
                Arrays.fill(this.f1574a, i, i + i2, -1);
                d(i, i2);
            }
        }

        private void d(int i, int i2) {
            if (this.f1575b != null) {
                for (int size = this.f1575b.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f1575b.get(size);
                    if (fullSpanItem.f1576a >= i) {
                        fullSpanItem.f1576a += i2;
                    }
                }
            }
        }

        private int g(int i) {
            if (this.f1575b == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i);
            if (fullSpanItemF != null) {
                this.f1575b.remove(fullSpanItemF);
            }
            int size = this.f1575b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.f1575b.get(i2).f1576a >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f1575b.get(i2);
            this.f1575b.remove(i2);
            return fullSpanItem.f1576a;
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f1575b == null) {
                this.f1575b = new ArrayList();
            }
            int size = this.f1575b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f1575b.get(i);
                if (fullSpanItem2.f1576a == fullSpanItem.f1576a) {
                    this.f1575b.remove(i);
                }
                if (fullSpanItem2.f1576a >= fullSpanItem.f1576a) {
                    this.f1575b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f1575b.add(fullSpanItem);
        }

        public FullSpanItem f(int i) {
            if (this.f1575b == null) {
                return null;
            }
            for (int size = this.f1575b.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f1575b.get(size);
                if (fullSpanItem.f1576a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem a(int i, int i2, int i3, boolean z) {
            if (this.f1575b == null) {
                return null;
            }
            int size = this.f1575b.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f1575b.get(i4);
                if (fullSpanItem.f1576a >= i2) {
                    return null;
                }
                if (fullSpanItem.f1576a >= i) {
                    if (i3 == 0 || fullSpanItem.f1577b == i3) {
                        return fullSpanItem;
                    }
                    if (z && fullSpanItem.f1579d) {
                        return fullSpanItem;
                    }
                }
            }
            return null;
        }

        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f1576a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f1577b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int[] f1578c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            boolean f1579d;

            FullSpanItem(Parcel parcel) {
                this.f1576a = parcel.readInt();
                this.f1577b = parcel.readInt();
                this.f1579d = parcel.readInt() != 1 ? StaggeredGridLayoutManager.DEBUG : true;
                int i = parcel.readInt();
                if (i > 0) {
                    this.f1578c = new int[i];
                    parcel.readIntArray(this.f1578c);
                }
            }

            FullSpanItem() {
            }

            int a(int i) {
                if (this.f1578c == null) {
                    return 0;
                }
                return this.f1578c[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f1576a);
                parcel.writeInt(this.f1577b);
                parcel.writeInt(this.f1579d ? 1 : 0);
                if (this.f1578c != null && this.f1578c.length > 0) {
                    parcel.writeInt(this.f1578c.length);
                    parcel.writeIntArray(this.f1578c);
                } else {
                    parcel.writeInt(0);
                }
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f1576a + ", mGapDir=" + this.f1577b + ", mHasUnwantedGapAfter=" + this.f1579d + ", mGapPerSpan=" + Arrays.toString(this.f1578c) + '}';
            }
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.SavedState.1
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
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            this.mSpanOffsetsSize = parcel.readInt();
            if (this.mSpanOffsetsSize > 0) {
                this.mSpanOffsets = new int[this.mSpanOffsetsSize];
                parcel.readIntArray(this.mSpanOffsets);
            }
            this.mSpanLookupSize = parcel.readInt();
            if (this.mSpanLookupSize > 0) {
                this.mSpanLookup = new int[this.mSpanLookupSize];
                parcel.readIntArray(this.mSpanLookup);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }

        void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }
    }

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1582c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1583d;
        boolean e;
        int[] f;

        a() {
            a();
        }

        void a() {
            this.f1580a = -1;
            this.f1581b = Integer.MIN_VALUE;
            this.f1582c = StaggeredGridLayoutManager.DEBUG;
            this.f1583d = StaggeredGridLayoutManager.DEBUG;
            this.e = StaggeredGridLayoutManager.DEBUG;
            if (this.f != null) {
                Arrays.fill(this.f, -1);
            }
        }

        void a(b[] bVarArr) {
            int length = bVarArr.length;
            if (this.f == null || this.f.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.mSpans.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = bVarArr[i].a(Integer.MIN_VALUE);
            }
        }

        void b() {
            this.f1581b = this.f1582c ? StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() : StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
        }

        void a(int i) {
            if (this.f1582c) {
                this.f1581b = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() - i;
            } else {
                this.f1581b = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding() + i;
            }
        }
    }
}
