package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.LinearLayoutCompat, i, 0);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(a.j.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(a.j.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(a.j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(a.j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(a.j.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(a.j.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin + virtualChildAt2.getBottom();
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = layoutParams.rightMargin + virtualChildAt.getRight();
                } else {
                    left = (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                if (zIsLayoutRtl) {
                    right = getPaddingLeft();
                } else {
                    right = (getWidth() - getPaddingRight()) - this.mDividerWidth;
                }
            } else {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    right = (virtualChildAt2.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth;
                } else {
                    right = layoutParams2.rightMargin + virtualChildAt2.getRight();
                }
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int bottom;
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            switch (i) {
                case 16:
                    bottom = i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2);
                    break;
                case 80:
                    bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    break;
                default:
                    bottom = i2;
                    break;
            }
        } else {
            bottom = i2;
        }
        return ((LayoutParams) childAt.getLayoutParams()).topMargin + bottom + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        int iCombineMeasuredStates;
        boolean z;
        int i6;
        int i7;
        int i8;
        int childrenSkipCount;
        boolean z2;
        boolean z3;
        int iMax;
        int iMax2;
        boolean z4;
        int i9;
        int i10;
        int i11;
        this.mTotalLength = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        boolean z5 = true;
        float f2 = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z6 = false;
        boolean z7 = false;
        int i16 = this.mBaselineAlignedChildIndex;
        boolean z8 = this.mUseLargestChild;
        int iMax3 = 0;
        int childrenSkipCount2 = 0;
        while (childrenSkipCount2 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
                i10 = iMax3;
                z4 = z7;
                z3 = z5;
                i11 = i13;
                i9 = i12;
            } else if (virtualChildAt.getVisibility() == 8) {
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                i10 = iMax3;
                z4 = z7;
                z3 = z5;
                i11 = i13;
                i9 = i12;
            } else {
                if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f3 = f2 + layoutParams.weight;
                if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.weight > 0.0f) {
                    int i17 = this.mTotalLength;
                    this.mTotalLength = Math.max(i17, layoutParams.topMargin + i17 + layoutParams.bottomMargin);
                    z7 = true;
                } else {
                    int i18 = Integer.MIN_VALUE;
                    if (layoutParams.height == 0 && layoutParams.weight > 0.0f) {
                        i18 = 0;
                        layoutParams.height = -2;
                    }
                    int i19 = i18;
                    measureChildBeforeLayout(virtualChildAt, childrenSkipCount2, i, 0, i2, f3 == 0.0f ? this.mTotalLength : 0);
                    if (i19 != Integer.MIN_VALUE) {
                        layoutParams.height = i19;
                    }
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    int i20 = this.mTotalLength;
                    this.mTotalLength = Math.max(i20, i20 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt));
                    if (z8) {
                        iMax3 = Math.max(measuredHeight, iMax3);
                    }
                }
                if (i16 >= 0 && i16 == childrenSkipCount2 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (childrenSkipCount2 < i16 && layoutParams.weight > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                boolean z9 = false;
                if (mode == 1073741824 || layoutParams.width != -1) {
                    z2 = z6;
                } else {
                    z2 = true;
                    z9 = true;
                }
                int i21 = layoutParams.rightMargin + layoutParams.leftMargin;
                int measuredWidth = virtualChildAt.getMeasuredWidth() + i21;
                int iMax4 = Math.max(i12, measuredWidth);
                int iCombineMeasuredStates2 = View.combineMeasuredStates(i13, virtualChildAt.getMeasuredState());
                z3 = z5 && layoutParams.width == -1;
                if (layoutParams.weight > 0.0f) {
                    iMax2 = Math.max(i15, z9 ? i21 : measuredWidth);
                    iMax = i14;
                } else {
                    if (!z9) {
                        i21 = measuredWidth;
                    }
                    iMax = Math.max(i14, i21);
                    iMax2 = i15;
                }
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                z4 = z7;
                i15 = iMax2;
                i14 = iMax;
                i9 = iMax4;
                i10 = iMax3;
                i11 = iCombineMeasuredStates2;
                z6 = z2;
                f2 = f3;
            }
            childrenSkipCount2++;
            iMax3 = i10;
            z7 = z4;
            z5 = z3;
            i13 = i11;
            i12 = i9;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z8 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = 0;
            int i22 = 0;
            while (i22 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i22);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i22);
                    childrenSkipCount = i22;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt2, i22) + i22;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    int i23 = this.mTotalLength;
                    this.mTotalLength = Math.max(i23, layoutParams2.bottomMargin + i23 + iMax3 + layoutParams2.topMargin + getNextLocationOffset(virtualChildAt2));
                    childrenSkipCount = i22;
                }
                i22 = childrenSkipCount + 1;
            }
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        int i24 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z7 || (i24 != 0 && f2 > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f2 = this.mWeightSum;
            }
            this.mTotalLength = 0;
            int i25 = 0;
            float f4 = f2;
            boolean z10 = z5;
            int i26 = i14;
            int i27 = i13;
            int i28 = i12;
            int i29 = i24;
            while (i25 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i25);
                if (virtualChildAt3.getVisibility() == 8) {
                    i6 = i26;
                    i8 = i27;
                    i7 = i28;
                    z = z10;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f5 = layoutParams3.weight;
                    if (f5 > 0.0f) {
                        int i30 = (int) ((i29 * f5) / f4);
                        float f6 = f4 - f5;
                        int i31 = i29 - i30;
                        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams3.leftMargin + layoutParams3.rightMargin, layoutParams3.width);
                        if (layoutParams3.height != 0 || mode2 != 1073741824) {
                            int measuredHeight2 = i30 + virtualChildAt3.getMeasuredHeight();
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
                        } else {
                            if (i30 <= 0) {
                                i30 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i30, 1073741824));
                        }
                        i5 = i31;
                        iCombineMeasuredStates = View.combineMeasuredStates(i27, virtualChildAt3.getMeasuredState() & (-256));
                        f = f6;
                    } else {
                        f = f4;
                        i5 = i29;
                        iCombineMeasuredStates = i27;
                    }
                    int i32 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                    int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i32;
                    int iMax5 = Math.max(i28, measuredWidth2);
                    if (!(mode != 1073741824 && layoutParams3.width == -1)) {
                        i32 = measuredWidth2;
                    }
                    int iMax6 = Math.max(i26, i32);
                    z = z10 && layoutParams3.width == -1;
                    int i33 = this.mTotalLength;
                    this.mTotalLength = Math.max(i33, layoutParams3.bottomMargin + virtualChildAt3.getMeasuredHeight() + i33 + layoutParams3.topMargin + getNextLocationOffset(virtualChildAt3));
                    i6 = iMax6;
                    i7 = iMax5;
                    float f7 = f;
                    i8 = iCombineMeasuredStates;
                    i29 = i5;
                    f4 = f7;
                }
                i25++;
                i26 = i6;
                i28 = i7;
                z10 = z;
                i27 = i8;
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            z5 = z10;
            i3 = i26;
            i13 = i27;
            i4 = i28;
        } else {
            int iMax7 = Math.max(i14, i15);
            if (z8 && mode2 != 1073741824) {
                int i34 = 0;
                while (true) {
                    int i35 = i34;
                    if (i35 >= virtualChildCount) {
                        break;
                    }
                    View virtualChildAt4 = getVirtualChildAt(i35);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(iMax3, 1073741824));
                    }
                    i34 = i35 + 1;
                }
            }
            i3 = iMax7;
            i4 = i12;
        }
        if (z5 || mode == 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i13), iResolveSizeAndState);
        if (z6) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    void measureHorizontal(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        boolean z;
        int i8;
        int iCombineMeasuredStates;
        float f2;
        int baseline;
        int childrenSkipCount;
        boolean z2;
        boolean z3;
        int iMax;
        int iMax2;
        boolean z4;
        int i9;
        int i10;
        int i11;
        this.mTotalLength = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        boolean z5 = true;
        float f3 = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z6 = false;
        boolean z7 = false;
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z8 = this.mBaselineAligned;
        boolean z9 = this.mUseLargestChild;
        boolean z10 = mode == 1073741824;
        int iMax3 = 0;
        int childrenSkipCount2 = 0;
        while (childrenSkipCount2 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
                i10 = iMax3;
                z4 = z7;
                z3 = z5;
                i11 = i13;
                i9 = i12;
            } else if (virtualChildAt.getVisibility() == 8) {
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                i10 = iMax3;
                z4 = z7;
                z3 = z5;
                i11 = i13;
                i9 = i12;
            } else {
                if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f4 = f3 + layoutParams.weight;
                if (mode == 1073741824 && layoutParams.width == 0 && layoutParams.weight > 0.0f) {
                    if (z10) {
                        this.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                    } else {
                        int i16 = this.mTotalLength;
                        this.mTotalLength = Math.max(i16, layoutParams.leftMargin + i16 + layoutParams.rightMargin);
                    }
                    if (z8) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    } else {
                        z7 = true;
                    }
                } else {
                    int i17 = Integer.MIN_VALUE;
                    if (layoutParams.width == 0 && layoutParams.weight > 0.0f) {
                        i17 = 0;
                        layoutParams.width = -2;
                    }
                    int i18 = i17;
                    measureChildBeforeLayout(virtualChildAt, childrenSkipCount2, i, f4 == 0.0f ? this.mTotalLength : 0, i2, 0);
                    if (i18 != Integer.MIN_VALUE) {
                        layoutParams.width = i18;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z10) {
                        this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                    } else {
                        int i19 = this.mTotalLength;
                        this.mTotalLength = Math.max(i19, i19 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt));
                    }
                    if (z9) {
                        iMax3 = Math.max(measuredWidth, iMax3);
                    }
                }
                boolean z11 = false;
                if (mode2 == 1073741824 || layoutParams.height != -1) {
                    z2 = z6;
                } else {
                    z2 = true;
                    z11 = true;
                }
                int i20 = layoutParams.bottomMargin + layoutParams.topMargin;
                int measuredHeight = virtualChildAt.getMeasuredHeight() + i20;
                int iCombineMeasuredStates2 = View.combineMeasuredStates(i13, virtualChildAt.getMeasuredState());
                if (z8) {
                    int baseline2 = virtualChildAt.getBaseline();
                    if (baseline2 != -1) {
                        int i21 = ((((layoutParams.gravity < 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                        iArr[i21] = Math.max(iArr[i21], baseline2);
                        iArr2[i21] = Math.max(iArr2[i21], measuredHeight - baseline2);
                    }
                }
                int iMax4 = Math.max(i12, measuredHeight);
                z3 = z5 && layoutParams.height == -1;
                if (layoutParams.weight > 0.0f) {
                    iMax2 = Math.max(i15, z11 ? i20 : measuredHeight);
                    iMax = i14;
                } else {
                    if (!z11) {
                        i20 = measuredHeight;
                    }
                    iMax = Math.max(i14, i20);
                    iMax2 = i15;
                }
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                z4 = z7;
                i15 = iMax2;
                i14 = iMax;
                i9 = iMax4;
                i10 = iMax3;
                i11 = iCombineMeasuredStates2;
                z6 = z2;
                f3 = f4;
            }
            childrenSkipCount2++;
            iMax3 = i10;
            z7 = z4;
            z5 = z3;
            i13 = i11;
            i12 = i9;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int iMax5 = (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) ? i12 : Math.max(i12, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (z9 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i22 = 0;
            while (i22 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i22);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i22);
                    childrenSkipCount = i22;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt2, i22) + i22;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z10) {
                        this.mTotalLength = layoutParams2.rightMargin + layoutParams2.leftMargin + iMax3 + getNextLocationOffset(virtualChildAt2) + this.mTotalLength;
                        childrenSkipCount = i22;
                    } else {
                        int i23 = this.mTotalLength;
                        this.mTotalLength = Math.max(i23, layoutParams2.rightMargin + i23 + iMax3 + layoutParams2.leftMargin + getNextLocationOffset(virtualChildAt2));
                        childrenSkipCount = i22;
                    }
                }
                i22 = childrenSkipCount + 1;
            }
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        int i24 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z7 || (i24 != 0 && f3 > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f3 = this.mWeightSum;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.mTotalLength = 0;
            int i25 = 0;
            float f5 = f3;
            boolean z12 = z5;
            int i26 = i14;
            int i27 = i13;
            int i28 = i24;
            int iMax6 = -1;
            while (i25 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i25);
                if (virtualChildAt3 == null) {
                    f = f5;
                    i5 = i28;
                    i6 = iMax6;
                    i7 = i26;
                    z = z12;
                } else if (virtualChildAt3.getVisibility() == 8) {
                    f = f5;
                    i5 = i28;
                    i6 = iMax6;
                    i7 = i26;
                    z = z12;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f6 = layoutParams3.weight;
                    if (f6 > 0.0f) {
                        int i29 = (int) ((i28 * f6) / f5);
                        float f7 = f5 - f6;
                        i8 = i28 - i29;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width != 0 || mode != 1073741824) {
                            int measuredWidth2 = i29 + virtualChildAt3.getMeasuredWidth();
                            if (measuredWidth2 < 0) {
                                measuredWidth2 = 0;
                            }
                            virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824), childMeasureSpec);
                        } else {
                            if (i29 <= 0) {
                                i29 = 0;
                            }
                            virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i29, 1073741824), childMeasureSpec);
                        }
                        iCombineMeasuredStates = View.combineMeasuredStates(i27, virtualChildAt3.getMeasuredState() & (-16777216));
                        f2 = f7;
                    } else {
                        i8 = i28;
                        iCombineMeasuredStates = i27;
                        f2 = f5;
                    }
                    if (z10) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i30 = this.mTotalLength;
                        this.mTotalLength = Math.max(i30, virtualChildAt3.getMeasuredWidth() + i30 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z13 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i31 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i31;
                    int iMax7 = Math.max(iMax6, measuredHeight2);
                    int iMax8 = Math.max(i26, z13 ? i31 : measuredHeight2);
                    boolean z14 = z12 && layoutParams3.height == -1;
                    if (z8 && (baseline = virtualChildAt3.getBaseline()) != -1) {
                        int i32 = ((((layoutParams3.gravity < 0 ? this.mGravity : layoutParams3.gravity) & 112) >> 4) & (-2)) >> 1;
                        iArr[i32] = Math.max(iArr[i32], baseline);
                        iArr2[i32] = Math.max(iArr2[i32], measuredHeight2 - baseline);
                    }
                    f = f2;
                    i7 = iMax8;
                    z = z14;
                    i27 = iCombineMeasuredStates;
                    i5 = i8;
                    i6 = iMax7;
                }
                i25++;
                i26 = i7;
                iMax6 = i6;
                z12 = z;
                i28 = i5;
                f5 = f;
            }
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            if (iArr[1] != -1 || iArr[0] != -1 || iArr[2] != -1 || iArr[3] != -1) {
                iMax6 = Math.max(iMax6, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            }
            z5 = z12;
            i3 = i26;
            i13 = i27;
            i4 = iMax6;
        } else {
            int iMax9 = Math.max(i14, i15);
            if (z9 && mode != 1073741824) {
                int i33 = 0;
                while (true) {
                    int i34 = i33;
                    if (i34 >= virtualChildCount) {
                        break;
                    }
                    View virtualChildAt4 = getVirtualChildAt(i34);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax3, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                    i33 = i34 + 1;
                }
            }
            i3 = iMax9;
            i4 = iMax5;
        }
        if (z5 || mode2 == 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension(((-16777216) & i13) | iResolveSizeAndState, View.resolveSizeAndState(Math.max(i3 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i13 << 16));
        if (z6) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    private void forceUniformHeight(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, iMakeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int childrenSkipCount;
        int i5;
        int paddingLeft = getPaddingLeft();
        int i6 = i3 - i;
        int paddingRight = i6 - getPaddingRight();
        int paddingRight2 = (i6 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i7 = this.mGravity & 112;
        int i8 = this.mGravity & 8388615;
        switch (i7) {
            case 16:
                paddingTop = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        int i9 = 0;
        int nextLocationOffset = paddingTop;
        while (i9 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i9);
            if (virtualChildAt == null) {
                nextLocationOffset += measureNullChild(i9);
                childrenSkipCount = i9;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i10 = layoutParams.gravity;
                if (i10 < 0) {
                    i10 = i8;
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
                int i11 = (hasDividerBeforeChildAt(i9) ? this.mDividerHeight + nextLocationOffset : nextLocationOffset) + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i5, i11 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                nextLocationOffset = i11 + layoutParams.bottomMargin + measuredHeight + getNextLocationOffset(virtualChildAt);
                childrenSkipCount = getChildrenSkipCount(virtualChildAt, i9) + i9;
            } else {
                childrenSkipCount = i9;
            }
            i9 = childrenSkipCount + 1;
        }
    }

    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int childrenSkipCount;
        int baseline;
        int measuredHeight;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i7 = i4 - i2;
        int paddingBottom = i7 - getPaddingBottom();
        int paddingBottom2 = (i7 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.mGravity & 8388615;
        int i9 = this.mGravity & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        switch (android.support.v4.view.d.a(i8, android.support.v4.view.s.e(this))) {
            case 1:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
                break;
            case 5:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (!zIsLayoutRtl) {
            i5 = 1;
            i6 = 0;
        } else {
            i5 = -1;
            i6 = virtualChildCount - 1;
        }
        int i10 = 0;
        while (i10 < virtualChildCount) {
            int i11 = i6 + (i5 * i10);
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i11);
                childrenSkipCount = i10;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (!z || layoutParams.height == -1) {
                    baseline = -1;
                } else {
                    baseline = virtualChildAt.getBaseline();
                }
                int i12 = layoutParams.gravity;
                if (i12 < 0) {
                    i12 = i9;
                }
                switch (i12 & 112) {
                    case 16:
                        measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        break;
                    case 48:
                        measuredHeight = paddingTop + layoutParams.topMargin;
                        if (baseline != -1) {
                            measuredHeight += iArr[1] - baseline;
                        }
                        break;
                    case 80:
                        measuredHeight = (paddingBottom - measuredHeight2) - layoutParams.bottomMargin;
                        if (baseline != -1) {
                            measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                        }
                        break;
                    default:
                        measuredHeight = paddingTop;
                        break;
                }
                int i13 = (hasDividerBeforeChildAt(i11) ? this.mDividerWidth + paddingLeft : paddingLeft) + layoutParams.leftMargin;
                setChildFrame(virtualChildAt, i13 + getLocationOffset(virtualChildAt), measuredHeight, measuredWidth, measuredHeight2);
                paddingLeft = i13 + layoutParams.rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                childrenSkipCount = getChildrenSkipCount(virtualChildAt, i11) + i10;
            } else {
                childrenSkipCount = i10;
            }
            i10 = childrenSkipCount + 1;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = (8388615 & i) == 0 ? 8388611 | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        if ((this.mGravity & 8388615) != i2) {
            this.mGravity = i2 | (this.mGravity & (-8388616));
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.mGravity & 112) != i2) {
            this.mGravity = i2 | (this.mGravity & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.LinearLayoutCompat_Layout);
            this.weight = typedArrayObtainStyledAttributes.getFloat(a.j.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = typedArrayObtainStyledAttributes.getInt(a.j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }
}
