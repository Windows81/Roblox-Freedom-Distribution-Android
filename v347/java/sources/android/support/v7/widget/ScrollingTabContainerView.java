package android.support.v7.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.support.v7.app.a;
import android.support.v7.widget.LinearLayoutCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    private static final int FADE_DURATION = 200;
    private static final String TAG = "ScrollingTabContainerView";
    private static final Interpolator sAlphaInterpolator = new DecelerateInterpolator();
    private boolean mAllowCollapse;
    private int mContentHeight;
    int mMaxTabWidth;
    private int mSelectedTabIndex;
    int mStackedTabMaxWidth;
    private b mTabClickListener;
    LinearLayoutCompat mTabLayout;
    Runnable mTabSelector;
    private Spinner mTabSpinner;
    protected final VisibilityAnimListener mVisAnimListener;
    protected ViewPropertyAnimator mVisibilityAnim;

    public ScrollingTabContainerView(Context context) {
        super(context);
        this.mVisAnimListener = new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        android.support.v7.view.a aVarA = android.support.v7.view.a.a(context);
        setContentHeight(aVarA.e());
        this.mStackedTabMaxWidth = aVarA.g();
        this.mTabLayout = createTabLayout();
        addView(this.mTabLayout, new ViewGroup.LayoutParams(-2, -1));
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.mTabLayout.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.mMaxTabWidth = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.mMaxTabWidth = View.MeasureSpec.getSize(i) / 2;
            }
            this.mMaxTabWidth = Math.min(this.mMaxTabWidth, this.mStackedTabMaxWidth);
        } else {
            this.mMaxTabWidth = -1;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
        if (!z && this.mAllowCollapse) {
            this.mTabLayout.measure(0, iMakeMeasureSpec);
            if (this.mTabLayout.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                performCollapse();
            } else {
                performExpand();
            }
        } else {
            performExpand();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z && measuredWidth != measuredWidth2) {
            setTabSelected(this.mSelectedTabIndex);
        }
    }

    private boolean isCollapsed() {
        return this.mTabSpinner != null && this.mTabSpinner.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.mAllowCollapse = z;
    }

    private void performCollapse() {
        if (!isCollapsed()) {
            if (this.mTabSpinner == null) {
                this.mTabSpinner = createSpinner();
            }
            removeView(this.mTabLayout);
            addView(this.mTabSpinner, new ViewGroup.LayoutParams(-2, -1));
            if (this.mTabSpinner.getAdapter() == null) {
                this.mTabSpinner.setAdapter((SpinnerAdapter) new a());
            }
            if (this.mTabSelector != null) {
                removeCallbacks(this.mTabSelector);
                this.mTabSelector = null;
            }
            this.mTabSpinner.setSelection(this.mSelectedTabIndex);
        }
    }

    private boolean performExpand() {
        if (isCollapsed()) {
            removeView(this.mTabSpinner);
            addView(this.mTabLayout, new ViewGroup.LayoutParams(-2, -1));
            setTabSelected(this.mTabSpinner.getSelectedItemPosition());
        }
        return false;
    }

    public void setTabSelected(int i) {
        this.mSelectedTabIndex = i;
        int childCount = this.mTabLayout.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.mTabLayout.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
        if (this.mTabSpinner != null && i >= 0) {
            this.mTabSpinner.setSelection(i);
        }
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    private LinearLayoutCompat createTabLayout() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, a.C0032a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    private Spinner createSpinner() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, a.C0032a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        android.support.v7.view.a aVarA = android.support.v7.view.a.a(getContext());
        setContentHeight(aVarA.e());
        this.mStackedTabMaxWidth = aVarA.g();
    }

    public void animateToVisibility(int i) {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.cancel();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorAlpha = animate().alpha(1.0f);
            viewPropertyAnimatorAlpha.setDuration(200L);
            viewPropertyAnimatorAlpha.setInterpolator(sAlphaInterpolator);
            viewPropertyAnimatorAlpha.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorAlpha, i));
            viewPropertyAnimatorAlpha.start();
            return;
        }
        ViewPropertyAnimator viewPropertyAnimatorAlpha2 = animate().alpha(0.0f);
        viewPropertyAnimatorAlpha2.setDuration(200L);
        viewPropertyAnimatorAlpha2.setInterpolator(sAlphaInterpolator);
        viewPropertyAnimatorAlpha2.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorAlpha2, i));
        viewPropertyAnimatorAlpha2.start();
    }

    public void animateToTab(int i) {
        final View childAt = this.mTabLayout.getChildAt(i);
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
        }
        this.mTabSelector = new Runnable() { // from class: android.support.v7.widget.ScrollingTabContainerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScrollingTabContainerView.this.smoothScrollTo(childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2), 0);
                ScrollingTabContainerView.this.mTabSelector = null;
            }
        };
        post(this.mTabSelector);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mTabSelector != null) {
            post(this.mTabSelector);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
        }
    }

    c createTabView(a.c cVar, boolean z) {
        c cVar2 = new c(getContext(), cVar, z);
        if (z) {
            cVar2.setBackgroundDrawable(null);
            cVar2.setLayoutParams(new AbsListView.LayoutParams(-1, this.mContentHeight));
        } else {
            cVar2.setFocusable(true);
            if (this.mTabClickListener == null) {
                this.mTabClickListener = new b();
            }
            cVar2.setOnClickListener(this.mTabClickListener);
        }
        return cVar2;
    }

    public void addTab(a.c cVar, boolean z) {
        c cVarCreateTabView = createTabView(cVar, false);
        this.mTabLayout.addView(cVarCreateTabView, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        if (this.mTabSpinner != null) {
            ((a) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            cVarCreateTabView.setSelected(true);
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void addTab(a.c cVar, int i, boolean z) {
        c cVarCreateTabView = createTabView(cVar, false);
        this.mTabLayout.addView(cVarCreateTabView, i, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        if (this.mTabSpinner != null) {
            ((a) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            cVarCreateTabView.setSelected(true);
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void updateTab(int i) {
        ((c) this.mTabLayout.getChildAt(i)).a();
        if (this.mTabSpinner != null) {
            ((a) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void removeTabAt(int i) {
        this.mTabLayout.removeViewAt(i);
        if (this.mTabSpinner != null) {
            ((a) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void removeAllTabs() {
        this.mTabLayout.removeAllViews();
        if (this.mTabSpinner != null) {
            ((a) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((c) view).b().d();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    private class c extends LinearLayoutCompat {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f1546b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a.c f1547c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f1548d;
        private ImageView e;
        private View f;

        public c(Context context, a.c cVar, boolean z) {
            super(context, null, a.C0032a.actionBarTabStyle);
            this.f1546b = new int[]{R.attr.background};
            this.f1547c = cVar;
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, null, this.f1546b, a.C0032a.actionBarTabStyle, 0);
            if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
                setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public void a(a.c cVar) {
            this.f1547c = cVar;
            a();
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(a.c.class.getName());
        }

        @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(a.c.class.getName());
        }

        @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (ScrollingTabContainerView.this.mMaxTabWidth > 0 && getMeasuredWidth() > ScrollingTabContainerView.this.mMaxTabWidth) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(ScrollingTabContainerView.this.mMaxTabWidth, 1073741824), i2);
            }
        }

        public void a() {
            a.c cVar = this.f1547c;
            View viewC = cVar.c();
            if (viewC != null) {
                ViewParent parent = viewC.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewC);
                    }
                    addView(viewC);
                }
                this.f = viewC;
                if (this.f1548d != null) {
                    this.f1548d.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                    this.e.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.f != null) {
                removeView(this.f);
                this.f = null;
            }
            Drawable drawableA = cVar.a();
            CharSequence charSequenceB = cVar.b();
            if (drawableA != null) {
                if (this.e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayoutCompat.LayoutParams layoutParams = new LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.e = appCompatImageView;
                }
                this.e.setImageDrawable(drawableA);
                this.e.setVisibility(0);
            } else if (this.e != null) {
                this.e.setVisibility(8);
                this.e.setImageDrawable(null);
            }
            boolean z = !TextUtils.isEmpty(charSequenceB);
            if (z) {
                if (this.f1548d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, a.C0032a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayoutCompat.LayoutParams layoutParams2 = new LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1548d = appCompatTextView;
                }
                this.f1548d.setText(charSequenceB);
                this.f1548d.setVisibility(0);
            } else if (this.f1548d != null) {
                this.f1548d.setVisibility(8);
                this.f1548d.setText((CharSequence) null);
            }
            if (this.e != null) {
                this.e.setContentDescription(cVar.e());
            }
            TooltipCompat.setTooltipText(this, z ? null : cVar.e());
        }

        public a.c b() {
            return this.f1547c;
        }
    }

    private class a extends BaseAdapter {
        a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.mTabLayout.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((c) ScrollingTabContainerView.this.mTabLayout.getChildAt(i)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.createTabView((a.c) getItem(i), true);
            }
            ((c) view).a((a.c) getItem(i));
            return view;
        }
    }

    private class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((c) view).b().d();
            int childCount = ScrollingTabContainerView.this.mTabLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.mTabLayout.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    protected class VisibilityAnimListener extends AnimatorListenerAdapter {
        private boolean mCanceled = false;
        private int mFinalVisibility;

        protected VisibilityAnimListener() {
        }

        public VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator viewPropertyAnimator, int i) {
            this.mFinalVisibility = i;
            ScrollingTabContainerView.this.mVisibilityAnim = viewPropertyAnimator;
            return this;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.mCanceled = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.mCanceled) {
                ScrollingTabContainerView.this.mVisibilityAnim = null;
                ScrollingTabContainerView.this.setVisibility(this.mFinalVisibility);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }
    }
}
