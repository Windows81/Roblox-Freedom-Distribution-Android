package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AbsSavedState;
import android.support.v7.a.a;
import android.support.v7.app.a;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.ActionMenuView;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private static final String TAG = "Toolbar";
    private o.a mActionMenuPresenterCallback;
    int mButtonGravity;
    ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private Drawable mCollapseIcon;
    private boolean mCollapsible;
    private int mContentInsetEndWithActions;
    private int mContentInsetStartWithNavigation;
    private u mContentInsets;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    View mExpandedActionView;
    private a mExpandedMenuPresenter;
    private int mGravity;
    private final ArrayList<View> mHiddenViews;
    private ImageView mLogoView;
    private int mMaxButtonHeight;
    private h.a mMenuBuilderCallback;
    private ActionMenuView mMenuView;
    private final ActionMenuView.OnMenuItemClickListener mMenuViewItemClickListener;
    private ImageButton mNavButtonView;
    OnMenuItemClickListener mOnMenuItemClickListener;
    private c mOuterActionMenuPresenter;
    private Context mPopupContext;
    private int mPopupTheme;
    private final Runnable mShowOverflowMenuRunnable;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private int mSubtitleTextColor;
    private TextView mSubtitleTextView;
    private final int[] mTempMargins;
    private final ArrayList<View> mTempViews;
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private int mTitleTextColor;
    private TextView mTitleTextView;
    private ToolbarWidgetWrapper mWrapper;

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0032a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mGravity = 8388627;
        this.mTempViews = new ArrayList<>();
        this.mHiddenViews = new ArrayList<>();
        this.mTempMargins = new int[2];
        this.mMenuViewItemClickListener = new ActionMenuView.OnMenuItemClickListener() { // from class: android.support.v7.widget.Toolbar.1
            @Override // android.support.v7.widget.ActionMenuView.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (Toolbar.this.mOnMenuItemClickListener != null) {
                    return Toolbar.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.mShowOverflowMenuRunnable = new Runnable() { // from class: android.support.v7.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.showOverflowMenu();
            }
        };
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, a.j.Toolbar, i, 0);
        this.mTitleTextAppearance = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.Toolbar_titleTextAppearance, 0);
        this.mSubtitleTextAppearance = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.Toolbar_subtitleTextAppearance, 0);
        this.mGravity = tintTypedArrayObtainStyledAttributes.getInteger(a.j.Toolbar_android_gravity, this.mGravity);
        this.mButtonGravity = tintTypedArrayObtainStyledAttributes.getInteger(a.j.Toolbar_buttonGravity, 48);
        int dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_titleMargin, 0);
        dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.hasValue(a.j.Toolbar_titleMargins) ? tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_titleMargins, dimensionPixelOffset) : dimensionPixelOffset;
        this.mTitleMarginBottom = dimensionPixelOffset;
        this.mTitleMarginTop = dimensionPixelOffset;
        this.mTitleMarginEnd = dimensionPixelOffset;
        this.mTitleMarginStart = dimensionPixelOffset;
        int dimensionPixelOffset2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_titleMarginStart, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.mTitleMarginStart = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_titleMarginEnd, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.mTitleMarginEnd = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_titleMarginTop, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.mTitleMarginTop = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_titleMarginBottom, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.mTitleMarginBottom = dimensionPixelOffset5;
        }
        this.mMaxButtonHeight = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.Toolbar_maxButtonHeight, -1);
        int dimensionPixelOffset6 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.Toolbar_contentInsetLeft, 0);
        int dimensionPixelSize2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.Toolbar_contentInsetRight, 0);
        ensureContentInsets();
        this.mContentInsets.b(dimensionPixelSize, dimensionPixelSize2);
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            this.mContentInsets.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.mContentInsetStartWithNavigation = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.mContentInsetEndWithActions = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(a.j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.mCollapseIcon = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.Toolbar_collapseIcon);
        this.mCollapseDescription = tintTypedArrayObtainStyledAttributes.getText(a.j.Toolbar_collapseContentDescription);
        CharSequence text = tintTypedArrayObtainStyledAttributes.getText(a.j.Toolbar_title);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(a.j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.mPopupContext = getContext();
        setPopupTheme(tintTypedArrayObtainStyledAttributes.getResourceId(a.j.Toolbar_popupTheme, 0));
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.Toolbar_navigationIcon);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        CharSequence text3 = tintTypedArrayObtainStyledAttributes.getText(a.j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawable2 = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.Toolbar_logo);
        if (drawable2 != null) {
            setLogo(drawable2);
        }
        CharSequence text4 = tintTypedArrayObtainStyledAttributes.getText(a.j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.Toolbar_titleTextColor)) {
            setTitleTextColor(tintTypedArrayObtainStyledAttributes.getColor(a.j.Toolbar_titleTextColor, -1));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(tintTypedArrayObtainStyledAttributes.getColor(a.j.Toolbar_subtitleTextColor, -1));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
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

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.mTitleMarginStart = i;
        this.mTitleMarginTop = i2;
        this.mTitleMarginEnd = i3;
        this.mTitleMarginBottom = i4;
        requestLayout();
    }

    public int getTitleMarginStart() {
        return this.mTitleMarginStart;
    }

    public void setTitleMarginStart(int i) {
        this.mTitleMarginStart = i;
        requestLayout();
    }

    public int getTitleMarginTop() {
        return this.mTitleMarginTop;
    }

    public void setTitleMarginTop(int i) {
        this.mTitleMarginTop = i;
        requestLayout();
    }

    public int getTitleMarginEnd() {
        return this.mTitleMarginEnd;
    }

    public void setTitleMarginEnd(int i) {
        this.mTitleMarginEnd = i;
        requestLayout();
    }

    public int getTitleMarginBottom() {
        return this.mTitleMarginBottom;
    }

    public void setTitleMarginBottom(int i) {
        this.mTitleMarginBottom = i;
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        ensureContentInsets();
        this.mContentInsets.a(i == 1);
    }

    public void setLogo(int i) {
        setLogo(android.support.v7.b.a.b.b(getContext(), i));
    }

    public boolean canShowOverflowMenu() {
        return getVisibility() == 0 && this.mMenuView != null && this.mMenuView.isOverflowReserved();
    }

    public boolean isOverflowMenuShowing() {
        return this.mMenuView != null && this.mMenuView.isOverflowMenuShowing();
    }

    public boolean isOverflowMenuShowPending() {
        return this.mMenuView != null && this.mMenuView.isOverflowMenuShowPending();
    }

    public boolean showOverflowMenu() {
        return this.mMenuView != null && this.mMenuView.showOverflowMenu();
    }

    public boolean hideOverflowMenu() {
        return this.mMenuView != null && this.mMenuView.hideOverflowMenu();
    }

    public void setMenu(android.support.v7.view.menu.h hVar, c cVar) {
        if (hVar != null || this.mMenuView != null) {
            ensureMenuView();
            android.support.v7.view.menu.h hVarPeekMenu = this.mMenuView.peekMenu();
            if (hVarPeekMenu != hVar) {
                if (hVarPeekMenu != null) {
                    hVarPeekMenu.b(this.mOuterActionMenuPresenter);
                    hVarPeekMenu.b(this.mExpandedMenuPresenter);
                }
                if (this.mExpandedMenuPresenter == null) {
                    this.mExpandedMenuPresenter = new a();
                }
                cVar.d(true);
                if (hVar != null) {
                    hVar.a(cVar, this.mPopupContext);
                    hVar.a(this.mExpandedMenuPresenter, this.mPopupContext);
                } else {
                    cVar.a(this.mPopupContext, (android.support.v7.view.menu.h) null);
                    this.mExpandedMenuPresenter.a(this.mPopupContext, (android.support.v7.view.menu.h) null);
                    cVar.b(true);
                    this.mExpandedMenuPresenter.b(true);
                }
                this.mMenuView.setPopupTheme(this.mPopupTheme);
                this.mMenuView.setPresenter(cVar);
                this.mOuterActionMenuPresenter = cVar;
            }
        }
    }

    public void dismissPopupMenus() {
        if (this.mMenuView != null) {
            this.mMenuView.dismissPopupMenus();
        }
    }

    public boolean isTitleTruncated() {
        Layout layout;
        if (this.mTitleTextView == null || (layout = this.mTitleTextView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (layout.getEllipsisCount(i) > 0) {
                return true;
            }
        }
        return false;
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            ensureLogoView();
            if (!isChildOrHidden(this.mLogoView)) {
                addSystemView(this.mLogoView, true);
            }
        } else if (this.mLogoView != null && isChildOrHidden(this.mLogoView)) {
            removeView(this.mLogoView);
            this.mHiddenViews.remove(this.mLogoView);
        }
        if (this.mLogoView != null) {
            this.mLogoView.setImageDrawable(drawable);
        }
    }

    public Drawable getLogo() {
        if (this.mLogoView != null) {
            return this.mLogoView.getDrawable();
        }
        return null;
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureLogoView();
        }
        if (this.mLogoView != null) {
            this.mLogoView.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        if (this.mLogoView != null) {
            return this.mLogoView.getContentDescription();
        }
        return null;
    }

    private void ensureLogoView() {
        if (this.mLogoView == null) {
            this.mLogoView = new AppCompatImageView(getContext());
        }
    }

    public boolean hasExpandedActionView() {
        return (this.mExpandedMenuPresenter == null || this.mExpandedMenuPresenter.f1592b == null) ? false : true;
    }

    public void collapseActionView() {
        android.support.v7.view.menu.j jVar = this.mExpandedMenuPresenter == null ? null : this.mExpandedMenuPresenter.f1592b;
        if (jVar != null) {
            jVar.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.mTitleText;
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.mTitleTextView == null) {
                Context context = getContext();
                this.mTitleTextView = new AppCompatTextView(context);
                this.mTitleTextView.setSingleLine();
                this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                if (this.mTitleTextAppearance != 0) {
                    this.mTitleTextView.setTextAppearance(context, this.mTitleTextAppearance);
                }
                if (this.mTitleTextColor != 0) {
                    this.mTitleTextView.setTextColor(this.mTitleTextColor);
                }
            }
            if (!isChildOrHidden(this.mTitleTextView)) {
                addSystemView(this.mTitleTextView, true);
            }
        } else if (this.mTitleTextView != null && isChildOrHidden(this.mTitleTextView)) {
            removeView(this.mTitleTextView);
            this.mHiddenViews.remove(this.mTitleTextView);
        }
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setText(charSequence);
        }
        this.mTitleText = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.mSubtitleText;
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.mSubtitleTextView == null) {
                Context context = getContext();
                this.mSubtitleTextView = new AppCompatTextView(context);
                this.mSubtitleTextView.setSingleLine();
                this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                if (this.mSubtitleTextAppearance != 0) {
                    this.mSubtitleTextView.setTextAppearance(context, this.mSubtitleTextAppearance);
                }
                if (this.mSubtitleTextColor != 0) {
                    this.mSubtitleTextView.setTextColor(this.mSubtitleTextColor);
                }
            }
            if (!isChildOrHidden(this.mSubtitleTextView)) {
                addSystemView(this.mSubtitleTextView, true);
            }
        } else if (this.mSubtitleTextView != null && isChildOrHidden(this.mSubtitleTextView)) {
            removeView(this.mSubtitleTextView);
            this.mHiddenViews.remove(this.mSubtitleTextView);
        }
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setText(charSequence);
        }
        this.mSubtitleText = charSequence;
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.mTitleTextAppearance = i;
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.mSubtitleTextAppearance = i;
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        this.mTitleTextColor = i;
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setTextColor(i);
        }
    }

    public void setSubtitleTextColor(int i) {
        this.mSubtitleTextColor = i;
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setTextColor(i);
        }
    }

    public CharSequence getNavigationContentDescription() {
        if (this.mNavButtonView != null) {
            return this.mNavButtonView.getContentDescription();
        }
        return null;
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureNavButtonView();
        }
        if (this.mNavButtonView != null) {
            this.mNavButtonView.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(android.support.v7.b.a.b.b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            ensureNavButtonView();
            if (!isChildOrHidden(this.mNavButtonView)) {
                addSystemView(this.mNavButtonView, true);
            }
        } else if (this.mNavButtonView != null && isChildOrHidden(this.mNavButtonView)) {
            removeView(this.mNavButtonView);
            this.mHiddenViews.remove(this.mNavButtonView);
        }
        if (this.mNavButtonView != null) {
            this.mNavButtonView.setImageDrawable(drawable);
        }
    }

    public Drawable getNavigationIcon() {
        if (this.mNavButtonView != null) {
            return this.mNavButtonView.getDrawable();
        }
        return null;
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        ensureNavButtonView();
        this.mNavButtonView.setOnClickListener(onClickListener);
    }

    public Menu getMenu() {
        ensureMenu();
        return this.mMenuView.getMenu();
    }

    public void setOverflowIcon(Drawable drawable) {
        ensureMenu();
        this.mMenuView.setOverflowIcon(drawable);
    }

    public Drawable getOverflowIcon() {
        ensureMenu();
        return this.mMenuView.getOverflowIcon();
    }

    private void ensureMenu() {
        ensureMenuView();
        if (this.mMenuView.peekMenu() == null) {
            android.support.v7.view.menu.h hVar = (android.support.v7.view.menu.h) this.mMenuView.getMenu();
            if (this.mExpandedMenuPresenter == null) {
                this.mExpandedMenuPresenter = new a();
            }
            this.mMenuView.setExpandedActionViewsExclusive(true);
            hVar.a(this.mExpandedMenuPresenter, this.mPopupContext);
        }
    }

    private void ensureMenuView() {
        if (this.mMenuView == null) {
            this.mMenuView = new ActionMenuView(getContext());
            this.mMenuView.setPopupTheme(this.mPopupTheme);
            this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
            this.mMenuView.setMenuCallbacks(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = 8388613 | (this.mButtonGravity & 112);
            this.mMenuView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            addSystemView(this.mMenuView, false);
        }
    }

    private MenuInflater getMenuInflater() {
        return new android.support.v7.view.g(getContext());
    }

    public void inflateMenu(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void setContentInsetsRelative(int i, int i2) {
        ensureContentInsets();
        this.mContentInsets.a(i, i2);
    }

    public int getContentInsetStart() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.c();
        }
        return 0;
    }

    public int getContentInsetEnd() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.d();
        }
        return 0;
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        ensureContentInsets();
        this.mContentInsets.b(i, i2);
    }

    public int getContentInsetLeft() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.a();
        }
        return 0;
    }

    public int getContentInsetRight() {
        if (this.mContentInsets != null) {
            return this.mContentInsets.b();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        return this.mContentInsetStartWithNavigation != Integer.MIN_VALUE ? this.mContentInsetStartWithNavigation : getContentInsetStart();
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.mContentInsetStartWithNavigation) {
            this.mContentInsetStartWithNavigation = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getContentInsetEndWithActions() {
        return this.mContentInsetEndWithActions != Integer.MIN_VALUE ? this.mContentInsetEndWithActions : getContentInsetEnd();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.mContentInsetEndWithActions) {
            this.mContentInsetEndWithActions = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0)) : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        android.support.v7.view.menu.h hVarPeekMenu;
        boolean z = (this.mMenuView == null || (hVarPeekMenu = this.mMenuView.peekMenu()) == null || !hVarPeekMenu.hasVisibleItems()) ? false : true;
        if (z) {
            return Math.max(getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return android.support.v4.view.s.e(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return android.support.v4.view.s.e(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    private void ensureNavButtonView() {
        if (this.mNavButtonView == null) {
            this.mNavButtonView = new AppCompatImageButton(getContext(), null, a.C0032a.toolbarNavigationButtonStyle);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (this.mButtonGravity & 112);
            this.mNavButtonView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
        }
    }

    void ensureCollapseButtonView() {
        if (this.mCollapseButtonView == null) {
            this.mCollapseButtonView = new AppCompatImageButton(getContext(), null, a.C0032a.toolbarNavigationButtonStyle);
            this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
            this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (this.mButtonGravity & 112);
            layoutParamsGenerateDefaultLayoutParams.mViewType = 2;
            this.mCollapseButtonView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            this.mCollapseButtonView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.collapseActionView();
                }
            });
        }
    }

    private void addSystemView(View view, boolean z) {
        LayoutParams layoutParamsGenerateLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParamsGenerateLayoutParams = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            layoutParamsGenerateLayoutParams = generateLayoutParams(layoutParams);
        } else {
            layoutParamsGenerateLayoutParams = (LayoutParams) layoutParams;
        }
        layoutParamsGenerateLayoutParams.mViewType = 1;
        if (z && this.mExpandedActionView != null) {
            view.setLayoutParams(layoutParamsGenerateLayoutParams);
            this.mHiddenViews.add(view);
        } else {
            addView(view, layoutParamsGenerateLayoutParams);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.f1592b != null) {
            savedState.expandedMenuItemId = this.mExpandedMenuPresenter.f1592b.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        android.support.v7.view.menu.h hVarPeekMenu = this.mMenuView != null ? this.mMenuView.peekMenu() : null;
        if (savedState.expandedMenuItemId != 0 && this.mExpandedMenuPresenter != null && hVarPeekMenu != null && (menuItemFindItem = hVarPeekMenu.findItem(savedState.expandedMenuItemId)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            postShowOverflowMenu();
        }
    }

    private void postShowOverflowMenu() {
        removeCallbacks(this.mShowOverflowMenuRunnable);
        post(this.mShowOverflowMenuRunnable);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowOverflowMenuRunnable);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.mEatingTouch = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mEatingTouch = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.mEatingHover = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.mEatingHover = false;
        }
        return true;
    }

    private void measureChildConstrained(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private int measureChildCollapseMargins(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + iMax + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private boolean shouldCollapse() {
        if (!this.mCollapsible) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (shouldLayout(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int iCombineMeasuredStates;
        int i3;
        int iMax = 0;
        int iCombineMeasuredStates2 = 0;
        int[] iArr = this.mTempMargins;
        if (ViewUtils.isLayoutRtl(this)) {
            c2 = 0;
            c3 = 1;
        } else {
            c2 = 1;
            c3 = 0;
        }
        int measuredWidth = 0;
        if (shouldLayout(this.mNavButtonView)) {
            measureChildConstrained(this.mNavButtonView, i, 0, i2, 0, this.mMaxButtonHeight);
            measuredWidth = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins(this.mNavButtonView);
            int iMax2 = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins(this.mNavButtonView));
            iCombineMeasuredStates2 = View.combineMeasuredStates(0, this.mNavButtonView.getMeasuredState());
            iMax = iMax2;
        }
        if (shouldLayout(this.mCollapseButtonView)) {
            measureChildConstrained(this.mCollapseButtonView, i, 0, i2, 0, this.mMaxButtonHeight);
            measuredWidth = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(this.mCollapseButtonView);
            iMax = Math.max(iMax, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(this.mCollapseButtonView));
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.mCollapseButtonView.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = 0 + Math.max(currentContentInsetStart, measuredWidth);
        iArr[c3] = Math.max(0, currentContentInsetStart - measuredWidth);
        int measuredWidth2 = 0;
        if (shouldLayout(this.mMenuView)) {
            measureChildConstrained(this.mMenuView, i, iMax3, i2, 0, this.mMaxButtonHeight);
            measuredWidth2 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
            iMax = Math.max(iMax, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.mMenuView.getMeasuredState());
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[c2] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (shouldLayout(this.mExpandedActionView)) {
            iMax4 += measureChildCollapseMargins(this.mExpandedActionView, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.mExpandedActionView.getMeasuredState());
        }
        if (shouldLayout(this.mLogoView)) {
            iMax4 += measureChildCollapseMargins(this.mLogoView, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.mLogoView.getMeasuredHeight() + getVerticalMargins(this.mLogoView));
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.mLogoView.getMeasuredState());
        }
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = iMax;
        int iCombineMeasuredStates3 = iCombineMeasuredStates2;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            if (((LayoutParams) childAt.getLayoutParams()).mViewType != 0) {
                iCombineMeasuredStates = iCombineMeasuredStates3;
                i3 = i5;
            } else if (shouldLayout(childAt)) {
                iMax4 += measureChildCollapseMargins(childAt, i, iMax4, i2, 0, iArr);
                int iMax5 = Math.max(i5, childAt.getMeasuredHeight() + getVerticalMargins(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates3, childAt.getMeasuredState());
                i3 = iMax5;
            } else {
                iCombineMeasuredStates = iCombineMeasuredStates3;
                i3 = i5;
            }
            i4++;
            iCombineMeasuredStates3 = iCombineMeasuredStates;
            i5 = i3;
        }
        int iMax6 = 0;
        int measuredHeight = 0;
        int i6 = this.mTitleMarginTop + this.mTitleMarginBottom;
        int i7 = this.mTitleMarginStart + this.mTitleMarginEnd;
        if (shouldLayout(this.mTitleTextView)) {
            measureChildCollapseMargins(this.mTitleTextView, i, iMax4 + i7, i2, i6, iArr);
            iMax6 = getHorizontalMargins(this.mTitleTextView) + this.mTitleTextView.getMeasuredWidth();
            measuredHeight = this.mTitleTextView.getMeasuredHeight() + getVerticalMargins(this.mTitleTextView);
            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, this.mTitleTextView.getMeasuredState());
        }
        if (shouldLayout(this.mSubtitleTextView)) {
            iMax6 = Math.max(iMax6, measureChildCollapseMargins(this.mSubtitleTextView, i, iMax4 + i7, i2, i6 + measuredHeight, iArr));
            measuredHeight += this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(this.mSubtitleTextView);
            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, this.mSubtitleTextView.getMeasuredState());
        }
        int iMax7 = Math.max(i5, measuredHeight);
        int paddingLeft = iMax6 + iMax4 + getPaddingLeft() + getPaddingRight();
        int paddingTop = iMax7 + getPaddingTop() + getPaddingBottom();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates3);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates3 << 16);
        if (shouldCollapse()) {
            iResolveSizeAndState2 = 0;
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iLayoutChildRight;
        int iLayoutChildLeft;
        int iMin;
        int iMax;
        int measuredHeight;
        int paddingTop;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int iMax2;
        boolean z2 = android.support.v4.view.s.e(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i10 = width - paddingRight;
        int[] iArr = this.mTempMargins;
        iArr[1] = 0;
        iArr[0] = 0;
        int i11 = android.support.v4.view.s.i(this);
        int iMin2 = i11 >= 0 ? Math.min(i11, i4 - i2) : 0;
        if (!shouldLayout(this.mNavButtonView)) {
            iLayoutChildRight = i10;
            iLayoutChildLeft = paddingLeft;
        } else if (z2) {
            iLayoutChildRight = layoutChildRight(this.mNavButtonView, i10, iArr, iMin2);
            iLayoutChildLeft = paddingLeft;
        } else {
            iLayoutChildLeft = layoutChildLeft(this.mNavButtonView, paddingLeft, iArr, iMin2);
            iLayoutChildRight = i10;
        }
        if (shouldLayout(this.mCollapseButtonView)) {
            if (z2) {
                iLayoutChildRight = layoutChildRight(this.mCollapseButtonView, iLayoutChildRight, iArr, iMin2);
            } else {
                iLayoutChildLeft = layoutChildLeft(this.mCollapseButtonView, iLayoutChildLeft, iArr, iMin2);
            }
        }
        if (shouldLayout(this.mMenuView)) {
            if (z2) {
                iLayoutChildLeft = layoutChildLeft(this.mMenuView, iLayoutChildLeft, iArr, iMin2);
            } else {
                iLayoutChildRight = layoutChildRight(this.mMenuView, iLayoutChildRight, iArr, iMin2);
            }
        }
        int currentContentInsetLeft = getCurrentContentInsetLeft();
        int currentContentInsetRight = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft - iLayoutChildLeft);
        iArr[1] = Math.max(0, currentContentInsetRight - ((width - paddingRight) - iLayoutChildRight));
        int iMax3 = Math.max(iLayoutChildLeft, currentContentInsetLeft);
        int iMin3 = Math.min(iLayoutChildRight, (width - paddingRight) - currentContentInsetRight);
        if (shouldLayout(this.mExpandedActionView)) {
            if (z2) {
                iMin3 = layoutChildRight(this.mExpandedActionView, iMin3, iArr, iMin2);
            } else {
                iMax3 = layoutChildLeft(this.mExpandedActionView, iMax3, iArr, iMin2);
            }
        }
        if (!shouldLayout(this.mLogoView)) {
            iMin = iMin3;
            iMax = iMax3;
        } else if (z2) {
            iMin = layoutChildRight(this.mLogoView, iMin3, iArr, iMin2);
            iMax = iMax3;
        } else {
            iMin = iMin3;
            iMax = layoutChildLeft(this.mLogoView, iMax3, iArr, iMin2);
        }
        boolean zShouldLayout = shouldLayout(this.mTitleTextView);
        boolean zShouldLayout2 = shouldLayout(this.mSubtitleTextView);
        int measuredHeight2 = 0;
        if (zShouldLayout) {
            LayoutParams layoutParams = (LayoutParams) this.mTitleTextView.getLayoutParams();
            measuredHeight2 = 0 + layoutParams.bottomMargin + layoutParams.topMargin + this.mTitleTextView.getMeasuredHeight();
        }
        if (zShouldLayout2) {
            LayoutParams layoutParams2 = (LayoutParams) this.mSubtitleTextView.getLayoutParams();
            measuredHeight = layoutParams2.bottomMargin + layoutParams2.topMargin + this.mSubtitleTextView.getMeasuredHeight() + measuredHeight2;
        } else {
            measuredHeight = measuredHeight2;
        }
        if (zShouldLayout || zShouldLayout2) {
            TextView textView = zShouldLayout ? this.mTitleTextView : this.mSubtitleTextView;
            TextView textView2 = zShouldLayout2 ? this.mSubtitleTextView : this.mTitleTextView;
            LayoutParams layoutParams3 = (LayoutParams) textView.getLayoutParams();
            LayoutParams layoutParams4 = (LayoutParams) textView2.getLayoutParams();
            boolean z3 = (zShouldLayout && this.mTitleTextView.getMeasuredWidth() > 0) || (zShouldLayout2 && this.mSubtitleTextView.getMeasuredWidth() > 0);
            switch (this.mGravity & 112) {
                case 48:
                    paddingTop = layoutParams3.topMargin + getPaddingTop() + this.mTitleMarginTop;
                    break;
                case 80:
                    paddingTop = (((height - paddingBottom) - layoutParams4.bottomMargin) - this.mTitleMarginBottom) - measuredHeight;
                    break;
                default:
                    int i12 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    if (i12 < layoutParams3.topMargin + this.mTitleMarginTop) {
                        iMax2 = layoutParams3.topMargin + this.mTitleMarginTop;
                    } else {
                        int i13 = (((height - paddingBottom) - measuredHeight) - i12) - paddingTop2;
                        iMax2 = i13 < layoutParams3.bottomMargin + this.mTitleMarginBottom ? Math.max(0, i12 - ((layoutParams4.bottomMargin + this.mTitleMarginBottom) - i13)) : i12;
                    }
                    paddingTop = paddingTop2 + iMax2;
                    break;
            }
            if (z2) {
                int i14 = (z3 ? this.mTitleMarginStart : 0) - iArr[1];
                int iMax4 = iMin - Math.max(0, i14);
                iArr[1] = Math.max(0, -i14);
                if (zShouldLayout) {
                    LayoutParams layoutParams5 = (LayoutParams) this.mTitleTextView.getLayoutParams();
                    int measuredWidth = iMax4 - this.mTitleTextView.getMeasuredWidth();
                    int measuredHeight3 = this.mTitleTextView.getMeasuredHeight() + paddingTop;
                    this.mTitleTextView.layout(measuredWidth, paddingTop, iMax4, measuredHeight3);
                    int i15 = measuredWidth - this.mTitleMarginEnd;
                    paddingTop = measuredHeight3 + layoutParams5.bottomMargin;
                    i8 = i15;
                } else {
                    i8 = iMax4;
                }
                if (zShouldLayout2) {
                    LayoutParams layoutParams6 = (LayoutParams) this.mSubtitleTextView.getLayoutParams();
                    int i16 = layoutParams6.topMargin + paddingTop;
                    int measuredWidth2 = iMax4 - this.mSubtitleTextView.getMeasuredWidth();
                    int measuredHeight4 = this.mSubtitleTextView.getMeasuredHeight() + i16;
                    this.mSubtitleTextView.layout(measuredWidth2, i16, iMax4, measuredHeight4);
                    int i17 = iMax4 - this.mTitleMarginEnd;
                    int i18 = layoutParams6.bottomMargin + measuredHeight4;
                    i9 = i17;
                } else {
                    i9 = iMax4;
                }
                iMin = z3 ? Math.min(i8, i9) : iMax4;
            } else {
                int i19 = (z3 ? this.mTitleMarginStart : 0) - iArr[0];
                iMax += Math.max(0, i19);
                iArr[0] = Math.max(0, -i19);
                if (zShouldLayout) {
                    LayoutParams layoutParams7 = (LayoutParams) this.mTitleTextView.getLayoutParams();
                    int measuredWidth3 = this.mTitleTextView.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.mTitleTextView.getMeasuredHeight() + paddingTop;
                    this.mTitleTextView.layout(iMax, paddingTop, measuredWidth3, measuredHeight5);
                    int i20 = measuredWidth3 + this.mTitleMarginEnd;
                    int i21 = layoutParams7.bottomMargin + measuredHeight5;
                    i5 = i20;
                    i6 = i21;
                } else {
                    i5 = iMax;
                    i6 = paddingTop;
                }
                if (zShouldLayout2) {
                    LayoutParams layoutParams8 = (LayoutParams) this.mSubtitleTextView.getLayoutParams();
                    int i22 = i6 + layoutParams8.topMargin;
                    int measuredWidth4 = this.mSubtitleTextView.getMeasuredWidth() + iMax;
                    int measuredHeight6 = this.mSubtitleTextView.getMeasuredHeight() + i22;
                    this.mSubtitleTextView.layout(iMax, i22, measuredWidth4, measuredHeight6);
                    int i23 = this.mTitleMarginEnd + measuredWidth4;
                    int i24 = layoutParams8.bottomMargin + measuredHeight6;
                    i7 = i23;
                } else {
                    i7 = iMax;
                }
                if (z3) {
                    iMax = Math.max(i5, i7);
                }
            }
        }
        addCustomViewsWithGravity(this.mTempViews, 3);
        int size = this.mTempViews.size();
        int iLayoutChildLeft2 = iMax;
        for (int i25 = 0; i25 < size; i25++) {
            iLayoutChildLeft2 = layoutChildLeft(this.mTempViews.get(i25), iLayoutChildLeft2, iArr, iMin2);
        }
        addCustomViewsWithGravity(this.mTempViews, 5);
        int size2 = this.mTempViews.size();
        for (int i26 = 0; i26 < size2; i26++) {
            iMin = layoutChildRight(this.mTempViews.get(i26), iMin, iArr, iMin2);
        }
        addCustomViewsWithGravity(this.mTempViews, 1);
        int viewListMeasuredWidth = getViewListMeasuredWidth(this.mTempViews, iArr);
        int i27 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (viewListMeasuredWidth / 2);
        int i28 = viewListMeasuredWidth + i27;
        if (i27 < iLayoutChildLeft2) {
            i27 = iLayoutChildLeft2;
        } else if (i28 > iMin) {
            i27 -= i28 - iMin;
        }
        int size3 = this.mTempViews.size();
        int iLayoutChildLeft3 = i27;
        for (int i29 = 0; i29 < size3; i29++) {
            iLayoutChildLeft3 = layoutChildLeft(this.mTempViews.get(i29), iLayoutChildLeft3, iArr, iMin2);
        }
        this.mTempViews.clear();
    }

    private int getViewListMeasuredWidth(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int measuredWidth = 0;
        int iMax = i2;
        int iMax2 = i;
        while (i3 < size) {
            View view = list.get(i3);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i4 = layoutParams.leftMargin - iMax2;
            int i5 = layoutParams.rightMargin - iMax;
            int iMax3 = Math.max(0, i4);
            int iMax4 = Math.max(0, i5);
            iMax2 = Math.max(0, -i4);
            iMax = Math.max(0, -i5);
            i3++;
            measuredWidth += view.getMeasuredWidth() + iMax3 + iMax4;
        }
        return measuredWidth;
    }

    private int layoutChildLeft(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.leftMargin - iArr[0];
        int iMax = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int childTop = getChildTop(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, childTop, iMax + measuredWidth, view.getMeasuredHeight() + childTop);
        return layoutParams.rightMargin + measuredWidth + iMax;
    }

    private int layoutChildRight(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int childTop = getChildTop(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, childTop, iMax, view.getMeasuredHeight() + childTop);
        return iMax - (layoutParams.leftMargin + measuredWidth);
    }

    private int getChildTop(View view, int i) {
        int iMax;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        switch (getChildVerticalGravity(layoutParams.gravity)) {
            case 48:
                return getPaddingTop() - i2;
            case 80:
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin) - i2;
            default:
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i3 < layoutParams.topMargin) {
                    iMax = layoutParams.topMargin;
                } else {
                    int i4 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
                    iMax = i4 < layoutParams.bottomMargin ? Math.max(0, i3 - (layoutParams.bottomMargin - i4)) : i3;
                }
                return iMax + paddingTop;
        }
    }

    private int getChildVerticalGravity(int i) {
        int i2 = i & 112;
        switch (i2) {
            case 16:
            case 48:
            case 80:
                return i2;
            default:
                return this.mGravity & 112;
        }
    }

    private void addCustomViewsWithGravity(List<View> list, int i) {
        boolean z = android.support.v4.view.s.e(this) == 1;
        int childCount = getChildCount();
        int iA = android.support.v4.view.d.a(i, android.support.v4.view.s.e(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mViewType == 0 && shouldLayout(childAt) && getChildHorizontalGravity(layoutParams.gravity) == iA) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.mViewType == 0 && shouldLayout(childAt2) && getChildHorizontalGravity(layoutParams2.gravity) == iA) {
                list.add(childAt2);
            }
        }
    }

    private int getChildHorizontalGravity(int i) {
        int iE = android.support.v4.view.s.e(this);
        int iA = android.support.v4.view.d.a(i, iE) & 7;
        switch (iA) {
            case 1:
            case 3:
            case 5:
                return iA;
            case 2:
            case 4:
            default:
                return iE == 1 ? 5 : 3;
        }
    }

    private boolean shouldLayout(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int getHorizontalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return android.support.v4.view.f.b(marginLayoutParams) + android.support.v4.view.f.a(marginLayoutParams);
    }

    private int getVerticalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof a.C0034a) {
            return new LayoutParams((a.C0034a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    private static boolean isCustomView(View view) {
        return ((LayoutParams) view.getLayoutParams()).mViewType == 0;
    }

    public DecorToolbar getWrapper() {
        if (this.mWrapper == null) {
            this.mWrapper = new ToolbarWidgetWrapper(this, true);
        }
        return this.mWrapper;
    }

    void removeChildrenForExpandedActionView() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((LayoutParams) childAt.getLayoutParams()).mViewType != 2 && childAt != this.mMenuView) {
                removeViewAt(childCount);
                this.mHiddenViews.add(childAt);
            }
        }
    }

    void addChildrenForExpandedActionView() {
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            addView(this.mHiddenViews.get(size));
        }
        this.mHiddenViews.clear();
    }

    private boolean isChildOrHidden(View view) {
        return view.getParent() == this || this.mHiddenViews.contains(view);
    }

    public void setCollapsible(boolean z) {
        this.mCollapsible = z;
        requestLayout();
    }

    public void setMenuCallbacks(o.a aVar, h.a aVar2) {
        this.mActionMenuPresenterCallback = aVar;
        this.mMenuBuilderCallback = aVar2;
        if (this.mMenuView != null) {
            this.mMenuView.setMenuCallbacks(aVar, aVar2);
        }
    }

    private void ensureContentInsets() {
        if (this.mContentInsets == null) {
            this.mContentInsets = new u();
        }
    }

    c getOuterActionMenuPresenter() {
        return this.mOuterActionMenuPresenter;
    }

    Context getPopupContext() {
        return this.mPopupContext;
    }

    public static class LayoutParams extends a.C0034a {
        static final int CUSTOM = 0;
        static final int EXPANDED = 2;
        static final int SYSTEM = 1;
        int mViewType;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mViewType = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mViewType = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.mViewType = 0;
            this.gravity = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((a.C0034a) layoutParams);
            this.mViewType = 0;
            this.mViewType = layoutParams.mViewType;
        }

        public LayoutParams(a.C0034a c0034a) {
            super(c0034a);
            this.mViewType = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mViewType = 0;
            copyMarginsFromCompat(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mViewType = 0;
        }

        void copyMarginsFromCompat(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v7.widget.Toolbar.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int expandedMenuItemId;
        boolean isOverflowOpen;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }
    }

    private class a implements android.support.v7.view.menu.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        android.support.v7.view.menu.h f1591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        android.support.v7.view.menu.j f1592b;

        a() {
        }

        @Override // android.support.v7.view.menu.o
        public void a(Context context, android.support.v7.view.menu.h hVar) {
            if (this.f1591a != null && this.f1592b != null) {
                this.f1591a.d(this.f1592b);
            }
            this.f1591a = hVar;
        }

        @Override // android.support.v7.view.menu.o
        public void b(boolean z) {
            boolean z2 = false;
            if (this.f1592b != null) {
                if (this.f1591a != null) {
                    int size = this.f1591a.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f1591a.getItem(i) != this.f1592b) {
                            i++;
                        } else {
                            z2 = true;
                            break;
                        }
                    }
                }
                if (!z2) {
                    b(this.f1591a, this.f1592b);
                }
            }
        }

        @Override // android.support.v7.view.menu.o
        public void a(o.a aVar) {
        }

        @Override // android.support.v7.view.menu.o
        public boolean a(android.support.v7.view.menu.u uVar) {
            return false;
        }

        @Override // android.support.v7.view.menu.o
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
        }

        @Override // android.support.v7.view.menu.o
        public boolean b() {
            return false;
        }

        @Override // android.support.v7.view.menu.o
        public boolean a(android.support.v7.view.menu.h hVar, android.support.v7.view.menu.j jVar) {
            Toolbar.this.ensureCollapseButtonView();
            ViewParent parent = Toolbar.this.mCollapseButtonView.getParent();
            if (parent != Toolbar.this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(Toolbar.this.mCollapseButtonView);
                }
                Toolbar.this.addView(Toolbar.this.mCollapseButtonView);
            }
            Toolbar.this.mExpandedActionView = jVar.getActionView();
            this.f1592b = jVar;
            ViewParent parent2 = Toolbar.this.mExpandedActionView.getParent();
            if (parent2 != Toolbar.this) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(Toolbar.this.mExpandedActionView);
                }
                LayoutParams layoutParamsGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                layoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (Toolbar.this.mButtonGravity & 112);
                layoutParamsGenerateDefaultLayoutParams.mViewType = 2;
                Toolbar.this.mExpandedActionView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
                Toolbar.this.addView(Toolbar.this.mExpandedActionView);
            }
            Toolbar.this.removeChildrenForExpandedActionView();
            Toolbar.this.requestLayout();
            jVar.e(true);
            if (Toolbar.this.mExpandedActionView instanceof android.support.v7.view.c) {
                ((android.support.v7.view.c) Toolbar.this.mExpandedActionView).onActionViewExpanded();
            }
            return true;
        }

        @Override // android.support.v7.view.menu.o
        public boolean b(android.support.v7.view.menu.h hVar, android.support.v7.view.menu.j jVar) {
            if (Toolbar.this.mExpandedActionView instanceof android.support.v7.view.c) {
                ((android.support.v7.view.c) Toolbar.this.mExpandedActionView).onActionViewCollapsed();
            }
            Toolbar.this.removeView(Toolbar.this.mExpandedActionView);
            Toolbar.this.removeView(Toolbar.this.mCollapseButtonView);
            Toolbar.this.mExpandedActionView = null;
            Toolbar.this.addChildrenForExpandedActionView();
            this.f1592b = null;
            Toolbar.this.requestLayout();
            jVar.e(false);
            return true;
        }
    }
}
