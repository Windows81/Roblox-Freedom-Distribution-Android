package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManag";
    private android.support.v4.g.a<String, c> mDelegates;
    private final Object mDrawableCacheLock = new Object();
    private final WeakHashMap<Context, android.support.v4.g.f<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private android.support.v4.g.n<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, android.support.v4.g.n<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final b COLOR_FILTER_CACHE = new b(6);
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {a.e.abc_textfield_search_default_mtrl_alpha, a.e.abc_textfield_default_mtrl_alpha, a.e.abc_ab_share_pack_mtrl_alpha};
    private static final int[] TINT_COLOR_CONTROL_NORMAL = {a.e.abc_ic_commit_search_api_mtrl_alpha, a.e.abc_seekbar_tick_mark_material, a.e.abc_ic_menu_share_mtrl_alpha, a.e.abc_ic_menu_copy_mtrl_am_alpha, a.e.abc_ic_menu_cut_mtrl_alpha, a.e.abc_ic_menu_selectall_mtrl_alpha, a.e.abc_ic_menu_paste_mtrl_am_alpha};
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {a.e.abc_textfield_activated_mtrl_alpha, a.e.abc_textfield_search_activated_mtrl_alpha, a.e.abc_cab_background_top_mtrl_alpha, a.e.abc_text_cursor_material, a.e.abc_text_select_handle_left_mtrl_dark, a.e.abc_text_select_handle_middle_mtrl_dark, a.e.abc_text_select_handle_right_mtrl_dark, a.e.abc_text_select_handle_left_mtrl_light, a.e.abc_text_select_handle_middle_mtrl_light, a.e.abc_text_select_handle_right_mtrl_light};
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {a.e.abc_popup_background_mtrl_mult, a.e.abc_cab_background_internal_bg, a.e.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST = {a.e.abc_tab_indicator_material, a.e.abc_textfield_search_material};
    private static final int[] TINT_CHECKABLE_BUTTON_LIST = {a.e.abc_btn_check_material, a.e.abc_btn_radio_material};

    private interface c {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public static AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            INSTANCE = new AppCompatDrawableManager();
            installDefaultInflateDelegates(INSTANCE);
        }
        return INSTANCE;
    }

    private static void installDefaultInflateDelegates(AppCompatDrawableManager appCompatDrawableManager) {
        if (Build.VERSION.SDK_INT < 24) {
            appCompatDrawableManager.addDelegate("vector", new d());
            appCompatDrawableManager.addDelegate("animated-vector", new a());
        }
    }

    public Drawable getDrawable(Context context, int i) {
        return getDrawable(context, i, DEBUG);
    }

    Drawable getDrawable(Context context, int i, boolean z) {
        checkVectorDrawableSetup(context);
        Drawable drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = createDrawableIfNeeded(context, i);
        }
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = android.support.v4.a.c.a(context, i);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            drawableLoadDrawableFromDelegates = tintDrawable(context, i, z, drawableLoadDrawableFromDelegates);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            DrawableUtils.fixDrawable(drawableLoadDrawableFromDelegates);
        }
        return drawableLoadDrawableFromDelegates;
    }

    public void onConfigurationChanged(Context context) {
        synchronized (this.mDrawableCacheLock) {
            android.support.v4.g.f<WeakReference<Drawable.ConstantState>> fVar = this.mDrawableCaches.get(context);
            if (fVar != null) {
                fVar.c();
            }
        }
    }

    private static long createCacheKey(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable createDrawableIfNeeded(Context context, int i) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable == null) {
            if (i == a.e.abc_cab_background_top_material) {
                cachedDrawable = new LayerDrawable(new Drawable[]{getDrawable(context, a.e.abc_cab_background_internal_bg), getDrawable(context, a.e.abc_cab_background_top_mtrl_alpha)});
            }
            if (cachedDrawable != null) {
                cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
            }
        }
        return cachedDrawable;
    }

    private Drawable tintDrawable(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableG = android.support.v4.b.a.a.g(drawable);
            android.support.v4.b.a.a.a(drawableG, tintList);
            PorterDuff.Mode tintMode = getTintMode(i);
            if (tintMode != null) {
                android.support.v4.b.a.a.a(drawableG, tintMode);
                return drawableG;
            }
            return drawableG;
        }
        if (i == a.e.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), x.a(context, a.C0032a.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), x.a(context, a.C0032a.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.progress), x.a(context, a.C0032a.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
        if (i == a.e.abc_ratingbar_material || i == a.e.abc_ratingbar_indicator_material || i == a.e.abc_ratingbar_small_material) {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.background), x.c(context, a.C0032a.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), x.a(context, a.C0032a.colorControlActivated), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.progress), x.a(context, a.C0032a.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
        if (!tintDrawableUsingColorFilter(context, i, drawable) && z) {
            return null;
        }
        return drawable;
    }

    private Drawable loadDrawableFromDelegates(Context context, int i) {
        Drawable drawable;
        int next;
        if (this.mDelegates == null || this.mDelegates.isEmpty()) {
            return null;
        }
        if (this.mKnownDrawableIdTags != null) {
            String strA = this.mKnownDrawableIdTags.a(i);
            if (SKIP_DRAWABLE_TAG.equals(strA) || (strA != null && this.mDelegates.get(strA) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new android.support.v4.g.n<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        if (typedValue.string == null || !typedValue.string.toString().endsWith(".xml")) {
            drawable = cachedDrawable;
        } else {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.c(i, name);
                c cVar = this.mDelegates.get(name);
                if (cVar != null) {
                    cachedDrawable = cVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    if (addDrawableToCache(context, jCreateCacheKey, cachedDrawable)) {
                    }
                }
                drawable = cachedDrawable;
            } catch (Exception e) {
                Log.e(TAG, "Exception while inflating drawable", e);
                drawable = cachedDrawable;
            }
        }
        if (drawable == null) {
            this.mKnownDrawableIdTags.c(i, SKIP_DRAWABLE_TAG);
            return drawable;
        }
        return drawable;
    }

    private Drawable getCachedDrawable(Context context, long j) {
        synchronized (this.mDrawableCacheLock) {
            android.support.v4.g.f<WeakReference<Drawable.ConstantState>> fVar = this.mDrawableCaches.get(context);
            if (fVar == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> weakReferenceA = fVar.a(j);
            if (weakReferenceA != null) {
                Drawable.ConstantState constantState = weakReferenceA.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                fVar.b(j);
            }
            return null;
        }
    }

    private boolean addDrawableToCache(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            synchronized (this.mDrawableCacheLock) {
                android.support.v4.g.f<WeakReference<Drawable.ConstantState>> fVar = this.mDrawableCaches.get(context);
                if (fVar == null) {
                    fVar = new android.support.v4.g.f<>();
                    this.mDrawableCaches.put(context, fVar);
                }
                fVar.b(j, new WeakReference<>(constantState));
            }
            return true;
        }
        return DEBUG;
    }

    Drawable onDrawableLoadedFromResources(Context context, VectorEnabledTintResources vectorEnabledTintResources, int i) {
        Drawable drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = vectorEnabledTintResources.superGetDrawable(i);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            return tintDrawable(context, i, DEBUG, drawableLoadDrawableFromDelegates);
        }
        return null;
    }

    static boolean tintDrawableUsingColorFilter(Context context, int i, Drawable drawable) {
        int iRound;
        int i2;
        PorterDuff.Mode mode;
        boolean z;
        PorterDuff.Mode mode2 = DEFAULT_MODE;
        if (arrayContains(COLORFILTER_TINT_COLOR_CONTROL_NORMAL, i)) {
            i2 = a.C0032a.colorControlNormal;
            mode = mode2;
            z = true;
            iRound = -1;
        } else if (arrayContains(COLORFILTER_COLOR_CONTROL_ACTIVATED, i)) {
            i2 = a.C0032a.colorControlActivated;
            mode = mode2;
            z = true;
            iRound = -1;
        } else if (arrayContains(COLORFILTER_COLOR_BACKGROUND_MULTIPLY, i)) {
            z = true;
            mode = PorterDuff.Mode.MULTIPLY;
            i2 = 16842801;
            iRound = -1;
        } else if (i == a.e.abc_list_divider_mtrl_alpha) {
            i2 = R.attr.colorForeground;
            iRound = Math.round(40.8f);
            mode = mode2;
            z = true;
        } else if (i == a.e.abc_dialog_material_background) {
            i2 = 16842801;
            mode = mode2;
            z = true;
            iRound = -1;
        } else {
            iRound = -1;
            i2 = 0;
            mode = mode2;
            z = false;
        }
        if (!z) {
            return DEBUG;
        }
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        drawable.setColorFilter(getPorterDuffColorFilter(x.a(context, i2), mode));
        if (iRound == -1) {
            return true;
        }
        drawable.setAlpha(iRound);
        return true;
    }

    private void addDelegate(String str, c cVar) {
        if (this.mDelegates == null) {
            this.mDelegates = new android.support.v4.g.a<>();
        }
        this.mDelegates.put(str, cVar);
    }

    private void removeDelegate(String str, c cVar) {
        if (this.mDelegates != null && this.mDelegates.get(str) == cVar) {
            this.mDelegates.remove(str);
        }
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return DEBUG;
    }

    static PorterDuff.Mode getTintMode(int i) {
        if (i != a.e.abc_switch_thumb_material) {
            return null;
        }
        return PorterDuff.Mode.MULTIPLY;
    }

    ColorStateList getTintList(Context context, int i) {
        ColorStateList tintListFromCache = getTintListFromCache(context, i);
        if (tintListFromCache == null) {
            if (i == a.e.abc_edit_text_material) {
                tintListFromCache = android.support.v7.b.a.b.a(context, a.c.abc_tint_edittext);
            } else if (i == a.e.abc_switch_track_mtrl_alpha) {
                tintListFromCache = android.support.v7.b.a.b.a(context, a.c.abc_tint_switch_track);
            } else if (i == a.e.abc_switch_thumb_material) {
                tintListFromCache = createSwitchThumbColorStateList(context);
            } else if (i == a.e.abc_btn_default_mtrl_shape) {
                tintListFromCache = createDefaultButtonColorStateList(context);
            } else if (i == a.e.abc_btn_borderless_material) {
                tintListFromCache = createBorderlessButtonColorStateList(context);
            } else if (i == a.e.abc_btn_colored_material) {
                tintListFromCache = createColoredButtonColorStateList(context);
            } else if (i == a.e.abc_spinner_mtrl_am_alpha || i == a.e.abc_spinner_textfield_background_material) {
                tintListFromCache = android.support.v7.b.a.b.a(context, a.c.abc_tint_spinner);
            } else if (arrayContains(TINT_COLOR_CONTROL_NORMAL, i)) {
                tintListFromCache = x.b(context, a.C0032a.colorControlNormal);
            } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, i)) {
                tintListFromCache = android.support.v7.b.a.b.a(context, a.c.abc_tint_default);
            } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, i)) {
                tintListFromCache = android.support.v7.b.a.b.a(context, a.c.abc_tint_btn_checkable);
            } else if (i == a.e.abc_seekbar_thumb_material) {
                tintListFromCache = android.support.v7.b.a.b.a(context, a.c.abc_tint_seek_thumb);
            }
            if (tintListFromCache != null) {
                addTintListToCache(context, i, tintListFromCache);
            }
        }
        return tintListFromCache;
    }

    private ColorStateList getTintListFromCache(Context context, int i) {
        android.support.v4.g.n<ColorStateList> nVar;
        if (this.mTintLists != null && (nVar = this.mTintLists.get(context)) != null) {
            return nVar.a(i);
        }
        return null;
    }

    private void addTintListToCache(Context context, int i, ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        android.support.v4.g.n<ColorStateList> nVar = this.mTintLists.get(context);
        if (nVar == null) {
            nVar = new android.support.v4.g.n<>();
            this.mTintLists.put(context, nVar);
        }
        nVar.c(i, colorStateList);
    }

    private ColorStateList createDefaultButtonColorStateList(Context context) {
        return createButtonColorStateList(context, x.a(context, a.C0032a.colorButtonNormal));
    }

    private ColorStateList createBorderlessButtonColorStateList(Context context) {
        return createButtonColorStateList(context, 0);
    }

    private ColorStateList createColoredButtonColorStateList(Context context) {
        return createButtonColorStateList(context, x.a(context, a.C0032a.colorAccent));
    }

    private ColorStateList createButtonColorStateList(Context context, int i) {
        int iA = x.a(context, a.C0032a.colorControlHighlight);
        return new ColorStateList(new int[][]{x.f1724a, x.f1727d, x.f1725b, x.h}, new int[]{x.c(context, a.C0032a.colorButtonNormal), android.support.v4.b.a.a(iA, i), android.support.v4.b.a.a(iA, i), i});
    }

    private ColorStateList createSwitchThumbColorStateList(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListB = x.b(context, a.C0032a.colorSwitchThumbNormal);
        if (colorStateListB != null && colorStateListB.isStateful()) {
            iArr[0] = x.f1724a;
            iArr2[0] = colorStateListB.getColorForState(iArr[0], 0);
            iArr[1] = x.e;
            iArr2[1] = x.a(context, a.C0032a.colorControlActivated);
            iArr[2] = x.h;
            iArr2[2] = colorStateListB.getDefaultColor();
        } else {
            iArr[0] = x.f1724a;
            iArr2[0] = x.c(context, a.C0032a.colorSwitchThumbNormal);
            iArr[1] = x.e;
            iArr2[1] = x.a(context, a.C0032a.colorControlActivated);
            iArr[2] = x.h;
            iArr2[2] = x.a(context, a.C0032a.colorSwitchThumbNormal);
        }
        return new ColorStateList(iArr, iArr2);
    }

    private static class b extends android.support.v4.g.g<Integer, PorterDuffColorFilter> {
        public b(int i) {
            super(i);
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
            return a(Integer.valueOf(b(i, mode)));
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return a(Integer.valueOf(b(i, mode)), porterDuffColorFilter);
        }

        private static int b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    static void tintDrawable(Drawable drawable, y yVar, int[] iArr) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d(TAG, "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (yVar.f1731d || yVar.f1730c) {
            drawable.setColorFilter(createTintFilter(yVar.f1731d ? yVar.f1728a : null, yVar.f1730c ? yVar.f1729b : DEFAULT_MODE, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterA = COLOR_FILTER_CACHE.a(i, mode);
        if (porterDuffColorFilterA == null) {
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            COLOR_FILTER_CACHE.a(i, mode, porterDuffColorFilter);
            return porterDuffColorFilter;
        }
        return porterDuffColorFilterA;
    }

    private static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = DEFAULT_MODE;
        }
        drawable.setColorFilter(getPorterDuffColorFilter(i, mode));
    }

    private void checkVectorDrawableSetup(Context context) {
        if (!this.mHasCheckedVectorDrawableSetup) {
            this.mHasCheckedVectorDrawableSetup = true;
            Drawable drawable = getDrawable(context, a.e.abc_vector_test);
            if (drawable == null || !isVectorDrawable(drawable)) {
                this.mHasCheckedVectorDrawableSetup = DEBUG;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    private static boolean isVectorDrawable(Drawable drawable) {
        if ((drawable instanceof android.support.c.a.i) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName())) {
            return true;
        }
        return DEBUG;
    }

    private static class d implements c {
        d() {
        }

        @Override // android.support.v7.widget.AppCompatDrawableManager.c
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return android.support.c.a.i.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private static class a implements c {
        a() {
        }

        @Override // android.support.v7.widget.AppCompatDrawableManager.c
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return android.support.c.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }
}
