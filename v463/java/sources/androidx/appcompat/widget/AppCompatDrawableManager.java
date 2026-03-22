package androidx.appcompat.widget;

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
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.a;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManag";
    private androidx.c.a<String, d> mDelegates;
    private final WeakHashMap<Context, androidx.c.d<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private androidx.c.h<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, androidx.c.h<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final c COLOR_FILTER_CACHE = new c(6);
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {a.e.abc_textfield_search_default_mtrl_alpha, a.e.abc_textfield_default_mtrl_alpha, a.e.abc_ab_share_pack_mtrl_alpha};
    private static final int[] TINT_COLOR_CONTROL_NORMAL = {a.e.abc_ic_commit_search_api_mtrl_alpha, a.e.abc_seekbar_tick_mark_material, a.e.abc_ic_menu_share_mtrl_alpha, a.e.abc_ic_menu_copy_mtrl_am_alpha, a.e.abc_ic_menu_cut_mtrl_alpha, a.e.abc_ic_menu_selectall_mtrl_alpha, a.e.abc_ic_menu_paste_mtrl_am_alpha};
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {a.e.abc_textfield_activated_mtrl_alpha, a.e.abc_textfield_search_activated_mtrl_alpha, a.e.abc_cab_background_top_mtrl_alpha, a.e.abc_text_cursor_material, a.e.abc_text_select_handle_left_mtrl_dark, a.e.abc_text_select_handle_middle_mtrl_dark, a.e.abc_text_select_handle_right_mtrl_dark, a.e.abc_text_select_handle_left_mtrl_light, a.e.abc_text_select_handle_middle_mtrl_light, a.e.abc_text_select_handle_right_mtrl_light};
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {a.e.abc_popup_background_mtrl_mult, a.e.abc_cab_background_internal_bg, a.e.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST = {a.e.abc_tab_indicator_material, a.e.abc_textfield_search_material};
    private static final int[] TINT_CHECKABLE_BUTTON_LIST = {a.e.abc_btn_check_material, a.e.abc_btn_radio_material};

    private interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public static synchronized AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
            INSTANCE = appCompatDrawableManager;
            installDefaultInflateDelegates(appCompatDrawableManager);
        }
        return INSTANCE;
    }

    private static void installDefaultInflateDelegates(AppCompatDrawableManager appCompatDrawableManager) {
        if (Build.VERSION.SDK_INT < 24) {
            appCompatDrawableManager.addDelegate("vector", new e());
            appCompatDrawableManager.addDelegate("animated-vector", new b());
            appCompatDrawableManager.addDelegate("animated-selector", new a());
        }
    }

    public synchronized Drawable getDrawable(Context context, int i) {
        return getDrawable(context, i, false);
    }

    synchronized Drawable getDrawable(Context context, int i, boolean z) {
        Drawable drawableLoadDrawableFromDelegates;
        checkVectorDrawableSetup(context);
        drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = createDrawableIfNeeded(context, i);
        }
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = androidx.core.a.b.a(context, i);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            drawableLoadDrawableFromDelegates = tintDrawable(context, i, z, drawableLoadDrawableFromDelegates);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            DrawableUtils.fixDrawable(drawableLoadDrawableFromDelegates);
        }
        return drawableLoadDrawableFromDelegates;
    }

    public synchronized void onConfigurationChanged(Context context) {
        androidx.c.d<WeakReference<Drawable.ConstantState>> dVar = this.mDrawableCaches.get(context);
        if (dVar != null) {
            dVar.c();
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
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        if (i == a.e.abc_cab_background_top_material) {
            cachedDrawable = new LayerDrawable(new Drawable[]{getDrawable(context, a.e.abc_cab_background_internal_bg), getDrawable(context, a.e.abc_cab_background_top_mtrl_alpha)});
        }
        if (cachedDrawable != null) {
            cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
        }
        return cachedDrawable;
    }

    private Drawable tintDrawable(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableG = androidx.core.graphics.drawable.a.g(drawable);
            androidx.core.graphics.drawable.a.a(drawableG, tintList);
            PorterDuff.Mode tintMode = getTintMode(i);
            if (tintMode == null) {
                return drawableG;
            }
            androidx.core.graphics.drawable.a.a(drawableG, tintMode);
            return drawableG;
        }
        if (i == a.e.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), o.a(context, a.C0012a.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), o.a(context, a.C0012a.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.progress), o.a(context, a.C0012a.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
        if (i == a.e.abc_ratingbar_material || i == a.e.abc_ratingbar_indicator_material || i == a.e.abc_ratingbar_small_material) {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.background), o.c(context, a.C0012a.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), o.a(context, a.C0012a.colorControlActivated), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.progress), o.a(context, a.C0012a.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
        if (tintDrawableUsingColorFilter(context, i, drawable) || !z) {
            return drawable;
        }
        return null;
    }

    private Drawable loadDrawableFromDelegates(Context context, int i) {
        int next;
        androidx.c.a<String, d> aVar = this.mDelegates;
        if (aVar == null || aVar.isEmpty()) {
            return null;
        }
        androidx.c.h<String> hVar = this.mKnownDrawableIdTags;
        if (hVar != null) {
            String strA = hVar.a(i);
            if (SKIP_DRAWABLE_TAG.equals(strA) || (strA != null && this.mDelegates.get(strA) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new androidx.c.h<>();
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
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
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
                d dVar = this.mDelegates.get(name);
                if (dVar != null) {
                    cachedDrawable = dVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
                }
            } catch (Exception e2) {
                Log.e(TAG, "Exception while inflating drawable", e2);
            }
        }
        if (cachedDrawable == null) {
            this.mKnownDrawableIdTags.c(i, SKIP_DRAWABLE_TAG);
        }
        return cachedDrawable;
    }

    private synchronized Drawable getCachedDrawable(Context context, long j) {
        androidx.c.d<WeakReference<Drawable.ConstantState>> dVar = this.mDrawableCaches.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceA = dVar.a(j);
        if (weakReferenceA != null) {
            Drawable.ConstantState constantState = weakReferenceA.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.b(j);
        }
        return null;
    }

    private synchronized boolean addDrawableToCache(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        androidx.c.d<WeakReference<Drawable.ConstantState>> dVar = this.mDrawableCaches.get(context);
        if (dVar == null) {
            dVar = new androidx.c.d<>();
            this.mDrawableCaches.put(context, dVar);
        }
        dVar.b(j, new WeakReference<>(constantState));
        return true;
    }

    synchronized Drawable onDrawableLoadedFromResources(Context context, VectorEnabledTintResources vectorEnabledTintResources, int i) {
        Drawable drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = vectorEnabledTintResources.superGetDrawable(i);
        }
        if (drawableLoadDrawableFromDelegates == null) {
            return null;
        }
        return tintDrawable(context, i, false, drawableLoadDrawableFromDelegates);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean tintDrawableUsingColorFilter(android.content.Context r6, int r7, android.graphics.drawable.Drawable r8) {
        /*
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE
            int[] r1 = androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
            boolean r1 = arrayContains(r1, r7)
            r2 = 16842801(0x1010031, float:2.3693695E-38)
            r3 = -1
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L15
            int r2 = androidx.appcompat.a.C0012a.colorControlNormal
        L12:
            r7 = -1
        L13:
            r1 = 1
            goto L42
        L15:
            int[] r1 = androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_COLOR_CONTROL_ACTIVATED
            boolean r1 = arrayContains(r1, r7)
            if (r1 == 0) goto L20
            int r2 = androidx.appcompat.a.C0012a.colorControlActivated
            goto L12
        L20:
            int[] r1 = androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
            boolean r1 = arrayContains(r1, r7)
            if (r1 == 0) goto L2b
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L12
        L2b:
            int r1 = androidx.appcompat.a.e.abc_list_divider_mtrl_alpha
            if (r7 != r1) goto L3a
            r2 = 16842800(0x1010030, float:2.3693693E-38)
            r7 = 1109603123(0x42233333, float:40.8)
            int r7 = java.lang.Math.round(r7)
            goto L13
        L3a:
            int r1 = androidx.appcompat.a.e.abc_dialog_material_background
            if (r7 != r1) goto L3f
            goto L12
        L3f:
            r7 = -1
            r1 = 0
            r2 = 0
        L42:
            if (r1 == 0) goto L5f
            boolean r1 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r8)
            if (r1 == 0) goto L4e
            android.graphics.drawable.Drawable r8 = r8.mutate()
        L4e:
            int r6 = androidx.appcompat.widget.o.a(r6, r2)
            android.graphics.PorterDuffColorFilter r6 = getPorterDuffColorFilter(r6, r0)
            r8.setColorFilter(r6)
            if (r7 == r3) goto L5e
            r8.setAlpha(r7)
        L5e:
            return r5
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    private void addDelegate(String str, d dVar) {
        if (this.mDelegates == null) {
            this.mDelegates = new androidx.c.a<>();
        }
        this.mDelegates.put(str, dVar);
    }

    private void removeDelegate(String str, d dVar) {
        androidx.c.a<String, d> aVar = this.mDelegates;
        if (aVar == null || aVar.get(str) != dVar) {
            return;
        }
        this.mDelegates.remove(str);
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    static PorterDuff.Mode getTintMode(int i) {
        if (i == a.e.abc_switch_thumb_material) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }

    synchronized ColorStateList getTintList(Context context, int i) {
        ColorStateList tintListFromCache;
        tintListFromCache = getTintListFromCache(context, i);
        if (tintListFromCache == null) {
            if (i == a.e.abc_edit_text_material) {
                tintListFromCache = androidx.appcompat.a.a.a.a(context, a.c.abc_tint_edittext);
            } else if (i == a.e.abc_switch_track_mtrl_alpha) {
                tintListFromCache = androidx.appcompat.a.a.a.a(context, a.c.abc_tint_switch_track);
            } else if (i == a.e.abc_switch_thumb_material) {
                tintListFromCache = createSwitchThumbColorStateList(context);
            } else if (i == a.e.abc_btn_default_mtrl_shape) {
                tintListFromCache = createDefaultButtonColorStateList(context);
            } else if (i == a.e.abc_btn_borderless_material) {
                tintListFromCache = createBorderlessButtonColorStateList(context);
            } else if (i == a.e.abc_btn_colored_material) {
                tintListFromCache = createColoredButtonColorStateList(context);
            } else if (i == a.e.abc_spinner_mtrl_am_alpha || i == a.e.abc_spinner_textfield_background_material) {
                tintListFromCache = androidx.appcompat.a.a.a.a(context, a.c.abc_tint_spinner);
            } else if (arrayContains(TINT_COLOR_CONTROL_NORMAL, i)) {
                tintListFromCache = o.b(context, a.C0012a.colorControlNormal);
            } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, i)) {
                tintListFromCache = androidx.appcompat.a.a.a.a(context, a.c.abc_tint_default);
            } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, i)) {
                tintListFromCache = androidx.appcompat.a.a.a.a(context, a.c.abc_tint_btn_checkable);
            } else if (i == a.e.abc_seekbar_thumb_material) {
                tintListFromCache = androidx.appcompat.a.a.a.a(context, a.c.abc_tint_seek_thumb);
            }
            if (tintListFromCache != null) {
                addTintListToCache(context, i, tintListFromCache);
            }
        }
        return tintListFromCache;
    }

    private ColorStateList getTintListFromCache(Context context, int i) {
        androidx.c.h<ColorStateList> hVar;
        WeakHashMap<Context, androidx.c.h<ColorStateList>> weakHashMap = this.mTintLists;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.a(i);
    }

    private void addTintListToCache(Context context, int i, ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        androidx.c.h<ColorStateList> hVar = this.mTintLists.get(context);
        if (hVar == null) {
            hVar = new androidx.c.h<>();
            this.mTintLists.put(context, hVar);
        }
        hVar.c(i, colorStateList);
    }

    private ColorStateList createDefaultButtonColorStateList(Context context) {
        return createButtonColorStateList(context, o.a(context, a.C0012a.colorButtonNormal));
    }

    private ColorStateList createBorderlessButtonColorStateList(Context context) {
        return createButtonColorStateList(context, 0);
    }

    private ColorStateList createColoredButtonColorStateList(Context context) {
        return createButtonColorStateList(context, o.a(context, a.C0012a.colorAccent));
    }

    private ColorStateList createButtonColorStateList(Context context, int i) {
        int iA = o.a(context, a.C0012a.colorControlHighlight);
        return new ColorStateList(new int[][]{o.f1021a, o.f1024d, o.f1022b, o.h}, new int[]{o.c(context, a.C0012a.colorButtonNormal), androidx.core.graphics.a.a(iA, i), androidx.core.graphics.a.a(iA, i), i});
    }

    private ColorStateList createSwitchThumbColorStateList(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListB = o.b(context, a.C0012a.colorSwitchThumbNormal);
        if (colorStateListB != null && colorStateListB.isStateful()) {
            iArr[0] = o.f1021a;
            iArr2[0] = colorStateListB.getColorForState(iArr[0], 0);
            iArr[1] = o.f1025e;
            iArr2[1] = o.a(context, a.C0012a.colorControlActivated);
            iArr[2] = o.h;
            iArr2[2] = colorStateListB.getDefaultColor();
        } else {
            iArr[0] = o.f1021a;
            iArr2[0] = o.c(context, a.C0012a.colorSwitchThumbNormal);
            iArr[1] = o.f1025e;
            iArr2[1] = o.a(context, a.C0012a.colorControlActivated);
            iArr[2] = o.h;
            iArr2[2] = o.a(context, a.C0012a.colorSwitchThumbNormal);
        }
        return new ColorStateList(iArr, iArr2);
    }

    private static class c extends androidx.c.e<Integer, PorterDuffColorFilter> {
        public c(int i) {
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

    static void tintDrawable(Drawable drawable, p pVar, int[] iArr) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d(TAG, "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (pVar.f1029d || pVar.f1028c) {
            drawable.setColorFilter(createTintFilter(pVar.f1029d ? pVar.f1026a : null, pVar.f1028c ? pVar.f1027b : DEFAULT_MODE, iArr));
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

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterA;
        porterDuffColorFilterA = COLOR_FILTER_CACHE.a(i, mode);
        if (porterDuffColorFilterA == null) {
            porterDuffColorFilterA = new PorterDuffColorFilter(i, mode);
            COLOR_FILTER_CACHE.a(i, mode, porterDuffColorFilterA);
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
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        Drawable drawable = getDrawable(context, a.e.abc_vector_test);
        if (drawable == null || !isVectorDrawable(drawable)) {
            this.mHasCheckedVectorDrawableSetup = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static boolean isVectorDrawable(Drawable drawable) {
        return (drawable instanceof androidx.l.a.a.i) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName());
    }

    private static class e implements d {
        e() {
        }

        @Override // androidx.appcompat.widget.AppCompatDrawableManager.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.l.a.a.i.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e2);
                return null;
            }
        }
    }

    private static class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.AppCompatDrawableManager.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.l.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e2);
                return null;
            }
        }
    }

    static class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.AppCompatDrawableManager.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.b.a.a.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                return null;
            }
        }
    }
}
